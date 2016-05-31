/* PROJECT 1 - SOCCER COORDINATOR
   Kavan Seggie
   May 27, 2016
 */

// Manual data input into a dictionary for each player


let player1: [String:Any] = ["playerName": "Joe Smith",
                             "heightInInches": 42,
                             "hasPlayedBefore": true,
                             "guardianNames": "Jim and Jan Smith"]

let player2: [String:Any] = ["playerName": "Jill Tanner",
                             "heightInInches": 36,
                             "hasPlayedBefore": true,
                             "guardianNames" : "Clara Tanner"]

let player3: [String:Any] = ["playerName": "Bill Bon",
                             "heightInInches": 43,
                             "hasPlayedBefore": true,
                             "guardianNames": "Sara and Jenny Bon"]

let player4: [String:Any] = ["playerName": "Eva Gordon",
                             "heightInInches": 45,
                             "hasPlayedBefore": false,
                             "guardianNames": "Wendy and Mike Gordon"]

let player5: [String:Any] = ["playerName": "Matt Gill",
                             "heightInInches": 40,
                             "hasPlayedBefore": false,
                             "guardianNames": "Charles and Sylvia Gill"]

let player6: [String:Any] = ["playerName": "Kimmy Stein",
                             "heightInInches": 41,
                             "hasPlayedBefore": false,
                             "guardianNames": "Bill and Hillary Stein"]

let player7: [String:Any] = ["playerName": "Sammy Adams",
                             "heightInInches": 45,
                             "hasPlayedBefore": false,
                             "guardianNames": "Jeff Adams"]

let player8: [String:Any] = ["playerName": "Karl Saygan",
                             "heightInInches": 42,
                             "hasPlayedBefore": true,
                             "guardianNames": "Heather Bledsoe"]

let player9: [String:Any] = ["playerName": "Suzane Greenberg",
                             "heightInInches": 44,
                             "hasPlayedBefore": true,
                             "guardianNames": "Henrietta Dumas"]

let player10: [String:Any] = ["playerName": "Sal Dali",
                              "heightInInches": 41,
                              "hasPlayedBefore": false,
                              "guardianNames": "Gala Dali"]

let player11: [String:Any] = ["playerName": "Joe Kavalier",
                              "heightInInches": 39,
                              "hasPlayedBefore": false,
                              "guardianNames": "Sam and Elaine Kavalier"]

let player12: [String:Any] = ["playerName": "Ben Finkelstein",
                              "heightInInches": 44,
                              "hasPlayedBefore": false,
                              "guardianNames": "Aaron and Jill Finkelstein"]

let player13: [String:Any] = ["playerName": "Diego Soto",
                              "heightInInches": 41,
                              "hasPlayedBefore": true,
                              "guardianNames": "Robin and Sarika Soto"]

let player14: [String:Any] = ["playerName": "Chloe Alaska",
                              "heightInInches": 47,
                              "hasPlayedBefore": false,
                              "guardianNames": "David and Jamie Alaska"]

let player15: [String:Any] = ["playerName": "Arnold Willis",
                              "heightInInches": 43,
                              "hasPlayedBefore": false,
                              "guardianNames": "Claire Willis"]

let player16: [String:Any] = ["playerName": "Phillip Helm",
                              "heightInInches": 44,
                              "hasPlayedBefore": true,
                              "guardianNames": "Thomas Helm and Eva Jones"]

let player17: [String:Any] = ["playerName": "Les Clay",
                              "heightInInches": 42,
                              "hasPlayedBefore": true,
                              "guardianNames": "Wynonna Brown"]

let player18: [String:Any] = ["playerName": "Herschel Krustofski",
                              "heightInInches": 45,
                              "hasPlayedBefore": true,
                              "guardianNames": "Hyman and Rachel Krustofski"]

// Manually create an array the contains each player dictionary
var teamAll: [[String:Any]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]
var heightSortedTeamAll: [[String:Any]]

// Declare the three team arrays
var teamSharks: [[String:Any]] = []
var teamDragons: [[String:Any]] = []
var teamRaptors: [[String:Any]] = []

// Function that sorts the player array by height

