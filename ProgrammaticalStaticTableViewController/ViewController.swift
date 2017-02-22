//
//  NewGroupTableViewController.swift
//  Circle
//
//  Created by Zulwiyoza Putra on 2/22/17.
//  Copyright © 2017 Zulwiyoza Putra. All rights reserved.
//

import UIKit

class NewGroupTableViewController: UITableViewController {
    
    let section = ["pizza", "deep dish pizza", "calzone"]
    
    let items = [["Margarita", "BBQ Chicken", "Pepperoni"], ["sausage", "meat lovers", "veggie lovers"], ["sausage", "chicken pesto", "prawns", "mushrooms"]]
    
    func setupAddNewMemberView() -> UIViewController {
        let addNewMemberStoryboard = UIStoryboard(name: "AddNewMember", bundle: nil)
        let addNewMemberView = addNewMemberStoryboard.instantiateViewController(withIdentifier: "AddNewMember") as! UINavigationController
        return addNewMemberView
    }
    
    func handleAddNewMember() -> Void {
        let alert = UIAlertController(title: "Sign Out", message: "Are you sure you want to sign out?", preferredStyle: UIAlertControllerStyle.alert)
        let Ok = UIAlertAction(title: "Ok", style: .default) { (alert: UIAlertAction!) in
            
        }
        
        let Cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        
        alert.addAction(Ok)
        alert.addAction(Cancel)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        var header = String()
        
        if section == 3 {
            header = ""
        } else {
            header = self.section[section]
        }
        return header
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.section.count + 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        var rows = Int()
        
        if section == 3 {
            rows = 1
        } else {
            rows = self.items[section].count
        }
        return rows
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        var cell = UITableViewCell()
        
        if indexPath.section == 3 {
            
            cell = tableView.dequeueReusableCell(withIdentifier: "AddNew", for: indexPath) as! AddNewMemberTableViewCell
            
            
        } else {
            cell = tableView.dequeueReusableCell(withIdentifier: "MembersCell", for: indexPath) as! MembersTableViewCell
            
            cell.textLabel?.text = self.items[indexPath.section][indexPath.row]
        }
        
        
        return cell
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //        let homeTableViewController = segue.destination as! HomeTableViewController
        if let identifier = segue.identifier {
            if identifier == "Cancel" {
                print("Cancel button tapped")
            } else if identifier == "Save" {
                print("Save button tapped")
                
            } else {
                
            }
        }
    }
}


