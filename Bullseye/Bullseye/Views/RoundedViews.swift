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
      .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
      .overlay(
        Circle()
          .strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth)
      )
  }
}

struct RoundedImageViewFilled: View {
  
  var systemName: String
  
  var body: some View {
    
    Image(systemName: systemName)
      .font(.title)
      .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
      .foregroundColor(Color("ButtonFilledTextColor"))
      .background(
        Circle()
          .fill(Color("ButtonFilledBackgroundColor"))
      )
  }
}

struct RoundedRectTextView: View {
  
  var text: String
  
  var body: some View {
    
    Text(text)
      .font(.title3)
      .bold()
      .kerning(-0.2)
      .foregroundColor(Color("TextColor"))
      .frame(width: Constants.General.roundedRectViewWidth, height: Constants.General.roundedRectViewHeight)
      .overlay(
        RoundedRectangle(cornerRadius: Constants.General.roundedRectCornerRadius)
          .strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth)
      )
  }
}

struct RoundedTextView: View {
  
  var text: String
  
  var body: some View {
    
    Text(text)
      .bold()
      .font(.title3)
      .foregroundColor(Color("TextColor"))
      .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
      .overlay(
        Circle()
          .strokeBorder(Color("LeaderboardRowColor"), lineWidth: Constants.General.strokeWidth)
      )
  }
}

struct PreviewView: View {
  
  var body: some View {
    
    VStack(spacing: 10) {
      
      RoundedImageViewStroked(systemName: "list.dash")
      
      RoundedImageViewFilled(systemName: "arrow.counterclockwise")
    
      RoundedRectTextView(text: "22")
      
      RoundedTextView(text: "1")
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
