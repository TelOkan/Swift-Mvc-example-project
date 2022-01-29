//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    let stories = [Story(
        title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
        choice1: "I'll hop in. Thanks for the help!", choice1Destination: 2,
        choice2: "Better ask him if he's a murderer first.", choice2Destination: 1
    ),
    Story(
        title: "He nods slowly, unfazed by the question.",
        choice1: "At least he's honest. I'll climb in.", choice1Destination: 2,
        choice2: "Wait, I know how to change a tire.", choice2Destination: 3
    ),
    Story(
        title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
        choice1: "I love Elton John! Hand him the cassette tape.", choice1Destination: 5,
        choice2: "It's him or me! You take the knife and stab him.", choice2Destination: 4
    ),
    Story(
        title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
        choice1: "it doesn't matter now!", choice1Destination: 2,
        choice2: "this is so sad.", choice2Destination: 4
    ),
    Story(
        title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
        choice1: "a murderer must always be cold blooded", choice1Destination: 5,
        choice2: "I don't want to think about it", choice2Destination: 3
    ),
    Story(
        title: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
        choice1: "pier is a good option.", choice1Destination: 1,
        choice2: "i am undecided.", choice2Destination: 1
    )
]
    
  var storiesNumber = 0
    
    func getStories() -> String { //  to get stories to labelview
       return stories[storiesNumber].title
    }

    func getChoiceFirst() -> String{ // to get choices to buttons
        return stories[storiesNumber].choice1
    }
    func getChoiceSecond () -> String{
        return stories[storiesNumber].choice2
    }

    mutating func checkAnswer(_ userAnswer : String ) { //here will be coming user answer to decide that what will happen at next step.
        
        if (userAnswer == stories[storiesNumber].choice1){ //if user answer uquals my choce1 and then i will assing destination number into story number
            storiesNumber = (stories[storiesNumber].choice1Destination )
        }
        else if (userAnswer == stories[storiesNumber].choice2){//if user answer uquals my choce2 and then i will assing destination number into story number
            storiesNumber = (stories[storiesNumber].choice2Destination )
        }
    }
}
