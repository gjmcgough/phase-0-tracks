var colorArray = ["blue", "white", "green", "red"];
var nameArray = ["ed", "bill", "jack", "javon"];

function coloredHorses(colorArray, nameArray) {
	var colorNameObject = {}
	for(var i = 0; i < colorArray.length; i++) {
		colorNameObject[nameArray[i]] = colorArray[i];
	}	
	return colorNameObject
}

function Car(make, year, american) {
	this.make = make;
	this.year = year;
	this.american = true;
	this.pedalToTheMetal = function() { console.log("*SCREEEEECH* *VROOOOOOOOOOOM*"); };
}


// console.log(colorArray);
// console.log(nameArray);
// colorArray.push("yellow");
// nameArray.push("billybob");
// console.log(colorArray);
// console.log(nameArray)
// console.log(coloredHorses(colorArray, nameArray))
var newCar = new Car ("Cadillac", 1964, true);
var newCar2 = new Car ("Ferari", 2016, false);
console.log(newCar);
console.log(newCar2);
newCar.pedalToTheMetal();
newCar2.pedalToTheMetal()

// you can use for ... in to iterate through keys and values in an object

// I feel there are advantages to using constructor objects, right now the main advantage is it looks like a ruby class and that makes me feel comfortable with it!