//
//  ContentView.swift
//  NumberGuessingGame
//
//  Created by omer dogan on 26.07.2023.
//

import SwiftUI

struct HomePage: View {
    @State private var switchToForecastScrenn = false
    var body: some View {
        NavigationStack {
            VStack(spacing: 100) {
                Text("Forecast Game").font(.system(size: 36))
                Image("dice").resizable().frame(width: 128,height: 128)
                Button("Start The Game"){
                    switchToForecastScrenn = true
                }.foregroundColor(.white)
                    .frame(width: 250,height: 50)
                    .background(.blue)
                    .cornerRadius(10)
               
            }.navigationDestination(isPresented: $switchToForecastScrenn){
                ForecastScreen()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
