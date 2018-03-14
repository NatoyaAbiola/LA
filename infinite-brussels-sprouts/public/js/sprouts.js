// YOUR CODE GOES HERE
let a = 1;
$('.more-sprouts').on('click', function(event) {
  event.preventDefault();
  a = a + 1;

let request = $.ajax({
    method: "GET",
    url: "/tweets.json?page=" + a
  });

  request.done(function(data) {
    data.forEach(function(tweet) {
      $(".tweets").append("<li class='tweet'><div class='body'>" +
      tweet['text'] + "</div><div class='user'>" + tweet['username'] + "</li>");
    });
  });
});
