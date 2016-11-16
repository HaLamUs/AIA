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
    
    @IBAction func valueChangeUISlider(_ ageSlider: UISlider) {
        let tam:Int = Int(ageSlider.value)
        let trackRect = self.ageSlider.trackRect(forBounds: self.ageSlider.bounds)
        let thumbRect = self.ageSlider.thumbRect(forBounds: self.ageSlider.bounds,
                                                 trackRect: trackRect, value: ageSlider.value)
        self.sliderLabel.center = CGPoint(x: thumbRect.origin.x + self.ageSlider.frame.origin.x + 10,
                                          y: self.ageSlider.frame.origin.y - 20)
        self.sliderLabel.text = "\(tam) YEARS"
        if tam == 1 {
            self.sliderLabel.text = "2 WEEKS"
        }
//        print("\(ageSlider.value) === \(tam)")
    }
    
    @IBAction func valueChangeCoveredUISlider(_ coveredSlider: UISlider) {
        let tam:Int = Int(coveredSlider.value)
        let trackRect = self.coveredSlider.trackRect(forBounds: self.coveredSlider.bounds)
        let thumbRect = self.coveredSlider.thumbRect(forBounds: self.coveredSlider.bounds,
                                                 trackRect: trackRect, value: coveredSlider.value)
        self.coveredLabel.center = CGPoint(x: thumbRect.origin.x + self.coveredSlider.frame.origin.x + 10,
                                          y: self.coveredSlider.frame.origin.y - 20)
        self.coveredLabel.text = "S$\(tam)k"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}








