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
    let time: Date!
    let user: String!
    let status: Bool!
    let image: UIImage!
    
    init(user: String, status: Bool, image: UIImage) {
        self.user = user
        self.status = status
        self.image = image
        self.time = Date()
        
    }
//    func timestamp() {
//        let variablegoeshere: Int?
//        return "\(variablegoeshere)"
//    }
    
}

