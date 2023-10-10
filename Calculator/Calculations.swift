//
//  Calculations.swift
//  Calculator
//
//  Created by student on 03/10/2023.
//

import Foundation

struct Calculations
{
  func dodawanie(a:Int,b:Int)->Double
    {
        return Double(a+b)
    }
    func odejmowanie(a:Int,b:Int)->Double
    {
        return Double(a-b)
    }
    func mnozenie (a:Int,b:Int)-> Double
    {
        return Double(a*b)
    }
    func dzielenie(a:Int,b:Int)->Double?
    {
        if b==0
        {
            return nil
        }
        else
        {
            return Double(a/b)
        }
    }
    func sinus(a:Int)->Double?
    {
        guard a >= (-1) && a <= 1
                else
        {
            return 	nil
        }
        let pomoc=Double(a)
        return sin(pomoc)
    }
}
	
