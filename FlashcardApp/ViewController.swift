//
//  ViewController.swift
//  FlashcardApp
//
//  Created by Benjamin Wu on 2/22/20.
//  Copyright © 2020 Benjamin Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapFlashcard(_ sender: Any) {
        questionLabel.isHidden = true 
    }
}

