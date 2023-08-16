//
//  fourthView.swift
//  QuizApp
//
//  Created by scholar on 8/11/23.
//

import SwiftUI

struct fourthView: View { @State private var wrongAns = false
    @State private var showDetails = false
    @State private var rightAns = false

    var body: some View {
        NavigationStack {
            Image("womenDay")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 200.0)
            Text("When is Internstional Women's day?")
                .padding(.bottom)
                VStack {
                    Button("a) May 8"){
                        showDetails.toggle()
                    }
                    .padding(.bottom)
                    Button("b) April 8"){
                        wrongAns.toggle()
                    }
                    .padding(.bottom)
                    
                    Button("b) March 8"){
                        rightAns.toggle()                   }
                    .padding(.bottom)
                    
                }
               
            
            if showDetails{
                Text("Wrong!")
                                }
            if wrongAns{
                Text("Wrong!")
                                }
            if rightAns{
                Text("Congratulations!!")
            }
            
        }
        .foregroundColor(.purple)
        .padding()
    }
}

struct fourthView_Previews: PreviewProvider {
    static var previews: some View {
        fourthView()
    }
}
