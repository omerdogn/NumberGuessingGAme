//
//  ResultScreen.swift
//  NumberGuessingGame
//
//  Created by omer dogan on 26.07.2023.
//

import SwiftUI

struct ResultScreen: View {
    var result = false
    
    var body: some View {
        VStack(spacing: 100) {
            if result {
                Text("You are win!!!").font(.system(size: 36))
                Image("happy").resizable().frame(width: 128,height: 128)
            }else{
                Text("You are lost!!!").font(.system(size: 36))
                Image("sad").resizable().frame(width: 128,height: 128)
            }
           
        }
    }
}

struct ResultScreen_Previews: PreviewProvider {
    static var previews: some View {
        ResultScreen()
    }
}
