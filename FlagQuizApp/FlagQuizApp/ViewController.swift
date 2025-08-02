//
//  ViewController.swift
//  FlagQuizApp
//
//  Created by Heeyeon Yoon on 31/07/2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countryLabel: UILabel!
    
    @IBOutlet weak var pointsLabel: UILabel!
    
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    
    var rightAnswer: Int?
    var points = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answer1.layer.cornerRadius = 16
        answer1.layer.borderColor = UIColor.lightGray.cgColor
        answer1.layer.borderWidth = 2
        answer1.layer.masksToBounds = true
        
        answer2.layer.cornerRadius = 16
        answer2.layer.borderColor = UIColor.lightGray.cgColor
        answer2.layer.borderWidth = 2
        answer2.layer.masksToBounds = true
        
        answer3.layer.cornerRadius = 16
        answer3.layer.borderColor = UIColor.lightGray.cgColor
        answer3.layer.borderWidth = 2
        answer3.layer.masksToBounds = true
        
        loadQuestion()
    }
    
    @IBAction func answer1Action(_ sender: Any) {
        if rightAnswer == 0 {
            print("Correct!")
            points = points + 1
        } else {
            print("Wrong!")
            points = 0
        }
        
        answer1.isPointerInteractionEnabled = false
        answer2.isPointerInteractionEnabled = false
        answer3.isPointerInteractionEnabled = false
        
        pointsLabel.text = "Points: \(points)"
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
            self.loadQuestion()
            
            self.answer1.isPointerInteractionEnabled = true
            self.answer2.isPointerInteractionEnabled = true
            self.answer3.isPointerInteractionEnabled = true
        }
    }
    @IBAction func answer2Action(_ sender: Any) {
        if rightAnswer == 1 {
            print("Correct!")
            points = points + 1
        } else {
            print("Wrong!")
            points = 0
        }
        
        answer1.isPointerInteractionEnabled = false
        answer2.isPointerInteractionEnabled = false
        answer3.isPointerInteractionEnabled = false
        
        pointsLabel.text = "Points: \(points)"
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
            self.loadQuestion()
            
            self.answer1.isPointerInteractionEnabled = true
            self.answer2.isPointerInteractionEnabled = true
            self.answer3.isPointerInteractionEnabled = true
        }
    }
    @IBAction func answer3Action(_ sender: Any) {
        if rightAnswer == 2 {
            print("Correct!")
            points = points + 1
        } else {
            print("Wrong!")
            points = 0
        }
        
        answer1.isPointerInteractionEnabled = false
        answer2.isPointerInteractionEnabled = false
        answer3.isPointerInteractionEnabled = false
        
        pointsLabel.text = "Points: \(points)"
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
            self.loadQuestion()
            
            self.answer1.isPointerInteractionEnabled = true
            self.answer2.isPointerInteractionEnabled = true
            self.answer3.isPointerInteractionEnabled = true
        }
    }
    
    func loadQuestion() {
        let countries = [
            "Argentina",
            "Austria",
            "Brazil",
            "Bulgaria",
            "Canada",
            "Germany",
            "Russia",
            "USA"
        ].shuffled()
        
        answer1.setImage(UIImage(named: countries[0]), for: .normal)
        answer2.setImage(UIImage(named: countries[1]), for: .normal)
        answer3.setImage(UIImage(named: countries[2]), for: .normal)
        
        rightAnswer = Int.random(in: 0...2)
        
        countryLabel.text = countries[rightAnswer!]
    }
}
