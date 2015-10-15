//
//  ViewController.swift
//  Goonies2edit
//
//  Created by Susanne Burnham on 10/11/15.
//  Copyright © 2015 Susanne Kasahara. All rights reserved.
//

import UIKit

class GooniesTableViewController: UITableViewController, GoonieTableViewCell {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        
        self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        
        self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    
    
    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return.users.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("GoonieCell", forIndexPath: indexPath) as! GoonieTableViewCell
        
        let user = users[indexPath.row]
        
        if let username = user["login"] as? String {
            
            cell.usernameLabel.text = username
            
        }
        
        if let avatarURL = user["avatar_url"] as? String {
            
            cell.avitarImageView.hidden = false
            
            if let url = NSURL(string: avatarURL){
                
                if let data = NSData(contentsOfURL: url) {
                    
                    if let image = UIImage(data: data) {
                        
                        cell.avitarImageView.image = image
                        
                    }
                }
            }
            
        } else {
            
            cell.avitarImageView.hidden = true
            
        }
        
        // simple detail
        
        // avitar
        // username
        
        // full detail
        
        // full name
        // location
        // bio
        // followers
        // following
        // repo count
        // gist count
        
        // Configure the cell...
        
        return cell
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return false if you do not want the specified item to be editable.
    return true
    }
    */
    
    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if editingStyle == .Delete {
    // Delete the row from the data source
    tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    } else if editingStyle == .Insert {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
    }
    */
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
    
    }
    */
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return false if you do not want the item to be re-orderable.
    return true
    }
    */
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}