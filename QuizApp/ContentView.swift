//
//  ContentView.swift
//  QuizApp
//
//  Created by scholar on 8/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: secondView()) {
                NavigationStack {
                    Image("xiaoCloud")
                    Text("Click to start the quiz")
                        .foregroundColor(Color.purple)
                    
                }
            }
            
            .padding()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
