$('#get-dish').on('click', (event) => {
  event.preventDefault()

  // request a new dish and alert the user
let request = $.ajax({
   method: "GET",
   url: "/dishes/random.json"
 });


  request.done(function(data) { alert(data["dishes"]); });
});
})
