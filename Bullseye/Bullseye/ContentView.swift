//
//  ContentView.swift
//  Bullseye
//
//  Created by Gemma Hassan on 23/05/2023.
//

import SwiftUI

struct ContentView: View {
  
  @State private var alertIsVisible: Bool = false
  @State private var sliderValue: Double = 50.0
  
  var body: some View {
    VStack {
      
      Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
        .bold()
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
        .kerning(2.0)
      
      Text("89")
        .fontWeight(.black)
        .font(.largeTitle)
        .kerning(-1.0)
      
      HStack {
        Text("1")
          .bold()
        
        Slider(value: $sliderValue,
               in: 1.0...100.0)
        
        Text("100")
          .bold()
      }
      
      Button("Hit me") {
        alertIsVisible = true
      }.alert(
        "Hello there!",
        isPresented: $alertIsVisible,
        actions: {
          Button("Awesome") {
            print("Alert closed")
          }
        },
        message: {
          Text("This is my first alert")
        }
      )
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
