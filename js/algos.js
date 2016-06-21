// PSEUDOCODE
//itterate though each item in array
//check the length of first item and store the item
//check the length of next item
//if length of next item is bigger than stored item replace original with next item
//continue pattern through each item in array
//return stored item which is the longest phrase

function longest_phrase(arr) {
  var current_longest = arr[0];
  for (var i = 0; i < arr.length; i++) {
	if (current_longest.length < arr[i].length) {
		var current_longest = arr[i];
	} 
	}
	return current_longest
}

//DRIVER CODE
console.log(longest_phrase(["long phrase","longest phrase","longer phrase"]));
console.log(longest_phrase(["Buster", "Minxy", "Princess Fluffypaws"]));
console.log(longest_phrase(["hello what's up", "nothing", "at all"]));
