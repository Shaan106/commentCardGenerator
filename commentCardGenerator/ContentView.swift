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

                Slider(value: $happinessInSubject, in: 0...10)
                    .padding()
                Text("Happiness is \(happinessInSubject, specifier: "%.1f")")
                
                Slider(value: $effortInSubject, in: 0...10)
                    .padding()
                Text("Effort is \(effortInSubject, specifier: "%.1f")")
                
                Slider(value: $progressInSubject, in: 0...10)
                    .padding()
                Text("Progress: \(progressInSubject, specifier: "%.1f")")
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
