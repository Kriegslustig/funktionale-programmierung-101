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


myFunc parameter1 parameter2 = parameter1 + parameter2
aList = [1,2,3]
anObject = { key = "value", y = 1 }
newObject = { anObject | key = "newValue" }


/*
 * Funktionen
 */

add n m = n + m




/*
 * Autos
 * Grundsätzlicher Unterschied
 */

paint car color = { car | color = color }




/*
 * * Pure funktion
 * - Keine Side-efects
 * - Gleiche Parameter => gleicher Wert
 */

sandro =
  { cool = true }

makeUncool object = { object | cool = false }

newSandro = makeUncool(sandro)
newSandro.cool === false // Yep!


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
addOne = add 1
newArray = List.map addOne, array

/*
 * filter()
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
isBigEnough n = n > 2
newArray = List.filter(isBigEnough, array)


/*
 * QUELLEN
 */
[ 'Mein Kopf'
, 'elm-lang.org'
]



