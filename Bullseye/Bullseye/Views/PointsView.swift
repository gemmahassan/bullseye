//
//  PointsView.swift
//  Bullseye
//
//  Created by Gemma Hassan on 14/06/2023.
//

import SwiftUI

struct PointsView: View {
  
  @Binding var game: Game
  
  var body: some View {
    
    VStack(spacing: 10) {
      
      InstructionText(text: "The slider's value is")
      BigNumberText(text: "99")
      BodyText(text: "You scored \(game.score) points\n🎉🎉🎉")
      
      Button {
        game.startNewRound(points: game.score)
      } label: {
        ButtonText(text: "Start New Round")
      }
    }
    .padding()
    .frame(maxWidth: 300)
    .background(Color("BackgroundColor"))
    .cornerRadius(21)
    .shadow(radius: 10, x: 5, y: 5)
  }
}

struct PointsView_Previews: PreviewProvider {
  static var previews: some View {
    PointsView(game: .constant(Game()))
    PointsView(game: .constant(Game()))
      .preferredColorScheme(.dark)
      .previewInterfaceOrientation(.landscapeLeft)
  }
}
