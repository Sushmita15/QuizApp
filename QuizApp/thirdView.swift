//
//  thirdView.swift
//  QuizApp
//
//  Created by scholar on 8/11/23.
//

import SwiftUI

struct thirdView: View {
    @State private var wrongAns = false
    @State private var showDetails = false
    var body: some View {
        NavigationStack {
            Image("barbie")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 200.0)
            Text("What is Barbie's real name?")
                .padding(.bottom)
            NavigationLink(destination: fourthView()) {
                VStack {
                    Button("a) Barbados"){
                        showDetails.toggle()
                    }
                    .padding(.bottom)
                    Button("b) Baruch"){
                        wrongAns.toggle()
                    }
                    .padding(.bottom)
                    NavigationLink(destination: fourthView()) {
                        Text("c) Barbara")
                    }
                    
                    
                }
               
            }
            if showDetails{
                Text("Wrong!")
                                }
            if wrongAns{
                Text("Wrong!")
                                }
            
        }
        .foregroundColor(.purple)
        .padding()
    }
}

struct thirdView_Previews: PreviewProvider {
    static var previews: some View {
        thirdView()
    }
}
