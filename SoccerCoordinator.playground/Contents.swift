/* PROJECT 1 - SOCCER COORDINATOR
   Kavan Seggie
   May 27, 2016
 */

// Manual data input into a dictionary for each player

let player1: [String:Any] = ["playerName": "Joe Smith",
                             "heightInInches": 42,
                             "hasPlayedBefore": true,
                             "guardiansNames": "Jim and Jan Smith"]

let player2: [String:Any] = ["playerName": "Jill Tanner",
                             "heightInInches": 36,
                             "hasPlayedBefore": true,
                             "guardiansNames" : "Clara Tanner"]


let player3: [String:Any] = ["playerName": "Bill Bon",
                             "heightInInches": 43,
                             "hasPlayedBefore": true,
                             "guardiansNames": "Sara and Jenny Bon"]

let player4: [String:Any] = ["playerName": "Eva Gordon",
                             "heightInInches": 45,
                             "hasPlayedBefore": false,
                             "guardiansNames": "Wendy and Mike Gordon"]

let player5: [String:Any] = ["playerName": "Matt Gill",
                             "heightInInches": 40,
                             "hasPlayedBefore": false,
                             "guardiansNames": "Charles and Sylvia Gill"]

let player6: [String:Any] = ["playerName": "Kimmy Stein",
                             "heightInInches": 41,
                             "hasPlayedBefore": false,
                             "guardiansNames": "Bill and Hillary Stein"]

let player7: [String:Any] = ["playerName": "Sammy Adams",
                             "heightInInches": 45,
                             "hasPlayedBefore": false,
                             "guardiansNames": "Jeff Adams"]

let player8: [String:Any] = ["playerName": "Karl Saygan",
                             "heightInInches": 42,
                             "hasPlayedBefore": true,
                             "guardiansNames": "Heather Bledsoe"]

let player9: [String:Any] = ["playerName": "Suzane Greenberg",
                             "heightInInches": 44,
                             "hasPlayedBefore": true,
                             "guardiansNames": "Henrietta Dumas"]

let player10: [String:Any] = ["playerName": "Sal Dali",
                              "heightInInches": 41,
                              "hasPlayedBefore": false,
                              "guardiansNames": "Gala Dali"]

let player11: [String:Any] = ["playerName": "Joe Kavalier",
                              "heightInInches": 39,
                              "hasPlayedBefore": false,
                              "guardiansNames": "Sam and Elaine Kavalier"]

let player12: [String:Any] = ["playerName": "Ben Finkelstein",
                              "heightInInches": 44,
                              "hasPlayedBefore": false,
                              "guardiansNames": "Aaron and Jill Finkelstein"]

let player13: [String:Any] = ["playerName": "Diego Soto",
                              "heightInInches": 41,
                              "hasPlayedBefore": true,
                              "guardiansNames": "Robin and Sarika Soto"]

let player14: [String:Any] = ["playerName": "Chloe Alaska",
                              "heightInInches": 47,
                              "hasPlayedBefore": false,
                              "guardiansNames": "David and Jamie Alaska"]

let player15: [String:Any] = ["playerName": "Arnold Willis",
                              "heightInInches": 43,
                              "hasPlayedBefore": false,
                              "guardiansNames": "Claire Willis"]

let player16: [String:Any] = ["playerName": "Phillip Helm",
                              "heightInInches": 44,
                              "hasPlayedBefore": true,
                              "guardiansNames": "Thomas Helm and Eva Jones"]

let player17: [String:Any] = ["playerName": "Les Clay",
                              "heightInInches": 42,
                              "hasPlayedBefore": true,
                              "guardiansNames": "Wynonna Brown"]

let player18: [String:Any] = ["playerName": "Herschel Krustofski",
                              "heightInInches": 45,
                              "hasPlayedBefore": true,
                              "guardiansNames": "Hyman and Rachel Krustofski"]

