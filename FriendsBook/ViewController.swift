//
//  ViewController.swift
//  FriendsBook
//
//  Created by Esra Ekinci on 11.10.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var myFriends = [Friends] ()
    var chosenFriends : Friends?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        // Friends Object
        
        let chandler = Friends(Friendsname: "Chandler Bing", Friendsjob: "Statistical analysis and Data Reconfiguration", Friendsage: "25", Friendshobby: "Loves Joke", Friendsimage: UIImage(named: "chandler")!)
        
        let joey = Friends(Friendsname: "Joey Tribbiani", Friendsjob: "Actor", Friendsage: "25", Friendshobby: "Loves Sandwich", Friendsimage: UIImage(named: "joey")!)
        
        let phoebe = Friends(Friendsname: "Phoebe Buffay", Friendsjob: "Massage Therapist", Friendsage: "25", Friendshobby: "Loves Charity", Friendsimage: UIImage(named: "phoebe")!)
        
        let monica = Friends(Friendsname: "Monica Geller", Friendsjob: "Chef", Friendsage: "25", Friendshobby: "Loves Cleaning", Friendsimage: UIImage(named: "monica")!)
        
        let rachel = Friends(Friendsname: "Rachel Green", Friendsjob: "Fashion Manager", Friendsage: "25", Friendshobby: "Loves Fashion", Friendsimage: UIImage(named: "rachel")!)
        
        let ross = Friends(Friendsname: "Ross Geller", Friendsjob: "Paleontologist", Friendsage: "25", Friendshobby: "Loves Dinosaur", Friendsimage: UIImage(named: "ross")!)
        
        myFriends.append(chandler)
        myFriends.append(joey)
        myFriends.append(phoebe)
        myFriends.append(monica)
        myFriends.append(rachel)
        myFriends.append(ross)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriends.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = myFriends[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenFriends = myFriends[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let DestinationVC = segue.destination as! DetailsVC
            DestinationVC.selectedFrieds = chosenFriends
        }
    }

}

