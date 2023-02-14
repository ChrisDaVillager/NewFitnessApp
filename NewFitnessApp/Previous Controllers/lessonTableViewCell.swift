//
//  LessonViewController.swift
//  NewFitnessApp
//
//  Created by Chris Puccetti on 1/24/23.
//

import UIKit

class lessonTableViewCell: UITableViewCell {

    @IBOutlet weak var typeTitle: UILabel!
    @IBOutlet weak var secondaryTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        typeTitle.textColor = .darkGray
        secondaryTitle.textColor = .darkGray
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
