//
//  Shapes.swift
//  Bullseye
//
//  Created by Gemma Hassan on 11/06/2023.
//

import SwiftUI

struct Shapes: View {
  
  var body: some View {
    
    VStack {
      
      Circle()
//        .fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
        .strokeBorder(Color.blue, lineWidth: 20)
        .frame(width: 200, height: 100)
        .background(Color.green)
    }
  }
}

struct Shapes_Previews: PreviewProvider {
  static var previews: some View {
    Shapes()
  }
}
