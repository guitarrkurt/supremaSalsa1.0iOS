//
//  FirstViewController.swift
//  supremaSalsa
//
//  Created by guitarrkurt on 04/06/15.
//  Copyright (c) 2015 guitarrkurt. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableVIew: UITableView!
    var items: [String] = ["Paquete 1 🐗", "Paquete 2 🐔", "Paquete 3 🐷", "Paquete 4 🌰", "Paquete 5 🐬", "Paquete 6 🍞", "Paquete 7 🍰", "Paquete 8 🍪", "Paquete 9 🍤", "Paquete 10 🍧", "Paquete 1 🐗", "Paquete 2 🐔", "Paquete 3 🐷", "Paquete 4 🌰", "Paquete 5 🐬", "Paquete 6 🍞", "Paquete 7 🍰", "Paquete 8 🍪", "Paquete 9 🍤", "Paquete 10 🍧"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableVIew.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell:UITableViewCell = self.tableVIew.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
        
        
        cell.textLabel?.text = self.items[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("You selected cell #\(indexPath.row)!")
        var alert = UIAlertView()
        alert.title = "Selecciono"
        alert.message = self.items[indexPath.row]
        alert.addButtonWithTitle("OK")
        alert.show()
        

    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

