let reverseString = function(word) {
  let result = '';
  for (i = 0; i < word.length - 1; i++) {
    result = word[i] + result;
  }
  return result;
}
