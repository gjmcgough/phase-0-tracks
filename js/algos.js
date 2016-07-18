// Add a file called algos.js to the phase-0-tracks/js folder.
// In algos.js, write a function that takes an array of words or phrases and returns the longest word or phrase in the array. So if we gave your function the array of ["long phrase","longest phrase","longer phrase"], it would return "longest phrase". This is a logical reasoning challenge, so try to reason through this based on what you already know, rather than Googling the fanciest solution or looking up built-in sorting functions. Note that "some string".length will do what you expect in JS.


// it takes an array of strings
var sampArray = ["long phrase","longest phrase","longer phrase"];
var sampArray2 = ["hi", "how", "hoppity"]
var sampArray3 = ["boa", "hangry", "rubbish"]
// loops through each string and determine which is the longest


function compareStringLength(sampArray) {
	// console.log(sampArray)

	var lengthArray = []
	for (var i = 0; i < sampArray.length; i++) {
		lengthArray.push(sampArray[i].length);
	}

	// console.log(lengthArray)

	a = lengthArray[0]
	b = lengthArray[1]
	c = lengthArray[2]
	if ((a > b) && (b > c)) {
		console.log(sampArray[0]);
	}
	else if ((a < b) && (b > c)) {
		console.log(sampArray[1]);
	}	
	else if ((a < b) && (b < c)) {
		console.log(sampArray[2]);
	}
	else {
		console.log("There are 2 numbers of equal length")
	}
}

// compareStringLength(sampArray)
// compareStringLength(sampArray2)
// compareStringLength(sampArray3)

// it will return the longest string in the array

// Write a function that takes an integer for length, and builds and returns an array of strings of the given length. So if we ran your function with an argument of 3, we would get an array of 3 random words back (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. (This involves a new trick, generating a random number, that you'll have to look up, but the solution on how to do so is relatively straightforward.)

function randomArray(numberOfStrings) {
	var randomStringArray = [];
	for (var i = 0; i < numberOfStrings; i++){
		randomStringArray.push(randomStringObject());
	}
	return randomStringArray
}

function randomStringObject () {
	var randomString = "";
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	var randomNumTo10 = Math.floor((Math.random() * 10) + 1);
	for (var i = 0; i < randomNumTo10; i++) {
		var randomAlphabetLetterIndex = Math.floor((Math.random() * 26) + 1);
		randomString += alphabet.charAt(randomAlphabetLetterIndex);
	}
	return randomString
}


// Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.

for (var i = 0; i <= 10; i++) {
	newArray = randomArray(3);	
	console.log(newArray)
	console.log(compareStringLength(newArray))
}

// add string to array

// generate random string




