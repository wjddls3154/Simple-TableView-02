//
//  ViewController.swift
//  Simple TableView 02
//
//  Created by D7702_10 on 2018. 4. 30..
//  Copyright © 2018년 jik. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  identifier = "RE"
        let cell = myTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        cell.textLabel?.text = animals[indexPath.row]
        
        return cell
    }
    

    @IBOutlet weak var myTableView: UITableView!
    var animals = ["COW", "HORSE" , "MOUSE" , "PIG" , "TIGER" , "LION"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTableView.dataSource = self
        myTableView.delegate = self
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

