//
//  CommenetGenerator.swift
//  commentCardGenerator
//
//  Created by Aasmaan Yadav on 16/03/21.
//

import Foundation

class Comment {
    
    let subject: String
    let happiness: Int
    let effort: Int
    let progress: Int
    
    let happinessDict = [0: "I have not particularly enjoyed the divs so far",
                         1: "The divs have been going fine",
                         2: "I have enjoyed the divs so far this half",
                         3: "The divs this half have been brilliant"]
    
    let effortDict =    [0: "I feel as if I have to start putting a lot more effort in the subject",
                         1: "I feel as if I need to put in a bit more effort in divs",
                         2: "I feel as if I am putting in effort in divs",
                         3: "I feel as if I have been putting a lot of effort in divs so far"]
    
    let progressDict =  [0: "poorly for me, I don't think I've made as much progress as I would have wanted to",
                         1: "well and I have learnt new things, although I think I could have learnt more",
                         2: "quite well, and I have learnt a lot of new things this half",
                         3: "pretty well, and I have learnt and understood a lot of new topics"]
    
    
    init(subjectInput: String, happinessInput: Double, effortInput: Double, progressInput: Double) {
        self.subject = subjectInput
        self.happiness = Int(happinessInput.rounded())
        self.effort = Int(effortInput.rounded())
        self.progress = Int(progressInput.rounded())
    }
    
    func happinessToSentence() -> String {
       return "h"
    }
    
    func effortToSentence() -> String {
       return "h"
    }
    
    func progressToSentence() -> String {
       return "h"
    }
    
    func generateComment() -> String {
        var finalComment: String = ""
        
        finalComment.append(self.subject)
        finalComment.append(" ")
        finalComment.append("this half has been going ")
        if let temp = progressDict[self.progress] {
            finalComment.append(temp)
        }
        finalComment.append(". ")
        if let temp = happinessDict[self.happiness] {
            finalComment.append(temp)
        }
        finalComment.append(", and ")
        if let temp = effortDict[self.effort] {
            finalComment.append(temp)
        }
        finalComment.append(".")
        
        return finalComment
    }
}

/*
General comment:
 
 [Subject] this half has been going [progress]. [happiness], and I feel as if I have been putting [effort].
*/
