//
//  ContentView.swift
//  aboutMe
//
//  Created by Scholar on 6/23/23.
//

import SwiftUI

struct ContentView: View {
    @State private var funFact = "I'm a somphmore at Borah High School. I also swim for Borah and do tennis at Borah"
    @State private var moreFunFact = "I play french horn for the Boise Philharmonic Youth Orchestra and have been playing piano for 10 years"
    var body: some View {
        ZStack {
            Color(.systemCyan)
                .ignoresSafeArea()
            VStack (alignment: .leading, spacing: 20.0) {
                Image("picOfMe")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                HStack {
                    Text("Phoebe Mason")
                        .font(.title)
                        .multilineTextAlignment(.leading)
                    Button("More Fun Facts") {
                        funFact = moreFunFact
                        moreFunFact = "I do swim team over summer and for Borah High School along with tennis."
                        
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                }
                Text(funFact)
                    .font(.title2)
            }
            .padding()
            .background(Rectangle() .foregroundColor( .white))
            .cornerRadius(15)
            .shadow(radius: 15)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
