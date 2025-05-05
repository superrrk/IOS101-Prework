//
//  ViewController.swift
//  CodePathV1
//
//  Created by Kelly Truong on 5/4/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func changeText(_ sender: UIButton) {
        sender.setTitle("Hi Kelly 👋", for: .normal)
    }
    
    @IBAction func changeButtonColor(_ sender: UIButton) {
        let newColor = changeColor()
                UIView.animate(withDuration: 0.3) {
                    sender.backgroundColor = newColor
                }
    }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        UIView.animate(withDuration: 0.3) {
                    self.view.backgroundColor = randomColor
                }
    }
    
    func changeColor() -> UIColor {
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)

            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
    
}

