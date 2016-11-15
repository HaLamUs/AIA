//
//  TellUsViewController.swift
//  AIA
//
//  Created by Ha Lam on 11/12/16.
//  Copyright © 2016 HTKInc. All rights reserved.
//

import UIKit

class TellUsViewController: UIViewController {
    
    //MARK: IBOutlets
    @IBOutlet weak var femaleButton: UIButton!
    @IBOutlet weak var maleButton: UIButton!
    
    @IBOutlet weak var smokerButton: UIButton!
    @IBOutlet weak var nonSmokerButton: UIButton!
    
    //MARK: IBActions
    @IBAction func touchUpFemaleButton(_ femaleButton: UIButton) {
        femaleButton.isSelected = !femaleButton.isSelected
        self.maleButton.isSelected = false
    }
    @IBAction func touchUpMaleButton(_ maleButton: UIButton) {
        maleButton.isSelected = !maleButton.isSelected
        self.femaleButton.isSelected = false
    }
    
    @IBAction func touchUpSmokerButton(_ smokerButton: UIButton) {
        smokerButton.isSelected = !smokerButton.isSelected
        self.nonSmokerButton.isSelected = false
    }
    @IBAction func touchUpNonSmokerButton(_ nonSmokerButton: UIButton) {
        nonSmokerButton.isSelected = !nonSmokerButton.isSelected
        self.smokerButton.isSelected = false
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
