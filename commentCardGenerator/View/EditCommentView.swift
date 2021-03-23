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
            
            TextEditor(text: $comment)
                .padding()
            
            Text( "\(SentimentAnalyser().analyse(input: comment))" )
        }
        .padding()
        
        
    }
}

struct EditCommentView_Previews: PreviewProvider {
    static var previews: some View {
        EditCommentView(comment: "Test text")
    }
}
