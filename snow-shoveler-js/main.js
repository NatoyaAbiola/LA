// your code, here
let snow_fall = 8;
let width = 8;
let length = 20;
let driveway_size = snow_fall * width * length;

if (driveway_size < 50) {
  console.log("The Price is $20");
}
else if (driveway_size < 150) {
  console.log("The Price is $50");
}
else if (driveway_size < 300) {
  console.log("The Price is $100");
}
else if (driveway_size > 300) {
    console.log("The Price is $50");
}
