//
//  KokybeViewController.swift
//  mezgama
//
//  Created by Tomas Sukys on 2020-09-11.
//  Copyright © 2020 Tomas Sukys.lt. All rights reserved.
//

import UIKit

class KokybeViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "KOKYBĖS KONTROLĖ"
        
        let titleForText = "AUKŠČIAUSIOS KOKYBĖS"
        
        textLabel.text =
        """
        \(titleForText.uppercased()) \n
        Kiekvienas gaminys yra individualiai tikrinamas kiekviename gamybos etape ir paskutinis patikrinimas prieš išsiunčiant, kad kiekvienas drabužis atitiktų išskirtinai aukštus standartus, atitinkančius jūsų ir jūsų klientų reikalavimus
        """
    }

}
