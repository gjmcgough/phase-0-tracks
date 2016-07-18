var colorArray = ["blue", "white", "green", "red"];
var nameArray = ["ed", "bill", "jack", "javon"];

<<<<<<< HEAD
// console.log(colorArray);
// console.log(nameArray);
// colorArray.push("yellow");
// nameArray.push("billybob");
// console.log(colorArray);
// console.log(nameArray)

// Explore this code (Links to an external site.), which demonstrates the classlike properties of objects, until you understand what's going on. Add additional lines of code if you'd like to experiment.
// Horses are great, but times are a-changin', and we need to add an option for faster transportation that we can create with an assembly line. At the bottom of your data_structures.js file, write a constructor function for a car. Give it a few different properties of various data types, including at least one function. Demonstrate that your function works by creating a few cars with it.


=======
>>>>>>> master
function coloredHorses(colorArray, nameArray) {
	var colorNameObject = {}
	for(var i = 0; i < colorArray.length; i++) {
		colorNameObject[nameArray[i]] = colorArray[i];
	}	
	return colorNameObject
}

console.log(coloredHorses(colorArray, nameArray))

function Car(make, year, american) {
	this.make = make;
	this.year = year;
	this.american = true;
	this.pedalToTheMetal = function() { console.log("*SCREEEEECH* *VROOOOOOOOOOOM*"); };
}

<<<<<<< HEAD
=======

// console.log(colorArray);
// console.log(nameArray);
// colorArray.push("yellow");
// nameArray.push("billybob");
// console.log(colorArray);
// console.log(nameArray)
>>>>>>> master
var newCar = new Car ("Cadillac", 1964, true);
var newCar2 = new Car ("Ferari", 2016, false);
console.log(newCar);
console.log(newCar2);
newCar.pedalToTheMetal();
newCar2.pedalToTheMetal()