//
//  ViewController.swift
//  SelfSizingTextView
//
//  Created by Peter Edmonston on 4/23/17.
//  Copyright © 2017 com.peteredmonston. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textView: SelfSizingTextView!
    @IBOutlet var heightConstraint: NSLayoutConstraint!
    @IBOutlet var shortTextView: UITextView!
    @IBOutlet var longTextView: UITextView!
    @IBOutlet weak var scrollSwitch: UISwitch!
    @IBOutlet weak var heightSwitch: UISwitch!
    @IBOutlet weak var lengthSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.attributedText = shortTextView.attributedText
    }
    
    @IBAction func constraintsSwitchChanged(sender: Any) {
        UIView.animate(withDuration: 0.25) {
            self.heightConstraint.isActive = self.heightSwitch.isOn
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func scrollingSwitchChanged(sender: Any) {
        textView.isScrollEnabled = scrollSwitch.isOn
    }
    
    @IBAction func textLengthSwitchChanged(sender: Any) {
        let newText = lengthSwitch.isOn ? shortTextView.attributedText : longTextView.attributedText
        UIView.animate(withDuration: 0.25) {
            self.textView.attributedText = newText
            self.view.layoutIfNeeded()
        }
    }
}
