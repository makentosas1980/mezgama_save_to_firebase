//
//  DizainasViewController.swift
//  mezgama
//
//  Created by Tomas Sukys on 2020-09-11.
//  Copyright © 2020 Tomas Sukys.lt. All rights reserved.
//

import UIKit

class DizainasViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    let titleForText = "Dizainas ir kurimas"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "MEGZTINIŲ DIZAINAS IR PAVYZDŽIAI"
        
        textLabel.text = """
        \(titleForText.uppercased()) \n
        \u{2022} Mėginių ėmimą valdo mūsų aukštos kvalifikacijos ir patyrusi projektavimo komanda, turinti išsamių komercinių ir gamybinių žinių. \n
        \u{2022} Pavyzdžiai gali būti gaminami iš eskizų, techninių paketų, įkvepiančių vaizdų ir pavyzdžių arba iš mūsų pavyzdžių bibliotekos. \n
        \u{2022} Projektai ir techniniai brėžiniai atliekami naudojant mūsų „Shima Seiki Apex“ pasaulinės klasės CAD projektavimo sistemą. \n
        \u{2022} Pradinis mėginio paruošimo laikas iš pirminių siūlų - apytiksliai 7 dienos. \n
        \u{2022} Mėginiai gali būti kuriami, kai audinių kokybė yra 14, 12, 10, 5 ir 5 gabaritų. \n
        \u{2022} Trikotažo konstrukcijos ir siūlių detalės - galima megzti kabelį, žakardą ar „Intrasia“. \n
        \u{2022} Natūralūs siūlai: vietiniai: 100% šukuota medvilnė, 100% ekologiška šukuota medvilnė. 100% gazuota merserizuota medvilnė. Medvilnės vilnos mišinys. \n
        \u{2022} Importuoti natūralūs verpalai: 100% itališko verpimo ypač smulki merino vilna, 100% ėrienos vilna, 100% kašmyro iš JK. Galimas ir kitas mišinys. \n
        \u{2022} Dirbtiniai siūlai Vietiniai: 100% viskozė, medvilnės viskozės mišiniai, modalinė medvilnė ir kt. \n
        \u{2022} Sintetiniai siūlai vietiniai: 100% akrilo, akrilo vilnos mišinys, medvilnės akrilo mišiniai. \n
        \u{2022} Importuotų verpalų pavyzdys: merino-šilko mišinys, medvilnės-šilko mišiniai.
        """
    }
    

}
