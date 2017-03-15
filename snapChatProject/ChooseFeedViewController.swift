//
//  ChooseFeedViewController.swift
//  snapChatProject
//
//  Created by Jenny Dohee Lee on 3/13/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import UIKit

class ChooseFeedViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var holdimage: Snap!
    var currentselect: String!
  
    @IBOutlet weak var postingTo: UILabel!
    @IBAction func arrowButton(_ sender: Any) {
//        let date = Date
        
        threads[currentselect]!.append(holdimage)
        
//        let date = NSDate()
//        let calendar = NSCalendar.current
//        let hour = calendar.component(.hour, from: date as Date)
//        let minutes = calendar.component(.minute, from: date as Date)

        
        print(threads)
        performSegue(withIdentifier: "postedImagenowBack", sender: self)
    }
    @IBOutlet weak var arrowImage: UIImageView!
    @IBOutlet weak var tableViewOutlet: UITableView!
    @IBOutlet weak var choosenFeed: UILabel!
    var selectedIndexPath: IndexPath?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        choosenFeed.text = ""
        postingTo.text = ""
        arrowImage.image = #imageLiteral(resourceName: "goButton")
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndexPath = indexPath
        currentselect = threadNames[indexPath.row]
        choosenFeed.text? = threadNames[indexPath.row]
        postingTo.text = "Posting To"
    }
    
    //for when they click bottom right icon 
//            performSegue(withIdentifier: "chooseFeedToFeed", sender: self)
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "feedcell", for: indexPath) as! customFeedTableViewCell
        cell.chooseFeedTitle.text = threadNames[indexPath.row]
        cell.chooseFeedTitle.textAlignment = .center
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination as! ImagePickerController
//        dest.holdimage = holdimage
    }
        

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
