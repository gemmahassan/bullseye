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

struct TextViews_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      InstructionText(text: "Instructions")
      BigNumberText(text: String(56))
      SliderLabelText(text: "1")
      LabelTextView(title: "hello")
    }
  }
}
