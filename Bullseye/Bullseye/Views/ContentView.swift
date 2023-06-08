//
//  ContentView.swift
//  Bullseye
//
//  Created by Gemma Hassan on 23/05/2023.
//

import SwiftUI

struct ContentView: View {
  
  @State private var alertIsVisible = false
  @State private var sliderValue = 50.0
  @State private var game = Game()
  
  var body: some View {
    
    ZStack {
      
      Color("BackgroundColor")
        .edgesIgnoringSafeArea(.all)
      
      VStack {
        
        Text("🎯🎯🎯\nPut the Bullseye as close as you can to".uppercased())
          .foregroundColor(Color("TextColor"))
          .bold()
          .multilineTextAlignment(.center)
          .lineSpacing(4.0)
          .font(.footnote)
          .kerning(2.0)
          .padding(.horizontal, 30)
        
        Text(String(game.target))
          .foregroundColor(Color("TextColor"))
          .fontWeight(.black)
          .font(.largeTitle)
          .kerning(-1.0)
        
        HStack {
          Text("1")
            .foregroundColor(Color("TextColor"))
            .bold()
          
          Slider(value: $sliderValue,
                 in: 1.0...100.0)
          
          Text("100")
            .foregroundColor(Color("TextColor"))
            .bold()
        }
        .padding()
        
        Button("Hit me".uppercased()) {
          alertIsVisible = true
        }
        .padding(20.0)
        .background(
          ZStack {
            Color("ButtonColor")
            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
          }
          
        )
        .foregroundColor(.white)
        .cornerRadius(21.0)
        .bold()
        .font(.title3)
        .alert(
          "Hello there!",
          isPresented: $alertIsVisible,
          actions: {
            Button("Awesome") {
              print("Alert closed")
            }
          },
          message: {
            let roundedValue = Int(sliderValue.rounded())
            Text("""
                  The slider's value is \(roundedValue).
                  You scored \(game.points(sliderValue: roundedValue)) this round.
                 """)
          }
        )
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
