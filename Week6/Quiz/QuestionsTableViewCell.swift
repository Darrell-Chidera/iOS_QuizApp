//
//  FinalResultViewController.swift
//  Week6
//
//  Created by Chidera Anayo Mbachi on 2024-11-15.
//

import UIKit

class QuestionsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var questionText: UILabel!
    
    @IBOutlet weak var answer1: UILabel!
    
    @IBOutlet weak var answer2: UILabel!
    
    @IBOutlet weak var answer3: UILabel!
    
    @IBOutlet weak var answer4: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
