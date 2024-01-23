//
//  YellowViewController.swift
//  tomoEng11Kadai8
//
//  Created by 井本智博 on 2024/01/23.
//

import UIKit

class YellowViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    private let delegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        slider.minimumValue = 0
        slider.maximumValue = 1    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        slider.value = delegate.sharedSliderValue
        label.text = String(slider.value)
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        delegate.sharedSliderValue = slider.value
        label.text = String(slider.value)
    }
}
