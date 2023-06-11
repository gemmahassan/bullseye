//
//  RoundedViews.swift
//  Bullseye
//
//  Created by Gemma Hassan on 11/06/2023.
//

import SwiftUI

struct RoundedImageViewStroked: View {
  
  var systemName: String
  
  var body: some View {
    
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("TextColor"))
      .frame(width: 56.0, height: 56.0)
      .overlay(
        Circle()
          .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
      )
  }
}

struct RoundedImageViewFilled: View {
  
  var systemName: String
  
  var body: some View {
    
    Image(systemName: systemName)
      
      .font(.title)
      .frame(width: 56.0, height: 56.0)
      .foregroundColor(Color("ButtonFilledTextColor"))
      .background(
        Circle()
          .fill(Color("ButtonFilledBackgroundColor"))
      )
  }
}

struct PreviewView: View {
  
  var body: some View {
    
    VStack(spacing:10) {
      
      RoundedImageViewStroked(systemName: "list.dash")
      
      RoundedImageViewFilled(systemName: "arrow.counterclockwise")
    }
  }
}

struct RoundedViews_Previews: PreviewProvider {
  static var previews: some View {
    PreviewView()
    PreviewView()
      .preferredColorScheme(.dark)
  }
}
