//
//  SusisiektiFormaController.swift
//  mezgama
//
//  Created by Tomas Sukys on 2020-09-09.
//  Copyright © 2020 Tomas Sukys.lt. All rights reserved.
//

import UIKit
import MessageUI

class SusisiektiFormaController: UIViewController, MFMailComposeViewControllerDelegate {
    @IBOutlet weak var vardasLabel: UITextField!
    @IBOutlet weak var elPastasLabel: UITextField!
    @IBOutlet weak var tekstasLabel: UITextField!
    @IBOutlet weak var siustiButtonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        hideKeyboardWhenTappedAround()
    }
    
    @IBAction func siustiButtonTapped(_ sender: Any) {
        sendEmail()
        
        navigationController?.popViewController(animated: true)
    }
    
    func sendEmail() {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["operacijay@yahoo.com"])
            mail.setMessageBody("<p>\(tekstasLabel.text ?? "")</p>", isHTML: true)

            present(mail, animated: true)
        } else {
            // show failure alert
        }
    }

    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
    


}
