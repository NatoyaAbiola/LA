let inventory = [
  ['LA-LG-STICKER', 300, 'Large Sticker', 'images/la-large-sticker-256px.png', 'Show your Launch pride by plastering your laptop with these beautiful die-cut stickers.'],
  ['LA-SM-STICKER', 200, 'Small Sticker', 'images/la-small-sticker-128px.png', 'It\'s a tiny Launch sticker. How cute!'],
  ['LA-T-SHRIT', 50, 'T-Shirt', 'images/la-t-shirt-200px.png', '100% Cotton. Makes a great gift.']
]

// your code, here
class Product {
  constructor(id, quantity,name,image,description) {
  this.id = id;
  this.quantity = quantity;
  this.name = name;
  this.image = image;
  this.description = description;
   }
}

inventory.forEach((item) => {
  console.log(item);

  sell(number) {
      this.quantity -= number;
    }

  });

  toHTML() {
      return
      <div class="product">
        <h1>Product Name: Large Sticker</h1>
        <h5>300 In Stock</h5>
        <img src="images/la-large-sticker.png" alt="Large Launch Academy Sticker" />

        <h3>Description</h3>
        <p>
          Show your Launch pride by plastering your laptop with these beautiful
          die-cut stickers.
        </p>
      </div>
  }

let productData = ['LA-LG-STICKER', 300, 'Large Sticker', 'images/la-large-sticker.png', 'Show your Launch pride by plastering your laptop with these beautiful die-cut stickers.']
let product = new Product(...productData)

element = document.getElementById('all-products')

products.forEach((product) => {
  element.innerHTML += product.toHTML()
})

});
