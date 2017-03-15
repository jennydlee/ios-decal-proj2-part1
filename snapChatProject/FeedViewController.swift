//
//  FeedViewController.swift
//  snapChatProject
//
//  Created by Jenny Dohee Lee on 3/14/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import UIKit

class FeedViewController: UITableViewController{
    
    @IBOutlet var feedTableView: UITableView!
    var selectedIndexPath: IndexPath?
    var holdimage: Snap!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        feedTableView.delegate = self
        feedTableView.dataSource = self


        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return threadNames[section]
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndexPath = indexPath
        performSegue(withIdentifier: "viewSnap", sender: self)
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sec = threadNames[section]
        return (threads[sec]?.count)!
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let fcell = feedTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath) as! customViewFeedTableViewCell
        let currsnap = threads[threadNames[indexPath.section]]?[indexPath.row]
        if currsnap?.status == false {
            fcell.readImage.image = #imageLiteral(resourceName: "unread")
        } else {
            fcell.readImage.image = #imageLiteral(resourceName: "read")
        }
        fcell.userName.text = currsnap?.user

        return fcell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination as! seeSnapViewController
        dest.passedSnap = holdimage
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
