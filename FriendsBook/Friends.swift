//
//  Friends.swift
//  FriendsBook
//
//  Created by Esra Ekinci on 11.10.2022.
//

import Foundation
import UIKit

class Friends {
    var name : String
    var job : String
    var age : String
    var hobby : String
    var image : UIImage
    
    init(Friendsname: String, Friendsjob: String, Friendsage: String, Friendshobby: String, Friendsimage: UIImage) {
        name = Friendsname
        job = Friendsjob
        age = Friendsage
        hobby = Friendshobby
        image = Friendsimage
    }
}
