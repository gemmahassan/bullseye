//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Gemma Hassan on 25/05/2023.
//

import XCTest
@testable import Bullseye

final class BullseyeTests: XCTestCase {
  
  var game: Game!
  
  override func setUpWithError() throws {
    
    game = Game()
  }
  
  override func tearDownWithError() throws {
    
    game = nil
  }
  
  func testScorePositive() throws {
    
    var guess = game.target + 5
    var score = game.points(sliderValue: guess)
    
    XCTAssertEqual(score, 95)
  }
  
  func testScoreNegative() throws {
    
    var guess = game.target - 5
    var score = game.points(sliderValue: guess)
    
    XCTAssertEqual(score, 95)
  }
}
