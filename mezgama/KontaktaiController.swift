//
//  KontaktaiController.swift
//  mezgama
//
//  Created by Tomas Sukys on 2020-09-09.
//  Copyright © 2020 Tomas Sukys.lt. All rights reserved.
//

import UIKit

class KontaktaiController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func susisiektiButtonTapped(_ sender: Any) {
        if let vc = storyboard?.instantiateViewController(identifier: "Forma") as? SusisiektiFormaController {
            navigationController?.pushViewController(vc, animated: true)
        }
    }

}
