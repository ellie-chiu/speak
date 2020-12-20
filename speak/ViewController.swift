//
//  ViewController.swift
//  speak
//
//  Created by TINA on 2020/12/20.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var Text: UITextView!
    @IBOutlet weak var ToneLabel: UILabel!
    @IBOutlet weak var ToneSlider: UISlider!
    @IBOutlet weak var Call: UIButton!
    @IBOutlet weak var T025: UILabel!
    @IBOutlet weak var T075: UILabel!
    @IBOutlet weak var T1: UILabel!
    @IBOutlet weak var T125: UILabel!
    @IBOutlet weak var T175: UILabel!
    @IBOutlet weak var speed: UILabel!
    @IBOutlet weak var speedslider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //set speed value
    
    
    //SET tone and speed
    @IBAction func CallNow(_ sender: Any) {
        let utterance = AVSpeechUtterance(string: Text.text!)
        let synthesizer = AVSpeechSynthesizer()
        utterance.rate = speedslider.value
        utterance.pitchMultiplier = ToneSlider.value
        synthesizer.speak(utterance)
    }
    
    @IBAction func speedtext(_ sender: UISlider) {
        speed.text = String(format: "%.1f", sender.value)
    }
    
    @IBAction func ChangeTone(_ sender: Any) {
        if ToneSlider.value < 1.25 && ToneSlider.value > 0.75{
            T1.alpha = 1
            T025.alpha = 0.4
            T075.alpha = 0.4
            T125.alpha = 0.4
            T175.alpha = 0.4
        }
        else if ToneSlider.value <= 0.75 && ToneSlider.value > 0.25{
            T075.alpha = 1
            T125.alpha = 0.4
            T025.alpha = 0.4
            T1.alpha = 0.4
            T175.alpha = 0.4
        }
        else if ToneSlider.value <= 0.25 {
            T025.alpha = 1
            T075.alpha = 0.4
            T175.alpha = 0.4
            T1.alpha = 0.4
            T125.alpha = 0.4
        }
        else if ToneSlider.value < 1.75 && ToneSlider.value >= 1.25 {
            T125.alpha = 1
            T025.alpha = 0.4
            T075.alpha = 0.4
            T1.alpha = 0.4
            T175.alpha = 0.4
        }
        else if ToneSlider.value >= 1.75 {
            T175.alpha = 1
            T025.alpha = 0.4
            T075.alpha = 0.4
            T1.alpha = 0.4
            T125.alpha = 0.4
        }
    }
    
}

