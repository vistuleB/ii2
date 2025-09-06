const https = require('https');
const fs = require('fs');
const path = require('path');
const { URL } = require('url');

class LectureNotesImageDownloader {
    constructor() {
        this.outputDir = './img';
        this.baseUrl = 'https://www.tu-chemnitz.de/informatik/theoretische-informatik/TI-2/';
        this.imageBaseUrl = 'https://www.tu-chemnitz.de/informatik/theoretische-informatik/TI-2/img';
    }

    async run() {
        console.log('Step 1: Reading lecture note links from local index.html...');
        const lectureLinks = await this.getLectureNoteLinks();
        console.log(`Found ${lectureLinks.length} lecture note links`);

        console.log('\nStep 2: Extracting image sources from lecture pages...');
        const imageSources = await this.extractImageSources(lectureLinks);
        console.log(`Found ${imageSources.length} unique image sources`);

        console.log('\nStep 3: Downloading images...');
        await this.downloadImages(imageSources);
        
        console.log('\nDownload completed!');
    }

    async getLectureNoteLinks() {
        const indexFile = './index.html';
        
        try {
            // Read local index.html file
            if (!fs.existsSync(indexFile)) {
                throw new Error(`Local file ${indexFile} not found`);
            }
            
            const html = fs.readFileSync(indexFile, 'utf8');
            const links = [];
            
            // Extract all href attributes from <a> tags
            const linkRegex = /<a[^>]+href\s*=\s*["']([^"']+)["'][^>]*>/gi;
            let match;
            
            while ((match = linkRegex.exec(html)) !== null) {
                const href = match[1];
                
                // Only keep links that contain "lecture-notes" as substring
                if (href.includes('lecture-notes')) {
                    // Form the final web page address by concatenating with base URL
                    const absoluteUrl = this.baseUrl + href;
                    links.push(absoluteUrl);
                }
            }
            
            // Remove duplicates
            return [...new Set(links)];
            
        } catch (error) {
            console.error(`Error reading lecture note links from local file: ${error.message}`);
            return [];
        }
    }

    async extractImageSources(lectureLinks) {
        const allImageSources = new Set();
        
        for (let i = 0; i < lectureLinks.length; i++) {
            const link = lectureLinks[i];
            console.log(`Processing page ${i + 1}/${lectureLinks.length}: ${path.basename(link)}`);
            
            try {
                const html = await this.fetchPage(link);
                
                // Find all img tags with src attributes that start with "../img"
                const imgRegex = /<img[^>]+src\s*=\s*["']([^"']+)["'][^>]*>/gi;
                let match;
                
                while ((match = imgRegex.exec(html)) !== null) {
                    const src = match[1];
                    
                    if (src.startsWith('../img')) {
                        allImageSources.add(src);
                    }
                }
                
                // Small delay to be respectful to the server
                await new Promise(resolve => setTimeout(resolve, 200));
                
            } catch (error) {
                console.error(`Error processing ${link}: ${error.message}`);
            }
        }
        
        return Array.from(allImageSources);
    }

    async downloadImages(imageSources) {
        // Create output directory if it doesn't exist
        if (!fs.existsSync(this.outputDir)) {
            fs.mkdirSync(this.outputDir, { recursive: true });
        }

        for (let i = 0; i < imageSources.length; i++) {
            const src = imageSources[i];
            console.log(`Downloading ${i + 1}/${imageSources.length}: ${src}`);
            
            try {
                // Step 3: Trim "../img" from the start and create Y
                const Y = src.substring(6); // Remove "../img" (6 characters)
                
                // Create the full image URL
                const imageUrl = this.imageBaseUrl + Y;
                
                // Create local path
                const localPath = path.join(this.outputDir, Y);
                
                // Create necessary subdirectories
                const dir = path.dirname(localPath);
                if (!fs.existsSync(dir)) {
                    fs.mkdirSync(dir, { recursive: true });
                }
                
                // Download the image
                await this.downloadFile(imageUrl, localPath);
                
                // Small delay between downloads
                await new Promise(resolve => setTimeout(resolve, 100));
                
            } catch (error) {
                console.error(`Failed to download ${src}: ${error.message}`);
            }
        }
    }

    fetchPage(url) {
        return new Promise((resolve, reject) => {
            https.get(url, (res) => {
                let data = '';
                
                // Handle redirects
                if (res.statusCode >= 300 && res.statusCode < 400 && res.headers.location) {
                    const redirectUrl = new URL(res.headers.location, url).href;
                    return this.fetchPage(redirectUrl).then(resolve).catch(reject);
                }
                
                if (res.statusCode !== 200) {
                    reject(new Error(`HTTP ${res.statusCode}: ${res.statusMessage}`));
                    return;
                }
                
                res.on('data', (chunk) => {
                    data += chunk;
                });
                
                res.on('end', () => {
                    resolve(data);
                });
            }).on('error', (err) => {
                reject(err);
            });
        });
    }

    downloadFile(url, filePath) {
        return new Promise((resolve, reject) => {
            const file = fs.createWriteStream(filePath);
            
            https.get(url, (res) => {
                // Handle redirects
                if (res.statusCode >= 300 && res.statusCode < 400 && res.headers.location) {
                    file.close();
                    fs.unlinkSync(filePath); // Clean up empty file
                    const redirectUrl = new URL(res.headers.location, url).href;
                    return this.downloadFile(redirectUrl, filePath).then(resolve).catch(reject);
                }
                
                if (res.statusCode !== 200) {
                    file.close();
                    fs.unlinkSync(filePath); // Clean up empty file
                    reject(new Error(`HTTP ${res.statusCode}: ${res.statusMessage}`));
                    return;
                }
                
                res.pipe(file);
                
                file.on('finish', () => {
                    file.close();
                    resolve();
                });
                
                file.on('error', (err) => {
                    fs.unlink(filePath, () => {}); // Clean up partial file
                    reject(err);
                });
            }).on('error', (err) => {
                reject(err);
            });
        });
    }
}

// Run the script
const downloader = new LectureNotesImageDownloader();
downloader.run().catch(console.error);