heightSortedTeamAll = teamAll.sort() {
    ($0 ["heightInInches"] as? Int) < ($1 ["heightInInches"] as? Int)
}

// Function to assign players to teams, based on experience. Two separate for loops have been used with differing case appendings. This combined with the sorted array 'averages' players on height too.

func assignHasPlayedBefore () {
    var counter1 = 1
    var counter2 = 1
    for player in heightSortedTeamAll {
        if (player["hasPlayedBefore"] as! Bool) == true {
            switch (counter1 % 6) {
                case 1: teamSharks.append(player)
                case 2: teamDragons.append(player)
                case 3: teamRaptors.append(player)
                case 4: teamRaptors.append(player)
                case 5: teamDragons.append(player)
                case 0: teamSharks.append(player)
                default: print("This should programatically never occur")
            }
            counter1 += 1
        }
    }
    for player in heightSortedTeamAll {
        if (player["hasPlayedBefore"] as! Bool) == false {
            switch (counter2 % 6) {
                case 1: teamRaptors.append(player)
                case 2: teamDragons.append(player)
                case 3: teamSharks.append(player)
                case 4: teamSharks.append(player)
                case 5: teamDragons.append(player)
                case 0: teamRaptors.append(player)
                default: print("This should programatically never occur")
            }
            counter2 += 1
        }
    }
}

// Function used to calculate average height. It has one Integer parameter that is used to represent the team, as passing in an array was too difficult. An enum could have been used to help with this, but was out of scope of the project.

func calcAverageHeight(arrayReference: Int) -> (Double) {
    var totalHeight: Int = 0
    var arrayCount: Int = 0
    var averageHeight: Double = 0
    switch arrayReference {
        case 1:
            for player in teamSharks {
                totalHeight += (player["heightInInches"] as? Int)!
            }
            arrayCount = teamSharks.count
        case 2:
            for player in teamDragons {
                totalHeight += (player["heightInInches"] as? Int)!
            }
            arrayCount = teamDragons.count
        case 3:
            for player in teamRaptors {
                totalHeight += (player["heightInInches"] as? Int)!
            }
            arrayCount = teamRaptors.count
        default:
            arrayCount = 0
    }
    averageHeight = Double(totalHeight) / Double(arrayCount)
    return averageHeight
}

assignHasPlayedBefore()

calcAverageHeight(1)
calcAverageHeight(2)
calcAverageHeight(3)

teamSharks
teamDragons
teamRaptors


// Print out letter to guardians

for player in teamSharks {
    let teamName = "Sharks"
    let practiceDetails = "March 17, 3pm"
    print("Hi \(player["guardianNames"]!)\n")
    print("In order to have soccer teams that can compete against each other, we have decided to allocate children to a team based on their experience. Each team will have a similar number of both experienced and inexperienced soccer players.\n")
    print("\(player["playerName"]!) has been selected to play on the \(teamName) team. The \(teamName) will have their first practice on \(practiceDetails).\n")
    print("Regards, \n\n Kavan Seggie \nLeague Coordinator")
}

for player in teamDragons {
    let teamName = "Dragons"
    let practiceDetails = "March 17, 1pm"
    print("Hi \(player["guardianNames"]!)\n")
    print("In order to have soccer teams that can compete against each other, we have decided to allocate children to a team based on their experience. Each team will have a similar number of both experienced and inexperienced soccer players.\n")
    print("\(player["playerName"]!) has been selected to play on the \(teamName) team. The \(teamName) will have their first practice on \(practiceDetails).\n")
    print("Regards, \n\n Kavan Seggie \nLeague Coordinator")
}


for player in teamRaptors {
    let teamName = "Raptors"
    let practiceDetails = "March 18, 1pm"
    print("Hi \(player["guardianNames"]!)\n")
    print("In order to have soccer teams that can compete against each other, we have decided to allocate children to a team based on their experience. Each team will have a similar number of both experienced and inexperienced soccer players.\n")
    print("\(player["playerName"]!) has been selected to play on the \(teamName) team. The \(teamName) will have their first practice on \(practiceDetails).\n")
    print("Regards, \n\n Kavan Seggie \nLeague Coordinator")
}

