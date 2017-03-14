//
//  snap.swift
//  snapChatProject
//
//  Created by Jenny Dohee Lee on 3/14/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import UIKit
import Foundation

class Snap: NSObject {
    let time: Timer!
    let user: String!
    let status: Bool!
    let image: UIImage!
    let feedtype: String!
    
    init(time: Timer, user: String, status: Bool, image: UIImage, feedtype: String) {
        self.time = time
        self.user = user
        self.status = status
        self.image = image
        self.feedtype = feedtype
    }
    
}

