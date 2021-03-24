//
//  EditCommentView.swift
//  commentCardGenerator
//
//  Created by Aasmaan Yadav on 23/03/21.
//

import SwiftUI

struct EditCommentView: View {
    @State var comment: String
    let pasteboard = UIPasteboard.general
    
    var body: some View {
        VStack(alignment: .leading) {
            Button(action: {
                pasteboard.string = comment
            }) {
                HStack(spacing: 10) {
                    Image(systemName: "doc.on.clipboard")
                    Text("Copy Edited Comment")
                }
            }
            .padding()

            
            ZStack(alignment: .leading) {
                
                VStack {
                    if comment.isEmpty {
                            Text("hello this is the test of the placeholder text thing")
                                .opacity(0.4)
                                .padding(.top, 23)
                                .padding(.leading, 23)
                            Spacer()
                        }
                }
                

                
                TextEditor(text: $comment)
                    .opacity(comment.isEmpty ? 0.4 : 1)
                    .padding()
            }
            
            
            Text( "Sentiment analyser 1 score: \(SentimentAnalyser().analyse(input: comment))" )
            
            Text( "Sentiment analyser 2 score: \(SentimentAnalyser().maybeBetterAnalyser(input: comment))" )
            
            
        }
        .padding()
        
        
    }
}

struct EditCommentView_Previews: PreviewProvider {
    static var previews: some View {
        EditCommentView(comment: "")
    }
}