// Manually create an array the contains each player dictionary
var teamAll: [[String:Any]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

// Delcare the three team arrays
var teamSharks: [[String:Any]] = []
var teamDragons: [[String:Any]] = []
var teamRaptors: [[String:Any]] = []

// Function to assign players to teams, based on experience
func assignHasPlayedBefore (hasPlayed: Bool) {
    var counter = 1
    for player in teamAll {
        if (player["hasPlayedBefore"] as? Bool) == hasPlayed {
            switch (counter % 3) {
            case 0: teamSharks.append(player)
            case 2: teamDragons.append(player)
            case 1: teamRaptors.append(player)
            default: print("This should programatically never occur")
            }
            counter += 1
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

assignHasPlayedBefore(true)
assignHasPlayedBefore(false)

calcAverageHeight(1)
calcAverageHeight(2)
calcAverageHeight(3)

teamSharks
teamDragons
teamRaptors


// Print out letter to guardians

for player in teamSharks {
    var teamName = "Sharks"
    var practiceDetails = "March 17, 3pm"
    // Added additional \n to provide the paragraph break, is there a better way to do this?
    print("Hi \(player["guardiansNames"])\n")
    print("In order to have the soccer teams that can compete against each other, we have decided to allocate children to a team based on their experience. Each team will have a similar number of both experienced and inexperienced soccer players.\n")
    print("\(player["playerName"]) has been selected to play on the \(teamName) team. The \(teamName) will have their first practice on \(practiceDetails).\n")
    print("Regards, \n\n Kavan Seggie \nLeague Coordinator")
}

for player in teamDragons {
    var teamName = "Dragons"
    var practiceDetails = "March 17, 1pm"
    print("Hi \(player["guardiansNames"])\n")
    print("In order to have the soccer teams that can compete against each other, we have decided to allocate children to a team based on their experience. Each team will have a similar number of both experienced and inexperienced soccer players.\n")
    print("\(player["playerName"]) has been selected to play on the \(teamName) team. The \(teamName) will have their first practice on \(practiceDetails).\n")
    print("Regards, \n\n Kavan Seggie \nLeague Coordinator")
}


for player in teamRaptors {
    var teamName = "Raptors"
    var practiceDetails = "March 18, 1pm"
    print("Hi \(player["guardiansNames"])\n")
    print("In order to have the soccer teams that can compete against each other, we have decided to allocate children to a team based on their experience. Each team will have a similar number of both experienced and inexperienced soccer players.\n")
    print("\(player["playerName"]) has been selected to play on the \(teamName) team. The \(teamName) will have their first practice on \(practiceDetails).\n")
    print("Regards, \n\n Kavan Seggie \nLeague Coordinator")
}


//// Calculating average height
//var totalSharksHeight: Int = 0
//var averageSharksHeight: Double = 0
//
//for player in teamSharks {
//  totalSharksHeight += (player["heightInInches"] as? Int)!
//}
//
//averageSharksHeight = Double(totalSharksHeight) / Double(teamSharks.count)
//
//// Calculating average height
//var totalDragonsHeight: Int = 0
//var averageDragonsHeight: Double = 0
//
//for player in teamDragons {
//    totalDragonsHeight += (player["heightInInches"] as? Int)!
//}
//
//averageDragonsHeight = Double(totalDragonsHeight) / Double(teamDragons.count)
//
//// Calculating average height
//var totalRaptorsHeight: Int = 0
//var averageRaptorsHeight: Double = 0
//
//for player in teamRaptors {
//    totalRaptorsHeight += (player["heightInInches"] as? Int)!
//}
//
//averageRaptorsHeight = Double(totalRaptorsHeight) / Double(teamRaptors.count)


//// Loop through all players and assign those who have played before. The "as? Bool" unpacks the Boolean from the Any type in the Dict.
//for player in teamAll {
//    if (player["hasPlayedBefore"] as? Bool) == true {
//        switch (counter % 3) {
//            case 1: teamSharks.append(player)
//            case 2: teamDragons.append(player)
//            case 0: teamRaptors.append(player)
//            default: print("This should programatically never occur")
//        }
//        counter += 1
//    }
//}
//
//// Loop through all players and assign those who have NOT played before.
//for player in teamAll {
//    if (player["hasPlayedBefore"] as? Bool) == false {
//        switch (counter % 3) {
//        case 0: teamSharks.append(player)
//        case 1: teamDragons.append(player)
//        case 2: teamRaptors.append(player)
//        default: print("This should programatically never occur")
//        }
//        counter += 1
//    }
//}

