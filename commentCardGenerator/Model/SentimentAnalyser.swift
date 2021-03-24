//
//  SentimentAnalyser.swift
//  commentCardGenerator
//
//  Created by Aasmaan Yadav on 23/03/21.
//

import Foundation
import NaturalLanguage

class SentimentAnalyser  {
    
    func analyse(input: String) -> Double {
        
        // feed it into the NaturalLanguage framework
        let tagger = NLTagger(tagSchemes: [.sentimentScore])
        tagger.string = input

        // ask for the results
        let (sentiment, _) = tagger.tag(at: input.startIndex, unit: .paragraph, scheme: .sentimentScore)

        // read the sentiment back and print it
        let score = Double(sentiment?.rawValue ?? "0") ?? 0
        return score
        
    }
    
    func maybeBetterAnalyser(input: String) -> String {
        let tagger = NLTagger(tagSchemes: [.sentimentScore])
        tagger.string = input
        let (sentimentScoreTag, _) = tagger.tag(at: input.startIndex, unit: .paragraph, scheme: .sentimentScore)
        let sentimentScore = sentimentScoreTag?.rawValue ?? "0"
        return sentimentScore
    }
}
