//
//  GamybaViewController.swift
//  mezgama
//
//  Created by Tomas Sukys on 2020-09-11.
//  Copyright © 2020 Tomas Sukys.lt. All rights reserved.
//

import UIKit

class GamybaViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    let boldText1 = "Cut-and-sew"
    let boldText2 = "FullyFashion"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "TECHNOLOGIJOS IR GAMYBA"
        
        let titleForText = "Mezgimo mašinos"
        
        textLabel.text =
        """
        \(titleForText.uppercased()) \n
        Mes naudojame naujausias technologijas gamindami aukštos kokybės megztus drabužius, daugiausia gamindami CMT (kirpkite, gaminkite, kirpkite), taip pat plečiame savo gamybą. Tam mes naudojame vokiškas „Stoll“ mezgimo mašinas „Stoll“ (3, 5, 7, 12 matuokliai). Siuvimo įranga yra iš Juki ir Yamato (Japonija). Mes galime siūti užraktą, užraktą, užlenkti arba susieti siūles. Lyginimo mašinos yra iš Ottelo Nepi (Italija), o skalbimo ir džiovinimo įranga - iš Primus (Belgija).

        Priklausomai nuo reikalavimo, galime gaminti įvairaus sudėtingumo drabužius.

        "\(boldText1.uppercased())" - dalys (pvz., Priekinė, galinė, rankovės) supjaustomos iš megztų pavyzdžių ir tada siuvamas galutinis produktas.

        "\(boldText2.uppercased())" - atskiros gaminio dalys (pvz., Priekinė, galinė, rankovės) yra megztos pagal galutinius matavimus ir sujungiamos kartu.

        Mes turime galimybę megzti įvairius mezgimo modelius, tokius kaip intarsija, žakardas, nėriniai, aranas, siuvinėjimai, spaudiniai, rankų darbo dekoracijos ir kt.
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
