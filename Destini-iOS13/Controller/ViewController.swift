//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    var story = StoryBrain ()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getInformation()
        
     
    }

    @IBAction func anyButtonChosen(_ sender: UIButton) {
        let userAnswer = sender.currentTitle! //to get button text which is user answer.
        story.checkAnswer(userAnswer) //we sent user answer to model layer.
        getInformation()
    }
    
   func getInformation(){ // to get All informations into view layer
       labelView.text = story.getStories()
       choice1.setTitle(story.getChoiceFirst() , for: .normal)
       choice2.setTitle(story.getChoiceSecond(), for: .normal)
       
    }
    
}

