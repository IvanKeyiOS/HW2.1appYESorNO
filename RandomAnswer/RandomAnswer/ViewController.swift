//
//  ViewController.swift
//  RandomAnswer
//
//  Created by Иван Курганский on 31/12/2024.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - Properties
    var countYes: Int = 0
    var countNo: Int = 0
    
    //MARK: - IBOutlets
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var answerButton: UIButton!
    @IBOutlet weak var countYesLabel: UILabel!
    @IBOutlet weak var countNoLabel: UILabel!
    
    //MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setButton()
        setLabel()
    }
    
    private func setButton() {
        answerButton.layer.shadowColor = UIColor.systemCyan.cgColor
        answerButton.layer.shadowOpacity = 10
    }
    
    private func setLabel() {
        answerLabel.text = ""
        answerLabel.shadowColor = UIColor.orange
        answerLabel.shadowOffset = CGSize(width: -2, height: -2)
        
        countNoLabel.text = "Count No: 0"
        countNoLabel.textColor = UIColor.black
        countNoLabel.shadowColor = UIColor.white
        countNoLabel.shadowOffset = CGSize(width: -1, height: -1)
        
        countYesLabel.text = "Count Yes: 0"
        countYesLabel.textColor = UIColor.white
        countYesLabel.shadowColor = UIColor.black
        countYesLabel.shadowOffset = CGSize(width: -1, height: -1)
        
    }
    
    private func count() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            if self.answerLabel.text == "YES" {
                self.countYes += 1
                self.countYesLabel.text = "Count Yes: " + String(self.countYes)
                print("countYes \(self.countYes)")
            } else {
                self.countNo += 1
                self.countNoLabel.text = "Count No: " + String(self.countNo)
                print("countNo \(self.countNo)")
            }
        }
    }
    private func labelColor() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.00002) {
            if self.answerLabel.text == "YES" {
                self.answerLabel.textColor = UIColor.white
            } else {
                self.answerLabel.textColor = UIColor.black
            }
        }
    }
   
    //MARK: - IBActions
    @IBAction func answerButtonAction(_ sender: Any) {
        let answer = Bool.random()
        count()
        labelColor()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.00001) {
            self.answerLabel.text = answer ? "YES" : "NO"
        }
    }
}
