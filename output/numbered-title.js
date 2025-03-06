document.addEventListener("DOMContentLoaded", function () {
  let titles = document.getElementsByTagName("numberedtitle");
  for (let i = 0; i < titles.length; i++) {
    titles.item(i).style.color = "blue";
    titles.item(i).innerText = titles.item(i).innerText.replace(".0", "");
  }
});
