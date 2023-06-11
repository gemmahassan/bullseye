//
//  SliderView.swift
//  Bullseye
//
//  Created by Gemma Hassan on 11/06/2023.
//

import SwiftUI

struct SliderView: View {
  
  var sliderValue: Double
  
  var body: some View {
    
    Slider(value: sliderValue,
           in: 1.0...100.0)
  }
}

//struct SliderView_Previews: PreviewProvider {
//  static var previews: some View {
//    SliderView(sliderValue: 75.0)
//  }
//}
