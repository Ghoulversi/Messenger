//
//  FriendsControllerHelper.swift
//  MessengerApp
//
//  Created by Minami on 3/18/18.
//  Copyright © 2018 Pikachu. All rights reserved.
//

import UIKit


class Friend: NSObject {
    
    var name: String?
    var profileImageName: String?
}

class Message: NSObject {
    
    var text: String?
    var date: NSDate?
    
    var friend: Friend?
}

extension FriendsController {
    
    func setupData() {
        
        let mark = Friend()
        mark.name = "Mark Zuckerberg"
        mark.profileImageName = "mi"
        
        let message = Message()
        message.friend = mark
        message.text = "Hello, my name is mark. nice to meet you...."
        message.date = NSDate()
        
        let steve = Friend()
        steve.name = "Luffy"
        steve.profileImageName = "luffyicon"
        
        let messageSteve = Message()
        messageSteve.friend = steve
        messageSteve.text = "Gomo gomo no pistoleto"
        message.date = NSDate()
        
        messages = [message, messageSteve]
    }
}
