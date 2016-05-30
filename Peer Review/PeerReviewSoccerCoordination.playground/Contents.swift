//: Playground - noun: a place where people can play

import UIKit

// Players data

let joeSmith = ["name": "Joe Smith", "height": 42, "experience": true ,"gardian": "Jim and Jan Smith"]

let jillTanner = ["name":"Jill Tanner","heigth": 36, "experience": true, "gardian": "Clara Tanner"]

let billBon = ["name": "Bill Bon","heigth": 43, "experience":true, "gardian": "Sara and Jenny Bon"]

let evaGordon = ["name":"Eva Gordon","height": 45,"experience": false, "gardian": "Wendy and Mike Gordon"]

let mattGill = ["name":"Matt Gill", "height": 40, "experience": false, "gardian": "Charles and Sylvia Gill"]

let kimmStein = ["name":"Kimmy Stein","height": 41, "experience": false,"gardian": "Bill and Hillary Stein"]

let sammyAdams = ["name":"Sammy Adams", "height": 45, "experience": false, "gardian": "Jeff Adams"]

let karlSaygan = ["name": "Karl Saygan", "height": 42, "experience": true ,"gardian":"Heather Bledsoe"]

let suzaneGreenberg = ["name":"Suzane Greenberg", "height": 44, "experience": true ,"gardian": "Henrietta Dumas"]

let salDali = ["name": "Sal Dali", "height": 41, "experience": false, "gardian": "Gala Dali"]

let joeKavalier = ["name": "Joe Kavalier", "heigth": 39, "experience": false, "gardian": "Sam and Elaine Kavalier"]

let benFinkelstein = ["name": "Ben Finkelstein", "heigth": 44, "experience": false, "gardian": "Aaron and Jill Finkelstein"]

let diegoSoto = ["name": "Diego Soto", "height": 41, "experience": true, "gardian": "Robin and Sarika Soto"]

let choleAlaska = ["name": "Chloe Alaska", "height": 47, "experience": false, "gardian": "David and Jamie Alaska"]

let arnoldWillis = ["name": "Arnold Willis" , "height": 43, "experience": false, "gardian": "Claire Willis"]

let phillipHelm = ["name": "Phillip Helm", "height": 43, "experience": true, "gardian": "Thomas Helm and Eva Jones"]

let lesClay = ["name": "Les Clay", "height": 42, "experience": true, "gardian": "Wynonna Brown"]

let herschelKrustofski = ["name": "Herschel Krustofski", "height": 45, "experience": true, "gardian": "Hyman and Rachel Krustofski"]

// Players in soccer league

var soccerLeague = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmStein, sammyAdams, karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinkelstein, diegoSoto, choleAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]

// Count the number of players ( Must be 18)

soccerLeague.count

// Declaring the Teams


var heat   = [[String: AnyObject]]()
var lakers = [[String: AnyObject]]()
var okc    = [[String: AnyObject]]()

// Assign Players in Teams such that the number of experienced players on each team are the same

for player in soccerLeague {
    
    if heat.count < 6 && player ["experience"] == 0 {
        heat.append(player)
        
    } else if heat.count < 6 && player ["experience"] == 1 {
        heat.append(player)
        
    } else if lakers.count < 5 && player ["experience"] == 0 {
        lakers.append(player)
        
    } else if lakers.count < 6 && player ["experience"] == 1 {
        lakers.append(player)
        
    }  else if okc.count < 6 && player ["experience"] == 1 {
        okc.append(player)
        
    }  else {
        okc.append(player)
        
        
    }
    
}

heat.count
lakers.count
okc.count

// Displaying Teams

print("****** Heat ********:")
for h in heat {
    print(h)
}


print("****** Lakers ********:")
for l in lakers {
    print(l)
}


print("****** OKC ********:")
for o in okc {
    print(o)
}


//Generates a personalized letter to the guardians

print(" ******** HEAT **************")

for players in heat {
    
    print("Dear \(players["gardian"]!), \n  \(players["gardian"]!) has been selected for the Heat Team!, first practice will be on March 17, 1 PM, please contact us if you have any questions \n - NBA League")
    
}

print(" ******** Lakers **************")

for players in lakers {
    
    print("Dear \(players["gardian"]!), \n  \(players["gardian"]!) has been selected for the Heat Team!, first practice will be on March 17, 3pm, please contact us if you have any questions \n - NBA League")
    
}

print(" ******** OKC **************")

for players in okc {
    
    print("Dear \(players["gardian"]!), \n  \(players["gardian"]!) has been selected for the Heat Team!, first practice will be on March 18, 1pm, please contact us if you have any questions \n - NBA League")
    
}

// Done
