//
//  ViewController.swift
//  CustomTableView
//
//  Created by Stephanie Catalano on 7/18/16.
//  Copyright © 2016 Stephanie Catalano. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, updateInfo {
    
    @IBOutlet weak var myTableView: UITableView!
    
    var data = [contacts]()
    
    //var data = [contacts(firstName: "Stephanie", lastName: "Catalano", phoneNumber: "9542635341", emailAddress:"s.n@c.com" ), contacts(firstName: "Bob", lastName: "Doe", phoneNumber: "123456", emailAddress: "email2.com"), contacts(firstName: "Joe", lastName: "Doe", phoneNumber: "123654", emailAddress: "email3.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let d = DataManager.sharedManager
        
        d.getContacts()
        
        data = d.getContacts()
        
        self.myTableView.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath
        indexPath: NSIndexPath) -> UITableViewCell {
        
    
            if let cell = tableView.dequeueReusableCellWithIdentifier("myReusableCell", forIndexPath:indexPath) as? MyCustomTableViewCell {
                
                var variableString = data[indexPath.row].fN
                variableString += " \(data[indexPath.row].lN)            \(data[indexPath.row].phNum)"
                
                cell.myResuableCellLabel.text = variableString
             
                
                return cell
                
            }
            
            
            return UITableViewCell()
            
    }
 
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "firstSegue" {
            let destination = segue.destinationViewController as? MyOtherTableViewController
            let cell = sender as! UITableViewCell
            let selectedRow = myTableView.indexPathForCell(cell)!.row
            
            destination!.contact = data[selectedRow]
            
        }
    
    }
    func updatecontactdetails(controller: MyOtherTableViewController, newContact: contacts) {
        
        if let myRowNbr = myTableView.indexPathForSelectedRow?.row{
            data.removeAtIndex(myRowNbr)
            data.insert(newContact, atIndex:myRowNbr)
        }
    }

}