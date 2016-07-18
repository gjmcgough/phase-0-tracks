var colorArray = ["blue", "white", "green", "red"];
var nameArray = ["ed", "bill", "jack", "javon"];

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


// console.log(colorArray);
// console.log(nameArray);
// colorArray.push("yellow");
// nameArray.push("billybob");
// console.log(colorArray);
// console.log(nameArray)
var newCar = new Car ("Cadillac", 1964, true);
var newCar2 = new Car ("Ferari", 2016, false);
console.log(newCar);
console.log(newCar2);
newCar.pedalToTheMetal();
newCar2.pedalToTheMetal()