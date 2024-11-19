//
//  FinalResultViewController.swift
//  Week6
//
//  Created by Chidera Anayo Mbachi on 2024-11-15.
//

import UIKit

class FinalResultViewController: UIViewController {
    
    var score: Int?
    var totalQuestions: Int? = QuestionManager.shared.questions.count

    @IBOutlet weak var scoreLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let score = score, let totalQuestions = totalQuestions {
                    scoreLabel.text = "Score: \(score)/\(totalQuestions)     Percentage: \(Double(score)/Double(totalQuestions)*100)"
                } else {
                    scoreLabel.text = "Error: Missing score or total questions"
                }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
