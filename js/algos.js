// PSEUDOCODE LONGEST PHRASE IN ARRAY
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

// PSEUDOCODE SHARED KEY-VALUE BETWEEN OBJECTS
<<<<<<< HEAD
//itterate through each key-value pair 
//compare first key of first object to all keys of second
//if key has a match, compare values
//if values also match, return true
//if key does not have a match, compare second key of first object to all keys of second
//

function shared_key_value(obj_one, obj_two){
	
}

}

//PSEUDOCODE GENERATE RANDOM TEST DATA
//takes an integer and creates an array of that length with random words

function random_word_arr(int){

}


//DRIVER CODE LONGEST PHRASE IN ARRAY
// console.log(longest_phrase(["long phrase","longest phrase","longer phrase"]));
// console.log(longest_phrase(["Buster", "Minxy", "Princess Fluffypaws"]));
// console.log(longest_phrase(["hello what's up", "nothing", "at all"]));

//DRIVER CODE SHARED KEY-VALUE BETWEEN OBJECTS
console.log(shared_key_value({ name: 'Spot', age: 3, isGoodDog: true, weight: 13, adopted: true }, {name: 'Spot', 'age': 3, isGoodDog: true}));
=======


//DRIVER CODE LONGEST PHRASE IN ARRAY
console.log(longest_phrase(["long phrase","longest phrase","longer phrase"]));
console.log(longest_phrase(["Buster", "Minxy", "Princess Fluffypaws"]));
console.log(longest_phrase(["hello what's up", "nothing", "at all"]));

//DRIVER CODE SHARED KEY-VALUE BETWEEN OBJECTS
>>>>>>> master
