var sampArray = ["long phrase","longest phrase","longer phrase"];
var sampArray2 = ["hi", "how", "hoppity"]
var sampArray3 = ["boa", "hangry", "rubbish"]

function compareStringLength(sampArray) {
>>>>>>> rawr
	var lengthArray = []
	for (var i = 0; i < sampArray.length; i++) {
		lengthArray.push(sampArray[i].length);
	}

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

for (var i = 0; i <= 10; i++) {
	newArray = randomArray(3);	
	console.log(newArray)
	console.log(compareStringLength(newArray))
}

// compareStringLength(sampArray)
// compareStringLength(sampArray2)
// compareStringLength(sampArray3)
>>>>>>> rawr
