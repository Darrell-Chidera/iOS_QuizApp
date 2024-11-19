//
//  FinalResultViewController.swift
//  Week6
//
//  Created by Chidera Anayo Mbachi on 2024-11-15.
//

import Foundation

class Questions {
    var questionData: String = ""
    
    var answers: [Answer]
    
    init(questionData: String, answers: [Answer]) {
        self.questionData = questionData
        self.answers = answers
    }
    
    func shuffleAnswers() {
        answers.shuffle()
    }
    
    func isAnswerCorrect(selectedAnswer: Answer) -> Bool {
           return selectedAnswer.isCorrect
    }
}

class Answer {
    var text: String = ""
    var isCorrect: Bool
    
    init(text: String, isCorrect: Bool) {
        self.text = text
        self.isCorrect = isCorrect
    }
}


class QuestionManager {
   public static var shared = QuestionManager()
    
    var questions: [Questions] = []

    
    func addNewQuestion(q: Questions){
        questions.append(q)
    }
    
    func deleteContact(qIndex : Int){
        questions.remove(at: qIndex)
    }
    
    func shuffleAllAnswers() {
            for question in questions {
                question.shuffleAnswers()
            }
    }
    
}
