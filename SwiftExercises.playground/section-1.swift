import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {

    let cheese = "My favorite cheese is \(cheese)."
    
    return cheese
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

let numberArray = [1, 2, 3, 4]
// Add 5 to this array

//The difficulty with the above command is the fact that
//if a data type or structure is declared using "let", it
//cannot be edited--or am I wrong?

var newArray = numberArray;

newArray.insert(5, atIndex: 4);

let numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE

var newDictionary = numberDictionary;

newDictionary.updateValue("five", forKey: 5);

newDictionary;

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively

for i in 1...10
    {
        println(i);
    }

// Use a half-closed range loop to print 1 - 10, inclusively

for i in 1..<10
    {
        println(i);
    }

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    
    var returnArray: [String] = [];
    
    for var i = 0; i < characters.count; i++
    {
        returnArray.insert(characters[i]["favorite drink"]!, atIndex: i);
    }
    
    return returnArray;
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters);

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

func separatedByCommas(theArray: Array<String>)
{
    var returnString = ""
    
    for i in 0..<theArray.count
    {
        print("\(theArray[i]);");
    }
    
}

let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically

func alphabetical(s1: String, s2: String) -> Bool
{
    return s1 < s2
}

var alphabeticalCereals = sorted(cerealArray, alphabetical)

println(alphabeticalCereals);
