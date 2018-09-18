//
//  makeGames.swift
//  videogameLibrary
//
//  Created by Jacob Tassinari on 9/10/18.
//  Copyright © 2018 Jacob Tassinari. All rights reserved.
//

import Foundation

class game {
    var checkedIn:Bool = true
    var title: String
    var dueDate: Date?
    init(title:String){

        self.title = title
    }
}
