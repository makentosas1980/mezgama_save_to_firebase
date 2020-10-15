//
//  GaminysDetailViewController.swift
//  mezgama
//
//  Created by Tomas Sukys on 2020-09-10.
//  Copyright © 2020 Tomas Sukys.lt. All rights reserved.
//

import Firebase
import UIKit

class GaminysDetailViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var captionTextView: UITextField!
    
//    var imagePicker: UIImagePickerController!
    var takenImage = UIImage()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Images"
        
        captionTextView.placeholder = "Įveskite teksta"

        hideKeyboardWhenTappedAround()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = true
        imagePicker.delegate = self

        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            imagePicker.sourceType = .camera
            imagePicker.cameraCaptureMode = .photo
        } else {
            imagePicker.sourceType = .photoLibrary
        }
        
        present(imagePicker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage else {
            print("problem")
            return
        }

        takenImage = image
        imageView.image = takenImage
        dismiss(animated: true, completion: nil)
    }

    @IBAction func saveButtonTapped(_ sender: Any) {
        if captionTextView.text != "" && captionTextView.placeholder != "" {
            let newImage = Image(image: takenImage, caption: captionTextView.text!)
            newImage.save()
            navigationController?.popViewController(animated: true)
        } else {
            print("neveikia")
        }
    }
    
    
}

