//
//  ViewController.swift
//  Table-View
//
//  Created by Saideep Reddy Talusani on 8/29/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    let rainbow: [UIColor] = [.red, .yellow, .green, .orange, .blue, .purple, .magenta]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rainbow.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
                cell.backgroundColor = rainbow[indexPath.item]
        //Default Content Configuration
                var content = cell.defaultContentConfiguration()
                content.text = rainbow[indexPath.item].accessibilityName.capitalized
                
                cell.contentConfiguration = content
                return cell
    }
    
}

