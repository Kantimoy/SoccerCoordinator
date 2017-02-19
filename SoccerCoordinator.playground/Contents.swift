//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// List of 18 players and their details where each player is represented by Dictonary.
var players: [[String: String]] = [["Name": "Joe Smith", "Age": "42", "Experience": "YES", "Guardian Name": "Jim and Jan Smith"],
                                   ["Name":"Jill Tanner", "Age":  "36", "Experience": "YES", "Guardian Name": " Clara Tanner"],
                                   [ "Name":"Bill Bon", "Age":  "43", "Experience": "YES", "Guardian Name": " Sara and Jenny Bon"],
                                   [ "Name":"Eva Gordon", "Age":  "45", "Experience": "NO", "Guardian Name": " Wendy and Mike Gordon"],
                                   [ "Name":"Matt Gill", "Age":  "40", "Experience": "NO", "Guardian Name": " Charles and Sylvia Gill"],
                                   [ "Name":"Kimmy Stein", "Age":  "41", "Experience": "NO", "Guardian Name": " Bill and Hillary Stein"],
                                   ["Name":"Sammy Adams", "Age": "45", "Experience": "NO", "Guardian Name": " Jeff Adams"],
                                   ["Name":"Karl Saygan", "Age":  "42", "Experience": "YES", "Guardian Name": " Heather Bledsoe"],
                                   ["Name":"Suzane Greenberg", "Age":  "44", "Experience": "YES", "Guardian Name": " Henrietta Dumas"],
                                   ["Name":"Sal Dali", "Age":  "41", "Experience": "NO", "Guardian Name": " Gala Dali"],
                                   ["Name":"Joe Kavalier", "Age": "39", "Experience": "NO", "Guardian Name": " Sam and Elaine Kavalier"],
                                   ["Name":"Ben Finkelstein", "Age": "44", "Experience": "NO", "Guardian Name": " Aaron and Jill Finkelstein"],
                                   ["Name":"Diego Soto", "Age":  "41", "Experience": "YES", "Guardian Name": " Robin and Sarika Soto"],
                                   ["Name":"Chloe Alaska", "Age":  "47", "Experience": "NO", "Guardian Name": " David and Jamie Alaska"],
                                   ["Name":"Arnold Willis", "Age": "43", "Experience": "NO", "Guardian Name": " Claire Willis"],
                                   ["Name":"Phillip Helm", "Age":  "44", "Experience": "YES", "Guardian Name": " Thomas Helm and Eva Jones"],
                                   ["Name":"Les Clay", "Age":  "42", "Experience": "YES", "Guardian Name": " Wynonna Brown"],
                                   ["Name":"Herschel Krustofski", "Age": "45", "Experience": "YES", "Guardian Name": "Hyman and Rachel Krustofski"]]


// Declaring different teams as an array.
var teamSharks = [String]()
var teamDragons = [String]()
var teamRaptors = [String]()


// Array of different teams together.
var teamList = [teamSharks, teamDragons, teamRaptors]




// Function to sort the players into 3 different teams based on their experience.
func sortPlayers(player: [[String:String]]) {
    
    var NewPlayerCount = 0
    var experiencedplayerCount = 0
    
    // Loops through for selecting either experience player or new player.
    for selectingPlayer in player {
        
        if(selectingPlayer["Experience"] == "YES") {
            teamList[experiencedplayerCount].append(selectingPlayer["Name"]!)
            experiencedplayerCount += 1
            if(experiencedplayerCount == teamList.count ){
                experiencedplayerCount = 0
            }
        }
        else {
            teamList[NewPlayerCount].append(selectingPlayer["Name"]!)
            NewPlayerCount += 1
            if(NewPlayerCount == teamList.count ){
                NewPlayerCount = 0
            }
        }
    }
    // Prints list of different teams.
    for team in teamList {
        print(team)
    }
}


//Declaring Letter as an empty array.
var letters = [String]()


/*Function to store and print letter including the player’s name, guardian names, team name, and date/time
 of their first team practice without "Optional Keyword".
*/
func LettesForGuardians(for selectedTeam: [[String:String]]) {
    
    var date = ""       // Varible for storing Date of different teams.
    var time = ""       // Varible for storing Time of different teams.
    var teamName = ""   // Varible for storing Team Name of different teams.
    
    
    // Loops through different teams and assigns date, time and team names.
    for team in teamList {
        if team == teamList[teamList.startIndex] {
            date = "March 17"
            time = "3pm"
            teamName = "teamSharks"
        }
        else if team == teamList[teamList.startIndex + 1] {
            date = "March 17"
            time = "1pm"
            teamName = "teamDragons"
        }
        else {
            date = "March 18"
            time = "1pm"
            teamName = "teamRaptors"
        }
        
        // Then, while looping through the different teams, it loops through different players in each team.
        for playerName in team {
            
            // While looping through different player in teams, it also loops through details of player in "players list" and matches the name
            // of the player.
            for samePlayer in selectedTeam {
                if playerName == samePlayer["Name"] {
                    letters.append("Hello, \(samePlayer["Guardian Name"]!), your son \(samePlayer["Name"]!) has been selected for the team \(teamName) and the practice date is \(date) at \(time).")
                }
            }
        }
    }
    //Prints letter in the console.
    for letter in letters {
        print(letter)
    }
}
print("Selected Teams-------------------------------------------------------")
sortPlayers(player: players)
print("------------------------- Letter for player Guardins ----------------")
LettesForGuardians(for: players)

