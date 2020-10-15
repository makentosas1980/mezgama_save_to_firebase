//
//  ViewController.swift
//  mezgama
//
//  Created by Tomas Sukys on 2020-09-09.
//  Copyright © 2020 Tomas Sukys.lt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let scrollView = UIScrollView()
    let stackView = UIStackView()
    
    @IBOutlet weak var contenView: UIView!
    @IBOutlet weak var dizainasLabel: UIButton!
    @IBOutlet weak var gamybaLabel: UIButton!
    @IBOutlet weak var paslaugosLabel: UIButton!
    @IBOutlet weak var medziagosLabel: UIButton!
    @IBOutlet weak var kokybeLabel: UIButton!
    
    var buttons = [UIButton]()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "MEZGAMA"
        
        buttonsDesign(button: dizainasLabel)
        buttonsDesign(button: gamybaLabel)
        buttonsDesign(button: paslaugosLabel)
        buttonsDesign(button: medziagosLabel)
        buttonsDesign(button: kokybeLabel)
        
        buttons = [dizainasLabel, gamybaLabel, paslaugosLabel, medziagosLabel, kokybeLabel]
    }
    
    func buttonsDesign(button: UIButton) {
        button.layer.cornerRadius = 10
        button.layer.shadowRadius = 5
        button.layer.shadowOpacity = 0.8
        button.layer.shadowOffset = CGSize(width: 5, height: 5)
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        UIView.animate(withDuration: 0.5) {
            self.contenView.backgroundColor = .darkGray
        }
    }
}


extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action:    #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
       view.endEditing(true)
    }
}
