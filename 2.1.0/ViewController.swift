//
//  ViewController.swift
//  2.1.0
//
//  Created by Ivan on 12.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viewGeneral: UIView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    private var redValue: CGFloat = 0
    private var greenValue: CGFloat = 0
    private var blueValue: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func backgroundChange () {
        viewGeneral.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }
    @IBAction func redSliderAction() {
        label1.text = String(round((redSlider.value * 100)) / 100.0)
        redValue = CGFloat(redSlider.value)
        backgroundChange()
    }
    @IBAction func greenSliderAction() {
        label2.text = String(round((greenSlider.value * 100)) / 100.0)
        greenValue = CGFloat(greenSlider.value)
        backgroundChange()
    }
    @IBAction func blueSliderAction() {
        label3.text = String(round((blueSlider.value * 100)) / 100.0)
        blueValue = CGFloat(blueSlider.value)
        backgroundChange()
    }
    
}
