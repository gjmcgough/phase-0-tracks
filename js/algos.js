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
}

compareStringLength(sampArray)
compareStringLength(sampArray2)
compareStringLength(sampArray3)

// console.log(CompareStringLengths(sampArray))

// it will return the longest string in the array

// Add driver code that tests your function on a few arrays.