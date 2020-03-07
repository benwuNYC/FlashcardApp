//
//  CreationViewController.swift
//  FlashcardApp
//
//  Created by Benjamin Wu on 3/6/20.
//  Copyright © 2020 Benjamin Wu. All rights reserved.
//

import UIKit

class CreationViewController: UIViewController {
    
    var flashcardsController: ViewController!
    
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

    @IBAction func didTapOnCancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    func updateFlashcard (question: String, answer: String ){
    }
    
    
    @IBAction func didTapOnDone( sender : Any){
        
        let questionText = questionTextField.text
        
        let answerText = answerTextField.text
        
        flashcardsController.updateFlashcard(question: questionText!, answer: answerText!)

        dismiss(animated: true)
    }
    
    override func prepare(for segue: UIStoryBoardSegue, sender: Any?){
        
        let navigationController = segue.destination as! UI NavigationController
        
        let creationController = = navigationController.topViewController as! CreationViewController
        
        creationController.flashcardsController = self 

    }
    
}
