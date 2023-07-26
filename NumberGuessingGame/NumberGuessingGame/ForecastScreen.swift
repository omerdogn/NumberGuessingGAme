//
//  ForecastScreen.swift
//  NumberGuessingGame
//
//  Created by omer dogan on 26.07.2023.
//

import SwiftUI

struct ForecastScreen: View {
    @State private var switchToResultScrenn = false
    @State private var remainingLife = 5
    @State private var orientation = ""
    @State private var guessNumber = ""
    @State private var randomNumber = 0
    @State private var result = false

    var body: some View {
        VStack(spacing: 100) {
            Text("Remaining Life : \(remainingLife)")
                .font(.system(size: 36))
                .foregroundColor(.red)
            
            Text("Help : \(orientation)")
                .font(.system(size: 24))
            
            TextField("Forecast",text: $guessNumber)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(10)
            
            Button("To Guess"){
                remainingLife = remainingLife - 1
                if let guess = Int(guessNumber) {
                    if guess == randomNumber {
                        switchToResultScrenn = true
                        result = true
                        return
                    }
                    if guess > randomNumber {
                        orientation = "Decrease"
                    }
                    if guess < randomNumber {
                        orientation = "Increase"

                    }
                    if remainingLife == 0 {
                        switchToResultScrenn = true
                        result = false
                    }
                    
                }

                guessNumber = ""

            }.foregroundColor(.white)
                .frame(width: 250,height: 50)
                .background(.blue)
                .cornerRadius(10)
           
        }.navigationDestination(isPresented: $switchToResultScrenn){
            ResultScreen(result: result)
        }.onAppear{
            randomNumber = Int.random(in: 0...100)
            print("Random Number: \(randomNumber)")
            
            
            //interface reset
            remainingLife = 5
            orientation = ""
            guessNumber = ""
        }
    }
}

struct ForecastScreen_Previews: PreviewProvider {
    static var previews: some View {
        ForecastScreen()
    }
}
