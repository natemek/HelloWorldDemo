//
//  ViewController.swift
//  HelloWorldDemo
//
//  Created by Natnael Mekonnen on 12/24/19.
//  Copyright © 2019 natemek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    var backgroundColor: UIColor!
    var oldText: String!
    var oldTextColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundColor = view.backgroundColor
        oldText = textLabel.text
        oldTextColor = textLabel.textColor
    }

    @IBAction func didTapButton(_ sender: Any) {
        textLabel.textColor = UIColor.orange
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.blue
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        if (textField.text == "") {
            textLabel.text = "Goodbye 👋"
        } else {
            textLabel.text = textField.text
        }
        textField.text = ""
        view.endEditing(true)
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = oldText
        textLabel.textColor = oldTextColor
        view.backgroundColor = backgroundColor
    }
    
}

