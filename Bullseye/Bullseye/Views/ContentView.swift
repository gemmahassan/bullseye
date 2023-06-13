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
      
      BackgroundView(game: $game)
      
      VStack {
        
        InstructionsView(game: $game)
        
        SliderView(sliderValue: $sliderValue)
        
        HitMeButton(alertIsVisible: $alertIsVisible,
                    sliderValue: $sliderValue,
                    game: $game)
      }
    }
  }
}

struct InstructionsView: View {
  
  @Binding var game: Game
  
  var body: some View {
    
    VStack {
      
      InstructionText(text: "🎯🎯🎯\nPut the Bullseye as close as you can to")
        .padding(.horizontal, 30)
      
      BigNumberText(text: String(game.target))
    }
  }
}

struct SliderView: View {
  
  @Binding var sliderValue: Double
  
  var body: some View {
    
    HStack {
      
      SliderLabelText(text: "1")
        .frame(width: 35.0)
      
      Slider(value: $sliderValue,
             in: 1.0...100.0)
      
      SliderLabelText(text: "100")
        .frame(width: 35.0)
    }
    .padding()
  }
}

struct HitMeButton: View {
  
  @Binding var alertIsVisible: Bool
  @Binding var sliderValue: Double
  @Binding var game: Game
  
  var body: some View {
    
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
    .overlay(
      RoundedRectangle(cornerRadius: 21)
        .stroke(Color.white, lineWidth: 2.0 )
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
          game.startNewRound(points: game.points(sliderValue: Int(sliderValue)))
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

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
