//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class SelfieTableViewController {
    func logout() {
        PFUser.logOut()
        var userStoryoard: UIStoryboard = UIStoryboard.storyboardWithName("User", bundle: nil)
        var nc: UINavigationController = userStoryoard.instantiateInitialViewController()
        UIApplication.sharedApplication().windows[0].rootViewController = nc
    }
    
    func viewDidLoad() {
        super.viewDidLoad()
        var logoutButton: UIBarButtonItem =
        self.navigationItem.rightBarButtonItem = logoutButton
        selfies = [].mutableCopy()
        var selfieQuery: PFQuery = PFQuery.queryWithClassName("Selfie")
        selfieQuery.findObjectsInBackgroundWithBlock({(objects: [AnyObject], error: NSErrorPointer) in            for selfie: PFObject in objects {
            NSLog("%@", selfie)
            selfies.addObject(selfie)
            }
            self.tableView.reloadData()
            
        })
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        NSLog("%@", selfies)
        return selfies.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: SelfieTableViewCell = tableView.dequeueReusableCellWithIdentifier("SelfieCell", forIndexPath: indexPath)
        return cell
    }
}
