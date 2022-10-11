//
//  DetailsVC.swift
//  FriendsBook
//
//  Created by Esra Ekinci on 11.10.2022.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    
    var selectedFrieds : Friends?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = selectedFrieds?.name
        jobLabel.text = selectedFrieds?.job
        ageLabel.text = selectedFrieds?.age
        hobbyLabel.text = selectedFrieds?.hobby
        imageView.image = selectedFrieds?.image

        
    }
    

}
