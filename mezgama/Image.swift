//
//  Image.swift
//  mezgama
//
//  Created by Tomas Sukys on 2020-09-16.
//  Copyright © 2020 Tomas Sukys.lt. All rights reserved.
//

import Firebase
import SwiftyJSON
import UIKit

class Image {
    var caption: String!
    var imageURL: String?
    private var image: UIImage!
    
    init(image: UIImage, caption: String) {
        self.image = image
        self.caption = caption
    }
    
    init(snapshot: DataSnapshot) {
        let json = JSON(snapshot.value as Any)
        self.imageURL = json["imageURL"].stringValue
        self.caption = json["caption"].stringValue
    }
    
    func save() {
        //create a new database reference
        let newPostRef = Database.database().reference().child("photoPosts").childByAutoId()
        let newPostKey = newPostRef.key
        
        if let imageData = image.jpegData(compressionQuality: 0.6) {
            //create a new storage reference
            let imageStorageRef = Storage.storage().reference().child("images")
            let newImageRef = imageStorageRef.child(newPostKey!)
            
            //save the image to storage
            newImageRef.putData(imageData).observe(.success, handler: { (snapshot) in
                newImageRef.downloadURL(completion: { (url, error) in
                    if error != nil {
                        print("beda cia")
                        return
                    }
                    
                    self.imageURL = url?.absoluteString
                    let values = [
                        "imageURL" : self.imageURL!,
                        "caption" : self.caption!
                    ]
                    newPostRef.setValue(values)
                })
            })
        }
    }
}
