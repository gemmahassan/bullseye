//
//  BackgroundView.swift
//  Bullseye
//
//  Created by Gemma Hassan on 11/06/2023.
//

import SwiftUI

struct BackgroundView: View {
  
  @Binding var game: Game
  
  var body: some View {
    
    VStack {
      
      TopView(game: $game)
      
      Spacer()
      
      BottomView(game: $game)
    }
    .padding()
    .background(
      RingsView()
    )
  }
}

struct TopView: View {
  
  @Binding var game: Game
  
  var body: some View {
    
    HStack {
      
      Button {
        game.restart()
      } label: {
        RoundedImageViewStroked(systemName: "arrow.counterclockwise")
      }

      Spacer()
      
      RoundedImageViewFilled(systemName: "list.dash")
    }
  }
}

struct NumberView: View {
  
  var title: String
  var text: String
  
  var body: some View {
    
    VStack {
      
      LabelTextView(title: title)
      
      RoundedRectTextView(text: text)
    }
  }
}

struct BottomView: View {
  
  @Binding var game: Game
  
  var body: some View {
    
    HStack {
      
      NumberView(title: "Score", text: String(game.score))
      
      Spacer()
      
      NumberView(title: "Round", text: String(game.round))
    }
  }
}

struct RingsView: View {
  
  var body: some View {
    
    ZStack {
      
      Color("BackgroundColor")
        .ignoresSafeArea()
      
      ForEach(1..<6) { ring in
        
        let size = CGFloat(ring * 100)
        
        Circle()
          .stroke(lineWidth: 20)
          .fill(RadialGradient(
            gradient: Gradient(colors: [Color("RingColor").opacity(0.8 * 0.3),
                                        Color("RingColor").opacity(0)]),
            center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
            startRadius: 100,
            endRadius: 300))
          .frame(width: size, height: size)
      }
    }
  }
}

struct BackgroundView_Previews: PreviewProvider {
  static var previews: some View {
    BackgroundView(game: .constant(Game()))
  }
}
