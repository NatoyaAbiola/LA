// Exercise: Find the top navbar, using a query for the HTML element type. The navbar's type is `<nav>`.
document.getElementsByTagName("nav")[0];
// Exercise: Find the sidebar on the left by using its id.
document.getElementById('sidebar-left');
// Exercise: Find the 'Pages' and 'Groups' sections of the sidebar by using their class.
document.getElementsByClassName('pages')[0];
document.getElementsByClassName('groups')[0];
// Exercise: Find all of the comments on the page.
document.getElementsByClassName('comments');
// Exercise: Find the first comment on the page.
document.getElementsByClassName('comments')[0];
// Exercise: Find the last comment on the page.
let comments = document.getElementsByClassName('comments');
let lastCommentIndex = comments.length - 1;
comments[lastCommentIndex];
// Exercise: Find the fourth comment on the page. Make sure you grab the fourth *comment* rather than the fourth *block* of comments. You may need more than one line of code!
document.getElementsByClassName('comments')[3];

// Exercise: Find one of the ads in the sidebar and hide them.
let ads = document.getElementsByClassName('ads')[2];
ads.style.visibility = "hidden";
// Exercise: Set the visibility on the ad that you hid in the previous exercise to make it visible again.

let ads = document.getElementsByClassName('ads')[2];
ads.style.visibility = "visible";
// Exercise: Use `setAttribute` to change `src` attribute of one of the ads in the sidebar.
let ads = document.getElementsByClassName('ads')[2];
let adSlot = ads.getElementsByClassName('ad-slot')[2];
let img = adSlot.getElementsByTagName('img')[2]
img.setAttribute('src', img.src = "http://placebear.com/200/300");
// Exercise: Find Sam's post and change its text to something incredible.
let posts = document.getElementsByClassName('posts')[0];
let postMedia = posts.getElementsByClassName('post media')[3];
let mediaBody = postMedia.getElementsByClassName('media-body')[0];
let text = mediaBody.getElementsByTagName('p')[0];
text.innerHTML = 'It is realy incredible if I get this to work';

// Exercise: Find the first post and add the `.post-liked` class to it.
posts = document.getElementsByClassName('posts')[0];
postMedia= posts.getElementsByClassName('post media')[0];
postMedia.className = postMedia.className + " post-liked ";
// Exercise: Find the second post and remove the `.post-liked` class.
posts = document.getElementsByClassName('posts')[0];
postMedia= posts.getElementsByClassName('post post-liked media')[1];
postMedia.classList.remove('post-liked');
