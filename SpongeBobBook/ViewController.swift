//
//  ViewController.swift
//  SpongeBobBook
//
//  Created by Elif Ataseven  on 15.07.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var myBobs = [SpongeBob]()
    var chosenBob : SpongeBob?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let spongebob = SpongeBob(name: "SpongeBob", job: "Chef", image: UIImage(named: "spongebob")!)
        let patrick = SpongeBob(name: "Patrick", job: "Engineers", image: UIImage(named: "patrick")!)
        let crabs = SpongeBob(name: "Crabs", job: "Boss", image: UIImage(named: "crabs")!)
        let frank = SpongeBob(name: "Frank", job: "Lawyer", image: UIImage(named: "frank")!)
        let gary = SpongeBob(name: "Gary", job: "Architect", image: UIImage(named: "gary")!)
        let plankton = SpongeBob(name: "Plankton", job: "Thief", image: UIImage(named: "plankton")!)
        let sandy = SpongeBob(name: "Sandy", job: "Astronaut", image: UIImage(named: "sandy")!)
        let squidward = SpongeBob(name: "Squidward", job: "Doctor", image: UIImage(named: "squidward")!)
        
        myBobs.append(spongebob)
        myBobs.append(patrick)
        myBobs.append(crabs)
        myBobs.append(frank)
        myBobs.append(gary)
        myBobs.append(plankton)
        myBobs.append(sandy)
        myBobs.append(squidward)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myBobs.count
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = myBobs[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenBob = myBobs[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedBob = chosenBob
        }
    }
    
}

