//
//  MedziagosViewController.swift
//  mezgama
//
//  Created by Tomas Sukys on 2020-09-11.
//  Copyright © 2020 Tomas Sukys.lt. All rights reserved.
//

import UIKit

class MedziagosViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "NAUDOJAMOS MEDŽIAGOS"
        
        let titleForText = "Siūlai"

        textLabel.text =
        """
        \(titleForText.uppercased()) \n
        \u{2022} Mes megzgame drabužius iš įvairių rūšių verpalų: vilnos (ėriukų vilnos, merino vilnos, alpakų vilnos ir kt.), Angoros, kašmyro, medvilnės, lino, akrilo, poliesterio, viskozės ir bet kokių minėtų siūlų mišinių. \n
        \u{2022} Per daugelį metų versle mes užmezgėme tvirtus santykius su verpalų tiekėjais iš Europos ir paprašius, pasidalinsime jais su jumis. Taip pat galime pateikti visas medžiagas, reikalingas gaminio apdailai (sagas, užtrauktukus, etiketes, krepšius, dėžutes ir kt.).
        """
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
