// your code, here
let height = prompt("What is the height?");
let width = prompt("What is the width?");

function calcPerimeter (height, width) {
  return (height * 2) + (width * 2);
}

let mainDiv = document.getElementById('main')
mainDiv.innerHTML = "The perimeter is: " + calcPerimeter;
