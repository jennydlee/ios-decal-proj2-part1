//
//  ChooseFeedViewController.swift
//  snapChatProject
//
//  Created by Jenny Dohee Lee on 3/13/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import UIKit

class ChooseFeedViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

  
  
    @IBOutlet weak var tableViewOutlet: UITableView!
    var selectedIndexPath: IndexPath?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndexPath = indexPath
        performSegue(withIdentifier: "chooseFeedToFeed", sender: self)

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "feedcell", for: indexPath) as! customFeedTableViewCell
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "chooseFeedToFeed" {
//            if let dest = segue.destination as? FeedViewController {
////                dest.pokemon = pokemonArray?[(selectedIndexPath?.row)!]
////                dest.image = cachedImages[(selectedIndexPath?.row)!]
//            }
        }
        
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
