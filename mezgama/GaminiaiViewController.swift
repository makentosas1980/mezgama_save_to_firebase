//
//  GaminiaiViewController.swift
//  mezgama
//
//  Created by Tomas Sukys on 2020-09-09.
//  Copyright © 2020 Tomas Sukys.lt. All rights reserved.
//

import Firebase
import UIKit


//FOR COLLECTION VIEW
class GaminiaiViewController: UICollectionViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var imagePicker: UIImagePickerController!
    var images = [Image]()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Kolekcija"

        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(showViewToAddImage))

        getImages()
    }

    func getImages() {
        //create reference to the posted images in the database
        Database.database().reference().child("photoPosts").observe(.childAdded) { (snapshot) in
            //parse each post with image and caption

            DispatchQueue.main.async {
                let newImage = Image(snapshot: snapshot)
                self.images.insert(newImage, at: 0)
                let indexPath = IndexPath(row: 0, section: 0)
                //update collection view
                self.collectionView.insertItems(at: [indexPath])
            }
        }
    }

    @objc func showViewToAddImage() {
        if let vc = storyboard?.instantiateViewController(identifier: "Pavyzdys") as? GaminysDetailViewController {
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? PhotoTableViewCell else {
            fatalError("Could not dequeue PersonCell")
        }

        cell.post = images[indexPath.row]
        
        return cell
    }
    
}
    

