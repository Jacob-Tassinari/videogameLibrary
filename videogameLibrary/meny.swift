//
//  meny.swift
//  videogameLibrary
//
//  Created by Jacob Tassinari on 9/11/18.
//  Copyright © 2018 Jacob Tassinari. All rights reserved.
//

import Foundation

var  shouldQuit = false
var userInnput = 0
class menu {
    let lib = library()// an instance of the class
    func go() {
        while !shouldQuit{
            printMenu()
            handleinput(getInput())
        }
    }
    func printMenu(){
        print("add game(1) - remove games(2) - list all games(3) - list all games in currently(4) - list all of the games out(5) - check out(6)   - check in(7) - quit program(8) - reprint menu(9)")
    }

    func quit(){
        shouldQuit = true
        print("Thanks for stoping by.")
    }
    func getInput() -> String {
        var userInput = readLine()
        while userInput == nil || userInput == "" {// input vaildation
            print("Please give a valid input")
            userInput = readLine()
        }
        return userInput!
    }
    func  handleinput(_ input: String) { // to get to the functions
        switch getInput() {
        case "1":
            print("add game(1)")
            lib.addGame()
        case "2":
            print("remove games(2)")
            lib.removeGames()
        case "3":
            print("list all games(3)")
            lib.printAllGames()
        case "4":
            print("list all games in currently(4)")
            lib.checkedInGames()
        case "5":
            print("list all of the games out(5)")
            lib.checkedOutGames()
        case "6":
            print("check out(6)")
            lib.checkOu()
        case "7":
            print("check in(7)")
            lib.checkIn()
        case "8":
            print("quit program(8)")
            quit()
        case "9":
            printMenu()
        default:
            break
        }
    }
    func vaildateInput(_ Input:String) -> Bool {// input vaildation
        let arrayCase = Array(1...9)
        guard let number  = Int(Input) else {
            return false
        }
        return arrayCase.contains(number)
    }
}
