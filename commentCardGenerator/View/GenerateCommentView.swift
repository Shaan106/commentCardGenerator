//
//  GenerateCommentView.swift
//  commentCardGenerator
//
//  Created by Aasmaan Yadav on 16/03/21.
//

import SwiftUI

struct GenerateCommentView: View {
    
    var comment: Comment
    
    var body: some View {
        Text(comment.generateComment())
            .padding()
    }
}

struct GenerateCommentView_Previews: PreviewProvider {
    static var previews: some View {
        GenerateCommentView( comment: Comment(subjectInput: "Physics", happinessInput: 1, effortInput: 3, progressInput: 2) )
    }
}
