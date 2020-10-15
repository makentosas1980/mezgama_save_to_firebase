//
//  PhotoTableViewCell.swift
//  mezgama
//
//  Created by Tomas Sukys on 2020-09-17.
//  Copyright © 2020 Tomas Sukys.lt. All rights reserved.
//

import Firebase
import UIKit

//class PhotoTableViewCell: UITableViewCell {
class PhotoTableViewCell: UICollectionViewCell {

    @IBOutlet weak var captionLabel: UILabel!
    
    @IBOutlet weak var postImageView: UIImageView!
    var post: Image! {
        didSet {
            self.updateUI()
        }
    }

    func updateUI() {
        //caption
        self.captionLabel.text = post.caption

        //download cell photo
        if let imageURL = post.imageURL {
            //create storage reference
            let imageStorageRef = Storage.storage().reference(forURL: imageURL)

            //observe method to download teh data
            imageStorageRef.getData(maxSize: 2 * 1024 * 1024) { [weak self] (data, error) in
                if let error = error {
                    print("======== ERROR while downloadoing: \(error)")
                } else {
                    if let imageData = data {
                        DispatchQueue.main.async {
                            let image = UIImage(data: imageData)
                            self?.postImageView.image = image
                        }
                    }
                }
            }
        }

    }

}
