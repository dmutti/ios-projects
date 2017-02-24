//
//  ViewController.swift
//  Hello World
//
//  Created by Danilo Mutti on 02/23/17.
//  Copyright © 2017 Danilo Mutti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bgImageView: UIImageView!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var goodbyeButton: UIButton!
    @IBOutlet weak var welcomeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bgImageView.isHidden = true
        logoImageView.isHidden = true
        goodbyeButton.isHidden = true
        welcomeButton.isHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func welcomeBtnWasPressed(_ sender: Any) {
        bgImageView.isHidden = false
        logoImageView.isHidden = false
        welcomeButton.isHidden = true
        goodbyeButton.isHidden = false
    }
    
    @IBAction func goodbyeButtonWasPressed(_ sender: Any) {
        bgImageView.isHidden = true
        logoImageView.isHidden = true
        welcomeButton.isHidden = false
        goodbyeButton.isHidden = true
    }
    
}

