//
//  ApieMusViewController.swift
//  mezgama
//
//  Created by Tomas Sukys on 2020-09-14.
//  Copyright © 2020 Tomas Sukys.lt. All rights reserved.
//

import UIKit

class ApieMusViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        let titleForText = "Apie mus"
        
        textLabel.text =
        """
        \(titleForText.uppercased()) \n
        \u{2022} Esame jaunas verslas, įsikūręs Šiauliuose, Lietuvoje. Mūsų istorija prasidėjo 2017 m. Ir nuo tada mes gaminame megztus aksesuarus įvairiausioms įmonėms: mažmenininkams, dizaineriams, mados agentams, įsikūrusiems Europoje. \n
        \u{2022} Nuolat tobulinome savo technologijas ir įtraukėme vis daugiau modernių sprendimų į megztų drabužių gamybą. Tokiu būdu mes pasiekėme aukščiausios kokybės produktus. \n
        \u{2022} „Mezgama“ tikslas yra kurti ir gaminti produkta vyrams, moterims ir vaikams, naudojant tvarius siūlus, tokius kaip italų „Merino“, škotų kašmyras, „British Lambswool“, „Indian Cotton“ ir „Linen“. \n
        \u{2022} Mezgimo gamykloje dirbame su japonų „Shima Seiki“ mezgimo mašinomis, turinčių 3, 5, 7, 10, 12 gabaritų galimybes. \n
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
