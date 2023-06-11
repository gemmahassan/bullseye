//
//  ButtonView.swift
//  Bullseye
//
//  Created by Gemma Hassan on 11/06/2023.
//

import SwiftUI

struct ButtonView: View {
  
  var text: String
  var alertIsVisible: Bool
  
  var body: some View {
    
    Button(text.uppercased()) {
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
  }
}

struct ButtonView_Previews: PreviewProvider {
  static var previews: some View {
    ButtonView()
  }
}
