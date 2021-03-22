//
//  GenerateCommentView.swift
//  commentCardGenerator
//
//  Created by Aasmaan Yadav on 16/03/21.
//

import SwiftUI

struct GenerateCommentView: View {
    
    let pasteboard = UIPasteboard.general
    var comment: Comment
    
    var body: some View {
        VStack {
            
            Text(comment.generateComment())
                .padding()
                .frame(width: 350)
            
            Button(action: {
                pasteboard.string = comment.generateComment()
            }) {
                HStack(spacing: 10) {
                    Image(systemName: "doc.on.clipboard")
                    Text("Copy Generated Comment")
                }
            }
            .foregroundColor(Color.blue)
            .cornerRadius(.infinity)
        
        }
        
    }
}

struct GenerateCommentView_Previews: PreviewProvider {
    static var previews: some View {
        GenerateCommentView( comment: Comment(subjectInput: "Physics", happinessInput: 1, effortInput: 3, progressInput: 2) )
    }
}
