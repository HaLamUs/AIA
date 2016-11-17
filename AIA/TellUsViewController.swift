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
    
    @IBOutlet weak var ageSlider: UISlider! {
        didSet {
            ageSlider.setThumbImage(#imageLiteral(resourceName: "red_circle") , for: .normal)
            let slider = #imageLiteral(resourceName: "track_slider").stretchableImage(withLeftCapWidth: 100, topCapHeight: 0)
            ageSlider.setMinimumTrackImage(slider, for: .normal)
            ageSlider.setMaximumTrackImage(slider, for: .normal)
        }
    }
    
    @IBOutlet weak var sliderLabel: UILabel!
    
    @IBOutlet weak var coveredSlider: UISlider! {
        didSet {
            coveredSlider.setThumbImage(#imageLiteral(resourceName: "red_circle"), for: .normal)
            let slider = #imageLiteral(resourceName: "covered_slider").stretchableImage(withLeftCapWidth: 100, topCapHeight: 0)
            coveredSlider.setMinimumTrackImage(slider, for: .normal)
            coveredSlider.setMaximumTrackImage(slider, for: .normal)
        }
    }
    
    @IBOutlet weak var coveredLabel: UILabel!
    
    //MARK: IBActions
    @IBAction func touchUpFemaleButton(_ femaleButton: UIButton) {
        femaleButton.isSelected = !femaleButton.isSelected
        self.maleButton.isSelected = false
        self.smokerButton.isEnabled = true
        self.nonSmokerButton.isEnabled = true
    }
    @IBAction func touchUpMaleButton(_ maleButton: UIButton) {
        maleButton.isSelected = !maleButton.isSelected
        self.femaleButton.isSelected = false
        self.smokerButton.isEnabled = true
        self.nonSmokerButton.isEnabled = true
    }
    
    @IBAction func touchUpSmokerButton(_ smokerButton: UIButton) {
        smokerButton.isSelected = !smokerButton.isSelected
        self.nonSmokerButton.isSelected = false
    }
    @IBAction func touchUpNonSmokerButton(_ nonSmokerButton: UIButton) {
        nonSmokerButton.isSelected = !nonSmokerButton.isSelected
        self.smokerButton.isSelected = false
    }
    
    @IBAction func valueChangeUISlider(_ ageSlider: UISlider) {
        let tam: Int = Int(ageSlider.value)
        self.ageSlider.setPosLabel(label: self.sliderLabel, text: "S$%d YEARS")
        if tam == 1 {
            self.sliderLabel.text = "2 WEEKS"
        }
//        print(self.sliderLabel.center)
    }
    
    @IBAction func valueChangeCoveredUISlider(_ coveredSlider: UISlider) {
        self.coveredSlider.setPosLabel(label: self.coveredLabel, text: "S$%dk")
    }

    @IBAction func touchUpClearButton(_ sender: UIButton) {
        self.femaleButton.isSelected = false
        self.maleButton.isSelected = false
        self.smokerButton.isEnabled = false
        self.nonSmokerButton.isEnabled = false
        self.ageSlider.value = 0
        self.coveredSlider.value = 50
        self.coveredSlider.setPosLabel(label: self.coveredLabel, text: "S$%dk")
        self.ageSlider.setPosLabel(label: self.sliderLabel, text: "S$%d YEARS")
        self.sliderLabel.text = "2 WEEKS"
        self.coveredLabel.text = "S$50k"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension UISlider {
    func setPosLabel(label: UILabel, text: String) {
        let trackRect = self.trackRect(forBounds: self.bounds)
        let thumbRect = self.thumbRect(forBounds: self.bounds,
                                         trackRect: trackRect,
                                         value: self.value)
        label.center = CGPoint(x: thumbRect.origin.x + self.frame.origin.x + 10,
                               y: self.frame.origin.y - 20)
        let tam: Int = Int(self.value)
        label.text = String(format:text, tam)
    }
}








