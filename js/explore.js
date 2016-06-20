//PSEUDOCODING

//First the function should take in a string of any length
//Next the fucntion should create a new string and 
//take the last letter of the string and add it to the front
//of the new string, and move to the next-to-last letter.  
//The function should continue this process until it reaches
//the first letter.
//Next the function should output the new string 
//(original string in reverse order)

function reverse(string) {
	var new_string = "" ;
	for (var i = 0; i < string.length; i++){ 
	new_string = string[i] + new_string
	}
	console.log(new_string);
}

//DRIVER CODE
var backwards = reverse("string");

if (null == undefined)
	console.log(backwards);
else
	console.log("false");

