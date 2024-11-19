//
//  ViewController.swift
//  Week6
//
//  Created by Chidera Anayo Mbachi on 2024-11-15.
//

import UIKit

class ViewController: UIViewController {

    var questionList = QuestionManager.shared

        @IBOutlet weak var startQuiz: UIButton!
        override func viewDidLoad() {
            super.viewDidLoad()
        }
        
        override func viewWillAppear(_ animated: Bool) {
                super.viewWillAppear(animated)
                if questionList.questions.isEmpty {
                    startQuiz.isEnabled = false
                } else {
                    startQuiz.isEnabled = true
                }
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

