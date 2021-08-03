//
//  ViewController.swift
//  UITableViewHW
//
//  Created by Иван on 7/28/21.
//

import UIKit

class ViewController: UIViewController {
    
    let arrayOfImages = ["1", "2", "3"]
    let arrayOfUsernames = ["Chun Lee ", "BTS Fan Page ", "Papich "]
    let arrayOfPosttexts = ["Life is beautiful!", "Hello world!", "Отлетаешь, очередняра"]

    @IBOutlet weak var tableViewOutlet: UITableView!
    
    let identifier = MyTableViewCell.identifier
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.register(MyTableViewCell.nib(), forCellReuseIdentifier: identifier)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfImages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! MyTableViewCell
        cell.configure(with: arrayOfImages[indexPath.row],
                       with: arrayOfUsernames[indexPath.row],
                       and: arrayOfPosttexts[indexPath.row])
        return cell
    }
    
    
}

