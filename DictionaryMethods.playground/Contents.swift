let toyStoryFilms = [
    "Toy Story",
    "Toy Story 2",
    "Buzz Lightyear of Star Command: The Adventure Begins",
    "Toy Story 3",
    "Toy Story 4"
]

let starWarsFilms = [
    "Star Wars",
    "The Empire Strikes Back",
    "Star Wars: Episode VI",
    "Star Wars: Episode I",
    "Star Wars: Episode II",
    "Star Wars: Episode III",
    "Star Wars: The Clone Wars",
    "Star Wars: The Force Awakens",
    "Star Wars: Episode VIII",
    "Star Wars: Episode IX"
]

let fastAndFuriousFilms = [
    "The Fast and the Furious",
    "2 Fast 2 Furious",
    "Turbo-Charged Prelud",
    "Tokyo Drift",
    "Fast & Furious",
    "Los Bandoleros",
    "Fast Five",
    "Fast & Furious 6",
    "Furious 7",
    "Fast 8"
]

var movies = [
    "Toy Story": toyStoryFilms,
    "Star Wars": starWarsFilms,
    "The Fast and the Furious": fastAndFuriousFilms
]

let godfatherFilms = [
    "The Godfather",
    "The Godfather Part II",
    "The Godfather Part III"
]


 let result1 = movies.updateValue(godfatherFilms, forKey: "The Godfather")

 let result2 = movies.updateValue(fastAndFuriousFilms, forKey: "The Fast and the Furious")


print(result1)
print(result2)

let films = movies["The Godfather"]
print(films)

if let godfatherMovies = movies["The Godfather"] {
    print(godfatherMovies)
}


 if var films = movies["The Fast and the Furious"] {
      films.append("Faster! 9")
      films.append("THE FASTEST 10")
    
      movies["The Fast and the Furious"] = films
 }



if let fastMovies = movies["The Fast and the Furious"] {
    for (index, film) in fastMovies.enumerate() {
        print("\(index + 1). \(film)")
    }
}





movies["The Fast and the Furious"] = nil

if let fast3rFilms = movies["The Fast and the Furious"] {
    print("\(fast3rFilms)")
} else {
    print("YAY! no more Fast & Furious movies!")
}

movies.removeValueForKey("The Fast and the Furious")





let planetsAndTheirMoons = [
    "Mercury": 0,
    "Venus": 0,
    "Earth": 1,
    "Mars": 2,
    "Jupiter": 50,
    "Saturn": 53,
    "Uranus": 27,
    "Neptune": 13
]

var planetCount = 0
for (planet, numberOfMoons) in planetsAndTheirMoons {
    planetCount += 1
}
print(planetCount)

let planetCount2 = planetsAndTheirMoons.count
print(planetCount2)


if planetsAndTheirMoons.isEmpty {
    print("planetsAndTheirMoons is empty")
} else {
    print("planetsAndTheirMoons has \(planetsAndTheirMoons.count) items")
}


var emptyDictionary = [String: String]()
if emptyDictionary.isEmpty {
    print("Ah hah! It's empty.")
} else {
    print("There's something here...")
}





let planetNames = Array(planetsAndTheirMoons.keys)

for planet in planetsAndTheirMoons.keys {
    print(planet)
}





let allTheMoons = Array(planetsAndTheirMoons.values)

for numberOfMoons in planetsAndTheirMoons.values {
    print(numberOfMoons)
}



//
//
// MY OWN EXAMPLES
//

var countriesAlreadyVisited = [
"Bahamas",
"Ukraine",
"England",
"Uganda",
"Kenya"
]

var countriesToVisit = [
"Australia",
"Italy",
"Fiji",
]

var travels = [
    "Places I've been": countriesAlreadyVisited,
    "Places I want to go": countriesToVisit
]

var placesIveLived = [
"Florida",
"California",
"Hawaii",
"DC",
"New York"
]

//
//
//

// Adds "placesIveLived" array to "travels" dictionary; "Places I've lived" will be the key and the strings in my "placesIveLived" will be the values:

travels["Places I've lived"] = placesIveLived

print(travels)




// Assigns a name (variable) to "Places I've lived", prints its values, first as an optional, then unwrapped:

let home = travels["Places I've lived"]
print(home)

if let placesIveLived =
    travels["Places I've lived"] {
    print(placesIveLived)
}




// Adds "Uganda" to the array "Places I've lived" in my "travels" dictionary:

if var places = travels["Places I've lived"] {
    places.append("Uganda")
    
    travels["Places I've lived"] = places
}




// Prints out all the strings in the array in the value part of my "travels" dictionary, adds an index to them first, (notice how it counts), prints each on own line:

if let hometowns = travels["Places I've lived"] {
    for (index, state) in hometowns.enumerate() {
        print("\(index + 1). \(state)")
    }
}




// Removes the key and value "Places I've Lived" (followed by the array placesIveLived, which contains strings) from my "travels" dictionary:

travels["Places I've lived"] = nil

if let hometownThrowdown = travels["Places I've lived"] {
    print("\(hometownThrowdown)")
} else {
    print("Travel outside of the places you've lived!")
}




// New dictionary:

var roommates = [
"California": 5,
"Maui": 12,
"DC": 1,
"NYC": 5
]



// Counts the values in my "roommates" dictionary:

var locationCount = 0
for (location, numberOfRoomies)
    in roommates {
        locationCount += 1
}

print(locationCount)



// Can also be done like so:

let locationCount2 = roommates.count
print(locationCount2)




// Checks to see if my "roommates" dictionary is empty, if true it does one thing, if false it does another (so it returns a bool):

if roommates.isEmpty {
print("You've never lived with roommates")
} else {
    print("You've lived with roommates in \(roommates.count) locations.")
}




// Prints the keys in my "roommates" dictionary as an array:

let locationz = Array(roommates.keys)

print(locationz)




// Prints the keys in my "roommates" dictionary on their own line, NOT in order:

for locationzzz in roommates.keys {
    print(locationzzz)
}



// Returns values property in my "roommates" dictionary:

let roommateNumbers = Array(roommates.values)

print("\(roommateNumbers)")

// Does same but prints each value on own line:

for numberOfRoommates in roommates.values {
    print(numberOfRoommates)
}




