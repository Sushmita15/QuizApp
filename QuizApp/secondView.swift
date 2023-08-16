//
//  secondView.swift
//  QuizApp
//
//  Created by scholar on 8/11/23.
//

import SwiftUI

struct secondView: View {
    @State private var showDetails = false
    @State private var wrongAns = false

    var body: some View {
        NavigationStack {
            Image("program")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 200.0)
            Text("Who was the first computer programmer?")
                .padding(.bottom)
            Button("a) Charles Babage"){
                showDetails.toggle()
            }
            .padding(.bottom)
        
            NavigationLink(destination: thirdView()) {
                Text("b) Ada Lovelace")
            }
            .padding(.bottom)
            Button("c) The Wright Brothers"){
                wrongAns.toggle()
            }
            if showDetails{
                Text("Wrong!")
                                }
            if wrongAns{
                Text("Wrong!")
                                }
        }
        .foregroundColor(/*@START_MENU_TOKEN@*/.purple/*@END_MENU_TOKEN@*/)
    }
}

struct secondView_Previews: PreviewProvider {
    static var previews: some View {
        secondView()
    }
}
