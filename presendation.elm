/*
 * Presentation zu Purer Funktionaler Programmierung
 */











/*
 * Installation
 */

elm-lang.org






/*
 * Syntax
 */


add parameter1 parameter2 = parameter1 + parameter2
aList = [1,2,3]
anObject = { x = "value", y = 1 }
newObject = { anObject | x = "newValue" }
u = anObject.y
x = add 1 2


/*
 * Funktionen
 */

add n m = n + m




/*
 * Autos
 * Grundsätzlicher Unterschied
 */

paint car color = { car | color = color }
paint "x" "y"

myCar = { color = "Blue" }
myNewCar = paint myCar "Yellow"



/*
 * * Pure funktion
 * - Keine Side-efects
 * - Gleiche Parameter => gleicher Wert
 */

sandro =
  { cool = true }

makeUncool object = { object | cool = False }

newSandro = makeUncool sandro
newSandro.cool == False -- True


/*
 * map
 */

// Imperativ
array = [1,2,3]
for (key in array) {
  array[key] = key + 1
}




// Pur funktional
array = [1,2,3]
addOne n m = n + 1 + m
newArray = List.map addOne array

math operator x y = operator x y
p = math addOne 1 1
o = addOne 1 1








/*
 * filter
 */

// Imperativ
array = [1,2,3]
filteredArr = []
for (key in array) {
  if(array[key] > 2) {
    filteredArr.push(key)
  }
}




// Pur funktional
array = [1,2,3]
isBigEnough n = n <= 3
newArray = List.filter isBigEnough array





/*
 * QUELLEN
 */
[ "Mein Kopf"
, "elm-lang.org"
]



