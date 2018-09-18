//
//  library.swift
//  videogameLibrary
//
//  Created by Jacob Tassinari on 9/13/18.
//  Copyright © 2018 Jacob Tassinari. All rights reserved.
//

import Foundation

class library { // the orginal array of games
    var gameArray: [game] = [game(title: "Fortnite"), game(title: "Skyrim"), game(title: "sonic mania"), game(title: "We Happy Few")]
    func printAllGames(){ // to see all games
        for game in gameArray {
            print(game.title)
        }
    }
    func addGame(){ //add to the list
        print("please input the title of the game you want to add.")
        var newGame = readLine()
        while newGame == nil || newGame == "" {// input vaildation
            print("please input the title of the game you want to add.")
            newGame = readLine()
        }
        let newGameTitle = game(title: newGame!)
        gameArray.append(newGameTitle)
    }
    func checkedInGames(){ // show checked in game
        for game in gameArray {
            if game.checkedIn {
                print(game.title)
            }
        }
    }
    func checkedOutGames(){ // show checked out games
        for game in gameArray {
            if game.checkedIn == false {
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "MM/dd/yyyy"
                print("\(game.title) has a due date of \(dateFormatter.string(from: game.dueDate!))")
            }
        }
    }
    func removeGames(){//remove form list
        for index in 0..<gameArray.count {
            print("\(index) = \(gameArray[index].title)")
        }
        print("please input the number id of the game you want to remove")
        var userInput = Int(readLine()!)
        let vaild = Array(0..<gameArray.count)
        
        while userInput == nil || !vaild.contains(userInput!){// input vaildation
            print("please renter the number.")
            userInput = Int(readLine()!)
        }
        gameArray.remove(at: userInput!)
    }
    func checkOu() { //to check out the game
        for index in 0..<gameArray.count {
            if gameArray[index].checkedIn == true {
                print("\(index) = \(gameArray[index].title)")
            }
        }
        print("please input the number id of the game you want to check out.")
        var userInput = Int(readLine()!)
        let vaild = Array(0..<gameArray.count)
        while userInput == nil || !vaild.contains(userInput!){// input vaildation
            print("please renter the number.")
            userInput = Int(readLine()!)
        }
        gameArray[userInput!].checkedIn = false // changed to checked out
        // start of dates
        let currentCalender = Calendar.current
        let duedate = currentCalender.date(byAdding: .day, value: 14, to: Date())
        gameArray[userInput!].dueDate = duedate
        let dateFormatter = DateFormatter() // to state the date looking better
        dateFormatter.dateFormat = "MM/dd/yyyy"
        print("This game is due on: \(dateFormatter.string(from: duedate!))")
    }
    func checkIn() {// chang it back to checked in
        for index in 0..<gameArray.count {
            if gameArray[index].checkedIn == false {
                print("\(index) = \(gameArray[index].title)")
            }
        }
        print("please input the number id of the game you want to check in.")
        var userInput = Int(readLine()!)
        let vaild = Array(0..<gameArray.count)
        while userInput == nil || !vaild.contains(userInput!){// input vaildation
            print("please renter the number.")
            userInput = Int(readLine()!)
        }
        gameArray[userInput!].checkedIn = true
        gameArray[userInput!].dueDate = nil // take out the date
    }
    
}
