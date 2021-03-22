//
//  ContentView.swift
//  commentCardGenerator
//
//  Created by Yadav, Aasmaan (SPH) on 15/03/2021.
//

import SwiftUI

struct ContentView: View {
    var subjects = ["Physics","Biology","Chemistry","Computer Science", "Greek"]
    @State private var selectedSubject = "Computer Science"
    
    @State private var happinessInSubject: Double = 0
    @State private var effortInSubject: Double = 0
    @State private var progressInSubject: Double = 0
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                Picker("Please choose a subject", selection: $selectedSubject) {
                    ForEach(subjects, id: \.self) {
                        Text($0)
                    }
                }
                Text("You have selected: \(selectedSubject)")
                
                HStack {
                    Text("Happiness is \(happinessInSubject, specifier: "%1.0f")")
                        .padding()
                    Slider(value: $happinessInSubject, in: 0...3)
                        .padding()
                }
                
                HStack {
                    Text("Effort is \(effortInSubject, specifier: "%1.0f         ")")
                        .padding()
                    Slider(value: $effortInSubject, in: 0...3)
                        .padding()
                }
                
                HStack {
                    Text("Progress: \(progressInSubject, specifier: "%1.0f      ")")
                        .padding()
                    Slider(value: $progressInSubject, in: 0...3)
                        .padding()
                }
                Spacer()
                    .frame(maxHeight: 75)
                
                NavigationLink(destination: GenerateCommentView(comment: Comment(subjectInput: selectedSubject, happinessInput: happinessInSubject, effortInput: effortInSubject, progressInput: progressInSubject) )) {
                        HStack  {
                            Image(systemName: "pencil.and.outline")
                            Text("Generate Comment")
                        }
                                }
                
                Spacer()
                    .frame(maxHeight: 75)
            }
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Comment Card Writer")
                        .font(.title)
                        .bold()
                }
            }
            .font(.headline)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
