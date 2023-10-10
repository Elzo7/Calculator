//
//  ContentView.swift
//  Calculator
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State var result:String = ""
    @State var a:Int = 0
    @State var b:Int = 0
    @State var znak:String=""
    @State var pisze = "a"
    @State var koniec:Bool = false
    var body: some View {
        VStack {
            Spacer()
            Text("KALKULATOR").padding().font(.largeTitle)
            Spacer()
            TextField("",text:$result).frame(width: 315,height: 60).font(.largeTitle).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/,width: 2)
            VStack
            {
                HStack
                {
                    CustomButton(inside:.constant("1"),result: $result,a:$a,b:$b,znak:$znak,pisze:$pisze,koniec:$koniec)
                    CustomButton(inside:.constant("2"),result: $result,a:$a,b:$b,znak:$znak,pisze:$pisze,koniec:$koniec)
                    CustomButton(inside:.constant("3"),result: $result,a:$a,b:$b,znak:$znak,pisze:$pisze,koniec:$koniec)
                }
                HStack
                {
                    CustomButton(inside:.constant("4"),result: $result,a:$a,b:$b,znak:$znak,pisze:$pisze,koniec:$koniec)
                    CustomButton(inside:.constant("5"),result: $result,a:$a,b:$b,znak:$znak,pisze:$pisze,koniec:$koniec)
                    CustomButton(inside:.constant("6"),result: $result,a:$a,b:$b,znak:$znak,pisze:$pisze,koniec:$koniec)
                }
                HStack
                {
                    CustomButton(inside:.constant("7"),result: $result,a:$a,b:$b,znak:$znak,pisze:$pisze,koniec:$koniec)
                    CustomButton(inside:.constant("8"),result: $result,a:$a,b:$b,znak:$znak,pisze:$pisze,koniec:$koniec)
                    CustomButton(inside:.constant("9"),result: $result,a:$a,b:$b,znak:$znak,pisze:$pisze,koniec:$koniec)
                }
                HStack
                {
                    CustomButton(inside:.constant("0"),result: $result,a:$a,b:$b,znak:$znak,pisze:$pisze,koniec:$koniec)
                    CustomButton(inside:.constant("+"),result: $result,a:$a,b:$b,znak:$znak,pisze:$pisze,koniec:$koniec)
                    CustomButton(inside:.constant("-"),result: $result,a:$a,b:$b,znak:$znak,pisze:$pisze,koniec:$koniec)
                }
                HStack
                {
                    CustomButton(inside:.constant("*"),result: $result,a:$a,b:$b,znak:$znak,pisze:$pisze,koniec:$koniec)
                    CustomButton(inside:.constant("/"),result: $result,a:$a,b:$b,znak:$znak,pisze:$pisze,koniec:$koniec)
                    CustomButton(inside:.constant("sin"),result: $result,a:$a,b:$b,znak:$znak,pisze:$pisze,koniec:$koniec)
                }
                
            }
            Button("Oblicz"){
            switch(znak)
            {
            case "+":
                result=String(Calculations().dodawanie(a: a, b: b))
            case "-":
                result = String(Calculations().odejmowanie(a: a, b: b))
            case "*":
                result = String(Calculations().mnozenie(a: a, b: b))
            case "/":
                let pomoc=Calculations().dzielenie(a: a, b: b)
                if(pomoc == nil)
                {
                    result="ERROR"
                }
                else
                {
                    result=String(pomoc!)
                }
            default:
                result="Wprowadz rownanie"
            }
            
            a=0
            b=0
            znak=""
            pisze="a"
            koniec=true
            }.font(.largeTitle).frame(width: 315,height: 60).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/,width: 2)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

