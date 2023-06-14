//
//  TextViews.swift
//  Bullseye
//
//  Created by Gemma Hassan on 08/06/2023.
//

import SwiftUI

struct InstructionText: View {
  
  var text: String
  
  var body: some View {
    
    Text(text.uppercased())
      .foregroundColor(Color("TextColor"))
      .bold()
      .multilineTextAlignment(.center)
      .lineSpacing(4.0)
      .font(.footnote)
      .kerning(2.0)
  }
}

struct BigNumberText: View {
  
  var text: String
  
  var body: some View {
    
    Text(text)
      .foregroundColor(Color("TextColor"))
      .fontWeight(.black)
      .font(.largeTitle)
      .kerning(-1.0)
  }
}

struct SliderLabelText: View {
  
  var text: String
  
  var body: some View {
    
    Text(text)
      .foregroundColor(Color("TextColor"))
      .bold()
  }
}

struct LabelTextView: View {
  
  var title: String
  
  var body: some View {
    
    Text(title.uppercased())
      .foregroundColor(Color("TextColor"))
      .font(.caption)
      .bold()
      .kerning(1.5)
  }
}

struct BodyText: View {
  
  var text: String
  
  var body: some View {
    
    Text(text)
      .font(.subheadline)
      .fontWeight(.semibold)
      .multilineTextAlignment(.center)
      .foregroundColor(Color("TextColor"))
      .lineSpacing(12)
  }
}

struct ButtonText: View {
  
  var text: String
  
  var body: some View {
    
    Text(text)
      .bold()
      .padding()
      .frame(maxWidth: .infinity)
      .background(
        Color.accentColor
      )
      .foregroundColor(Color.white)
      .cornerRadius(12)
  }
}


struct ScoreText: View {
  
  var score: Int
  
  var body: some View {
    
    Text(String(score))
      .bold()
      .font(.title3)
      .kerning(-0.2)
      .foregroundColor(Color("TextColor"))
  }
}

struct DateText: View {
  
  var date: Date
  
  var body: some View {
    
    Text(date, style: .time)
      .bold()
      .font(.title3)
      .kerning(-0.2)
      .foregroundColor(Color("TextColor"))
  }
}

struct TextViews_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      InstructionText(text: "Instructions")
      BigNumberText(text: String(56))
      SliderLabelText(text: "1")
      LabelTextView(title: "hello")
      BodyText(text: "You scored 200 points\n🤯🤯🤯")
      ButtonText(text: "Start New Round")
      ScoreText(score: 459)
      DateText(date: Date())
    }
    .padding()
  }
}
