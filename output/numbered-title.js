document.addEventListener("DOMContentLoaded", function () {
  console.log("hey!!");
  let titles = document.getElementsByTagName("NumberedTitle");
  for (let i = 0; i < titles.length; i++) {
    titles.item(i).style.color = "blue";
    titles.item(i).innerText = titles.item(i).innerText.replace(".0", "");
  }
});
