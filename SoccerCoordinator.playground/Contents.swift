/*
 --------------------------------------------------
 | Initialize variables
 --------------------------------------------------
 */

// Setup player info into dictionaries
var joeSmith = ["Name": "Joe Smith", "Height": "42", "Experience": "YES", "Guardian": "Jim and Jan Smith"]
var jillTanner = ["Name": "Jill Tanner", "Height": "36", "Experience": "YES", "Guardian": "Clara Tanner"]
var billBon = ["Name": "Bill Bon", "Height": "43", "Experience": "YES", "Guardian": "Sara and Jenny Bon"]
var evaGordon = ["Name": "Eva Gordon", "Height": "45", "Experience": "NO", "Guardian": "Wendy and Mike Gordon"]
var mattGill = ["Name": "Matt Gill", "Height": "40", "Experience": "NO", "Guardian": "Charles and Sylvia Gill"]
var kimmyStein = ["Name": "Kimmy Stein", "Height": "41", "Experience": "NO", "Guardian": "Bill and Hillary Stein"]
var sammyAdams = ["Name": "Sammy Adams", "Height": "45", "Experience": "NO", "Guardian": "Jeff Adams"]
var karlSaygan = ["Name": "Karl Saygan", "Height": "42", "Experience": "YES", "Guardian": "Heather Bledsoe"]
var suzaneGreenberg = ["Name": "Suzane Greenberg", "Height": "44", "Experience": "YES", "Guardian": "Henrietta Dumas"]
var salDali = ["Name": "Sal Dali", "Height": "41", "Experience": "NO", "Guardian": "Gala Dali"]
var joeKavalier = ["Name": "Joe Kavalier", "Height": "39", "Experience": "NO", "Guardian": "Sam and Elaine Kavalier"]
var benFinkelstien = ["Name": "Ben Finkelstien", "Height": "44", "Experience": "NO", "Guardian": "Aaron and Jill Finkelstien"]
var diegoSoto = ["Name": "Diego Soto", "Height": "41", "Experience": "YES", "Guardian": "Robin and Sarika Soto"]
var chloeAlaska = ["Name": "Chloe Alaska", "Height": "47", "Experience": "NO", "Guardian": "David and Jamie Alaska"]
var arnoldWillis = ["Name": "Arnold Willis", "Height": "43", "Experience": "NO", "Guardian": "Claire Willis"]
var phillipHelm = ["Name": "Phillip Helm", "Height": "44", "Experience": "YES", "Guardian": "Thomas Helm and Eva Jones"]
var lesClay = ["Name": "Les Clay", "Height": "42", "Experience": "YES", "Guardian": "Wynonna Brown"]
var herschelKrustofski = ["Name": "Herschel Krustofski", "Height": "45", "Experience": "YES","Guardian": "Hyman and Rachel Krustofski"]

// Store all the players into a new 'players' array
var players = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams, karlSaygan, suzaneGreenberg, salDali, joeKavalier,
               benFinkelstien, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]

// Empty array to store letters
var letters: [String] = []

// Empty arrays for each team
var teamDragons: [[String: String]] = []
var teamSharks: [[String: String]] = []
var teamRaptors: [[String: String]] = []

// Empty arrays for players w/ and w/out experience
var hasExperience: [[String: String]] = []
var noExperience: [[String: String]] = []

// Practice times for teams
var dragonsTime = "March 17, 1pm"
var sharksTime = "March 17, 3pm"
var raptorsTime = "March 18, 1pm"

// Counter for the while loop inside the dividePlayers function
var expIndex = 0

/*
 --------------------------------------------------
 | Functions
 --------------------------------------------------
 */

// Function to assign the players to the teams based on the experience and no experience arrays
func dividePlayersBased(on exp: [[String: String]]) {
    while expIndex < exp.count {
        teamDragons.append(exp[expIndex])
        expIndex += 1
        teamSharks.append(exp[expIndex])
        expIndex += 1
        teamRaptors.append(exp[expIndex])
        expIndex += 1
    }
    if expIndex == exp.count {
        expIndex = 0
    }
}

/*
 --------------------------------------------------
 | Logic
 --------------------------------------------------
 */

// Check if players have experience or not and assign them to appropriate array
for player in players {
    if player["Experience"] == "YES" {
        hasExperience.append(player)
    } else {
        noExperience.append(player)
    }
}

// Call the dividePlayers function
dividePlayersBased(on: hasExperience)
dividePlayersBased(on: noExperience)

// Generate personalized letters for each players guardian
for player in teamDragons {
    let name = player["Name"] as! String
    let guardian = player["Guardian"] as! String
    letters.append("Dear \(guardian), we would like to inform you that your child \(name) has been placed on Team Dragons for the upcoming soccer league! The first team practice will be on \(dragonsTime). If you have any questions, please feel free to give us a call at 303-000-0000.")
}

for player in teamSharks {
    let name = player["Name"] as! String
    let guardian = player["Guardian"] as! String
    letters.append("Dear \(guardian), we would like to inform you that your child \(name) has been placed on Team Sharks for the upcoming soccer league! The first team practice will be on \(sharksTime). If you have any questions, please feel free to give us a call at 303-000-0000.")
}

for player in teamRaptors {
    let name = player["Name"] as! String
    let guardian = player["Guardian"] as! String
    letters.append("Dear \(guardian), we would like to inform you that your child \(name) has been placed on Team Raptors for the upcoming soccer league! The first team practice will be on \(raptorsTime). If you have any questions, please feel free to give us a call at 303-000-0000.")
}

// Print each letter
for letter in letters {
    print(letter)
}