//
//  CalculationTests.swift
//  CalculatorTests
//
//  Created by student on 10/10/2023.
//

import XCTest
@testable import Calculator
final class CalculationTests: XCTestCase {
    
    func testAddition()
    {
        var a=13
        var b=19
        var result=Calculations().dodawanie(a: a, b: b)
        XCTAssert(result == 32)
        a = -2
        b = 3
        result=Calculations().dodawanie(a: a, b: b)
        XCTAssert(result == 1)
        a = -1
        b = -1
        result=Calculations().dodawanie(a: a, b: b)
        XCTAssert(result == -2)
    }
    func testSubstractions()
    {
        var a=19
        var b=13
        var result=Calculations().odejmowanie(a: a, b: b)
        XCTAssert(result == 6)
        a = -2
        b = 3
        result=Calculations().odejmowanie(a: a, b: b)
        XCTAssert(result == -5)
        a = 24
        b = 16
        result=Calculations().odejmowanie(a: a, b: b)
        XCTAssert(result == 8)
    }
    func testMultiple()
    {
        var a=3
        var b=2
        var result=Calculations().mnozenie(a: a, b: b)
        XCTAssert(result == 6)
        a = -2
        b = 3
        result=Calculations().mnozenie(a: a, b: b)
        XCTAssert(result == -6)
        a = -1
        b = -1
        result=Calculations().mnozenie(a: a, b: b)
        XCTAssert(result == 1)
    }
    func testDiv()
    {
        var a=8
        var b=2
        var result=Calculations().dzielenie(a: a, b: b)
        XCTAssert(result == 4)
        a = -4
        b = 2
        result=Calculations().dzielenie(a: a, b: b)
        XCTAssert(result == -2)
        a = -1
        b = -1
        result=Calculations().dzielenie(a: a, b: b)
        XCTAssert(result == 1)
    }
    func testSin()
    {
        var a=0
        var result = Calculations().sinus(a: a)
        XCTAssert(result==0)
    }
    
}


