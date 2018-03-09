// your code, here
/* jshint esversion: 6 */
let dishes = ["Chicken Pot Pie",
"Baked Beans",
"Macaroni and Cheese",
"Burgundy Sauce with Beef and Noodles",
"Creamed Spinach",
"Pumpkin Pie",
"Strawberry Shortcake"];

let mainDiv = document.getElementById('main');
function tastyDishes(element) {
let tastyDish = document.createElement("div");
tastyDish.innerHTML = element
mainDiv.appendChild(tastyDish);
}
dishes.forEach(tastyDishes)

mainDiv.className += ' hidden';
