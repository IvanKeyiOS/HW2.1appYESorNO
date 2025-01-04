//
//  ViewController.swift
//  RandomAnswer
//
//  Created by Иван Курганский on 31/12/2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var answerButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        answerButton.layer.shadowColor = UIColor.systemCyan.cgColor
        answerButton.layer.shadowOpacity = 10
        //        answerButton.setTitle("Ask", for: .normal)
        //        answerButton.backgroundColor = UIColor.systemPink
        //        answerButton.layer.cornerRadius = 16
    }
    
    @IBAction func answerButtonAction(_ sender: Any) {
        let answer = Bool.random()
        answerLabel.text = ""
        answerLabel.textColor = UIColor.white
        answerLabel.shadowColor = UIColor.orange
        answerLabel.shadowOffset = CGSize(width: -2, height: -2)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.answerLabel.text = answer ? "YES" : "NO"
        }
    }
}
