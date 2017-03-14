//
//  imagePickerController.swift
//  snapChatProject
//
//  Created by Akilesh Bapu on 2/27/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import UIKit

class ImagePickerController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    var pickedimage: UIImage?
    var whichfeed: String?
    
    
    @IBOutlet var imageCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageCollectionView.collectionViewLayout = ImageFlowLayout.init()
        self.imageCollectionView.backgroundColor = UIColor.lightGray
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    func selectImage(_ image: UIImage) {
        pickedimage = image
        performSegue(withIdentifier: "ImageToChooseFeed", sender: self)
    
        //The image being selected is passed in as "image".
        
    }
    
    //I THINK I NEED TO DO THIS HERE
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ImageToChooseFeed" {
            if let dest = segue.destination as? ChooseFeedViewController {
//                let date = NSDate()
//                let calendar = NSCalendar.current
//                let hour = calendar.component(.hour, from: date as Date)
//                let minutes = calendar.component(.minute, from: date as Date)
                var snapinstance = Snap(time: Timer(), user: "Jenny Lee", status: false, image: pickedimage!, feedtype: "")
            }
        }
    }
    
    
    //DON'T MODIFY CODE HERE AND BELOW!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allImages.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pickImageCell", for: indexPath) as! imageCollectionVieCell
        cell.image.image = allImages[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedCell = collectionView.cellForItem(at: indexPath) as! imageCollectionVieCell
        selectImage(selectedCell.image.image!)
    }
}
