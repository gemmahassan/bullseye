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
    
    let guess = game.target + 5
    let score = game.points(sliderValue: guess)
    
    XCTAssertEqual(score, 95)
  }
  
  func testScoreNegative() throws {
    
    let guess = game.target - 5
    let score = game.points(sliderValue: guess)
    
    XCTAssertEqual(score, 95)
  }
  
  func testScoreExact() throws {
    
    let guess = game.target
    let score = game.points(sliderValue: guess)
    
    XCTAssertEqual(score, 200)
  }
  
  func testScoreClose() throws {
    
    let guess = game.target + 2
    let score = game.points(sliderValue: guess)
    
    XCTAssertEqual(score, 98 + 50)
  }
  
  func testNewRound() throws {
    
    game.startNewRound(points: 100)
    XCTAssertEqual(game.score, 100)
    XCTAssertEqual(game.round, 2)
  }
  
  func testRestart() throws {
    
    game.startNewRound(points: 100)
    XCTAssertNotEqual(game.score, 0)
    XCTAssertNotEqual(game.round, 1)
    
    game.restart()
    XCTAssertEqual(game.score, 0)
    XCTAssertEqual(game.round, 1)
  }
}
