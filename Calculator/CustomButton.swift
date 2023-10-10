//
//  CustomButton.swift
//  Calculator
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct CustomButton: View {
    @Binding var inside:String
    @Binding var result:String
    @Binding var a:Int
    @Binding var b:Int
    @Binding var znak:String
    @Binding var pisze:String
    @Binding var koniec:Bool
    var body: some View {
        Button(inside){
            if koniec==true
            {
                result=""
                koniec=false
            }
            switch(inside)
            {
            case "+":
                if(pisze=="a")
                {
                    pisze="b"
                    znak="+"
                    result=""
                }
                else
                {
                    let pomoc=Calculations().dodawanie(a:a,b:b)
                    b=0
                    a=Int(pomoc)
                    znak="+"
                    result=String(pomoc)
                    koniec=true
                }
            case "-":
                if(pisze=="a")
                {
                    pisze="b"
                    znak="-"
                    result=""
                }
                else
                {
                    let pomoc=Calculations().odejmowanie(a:a,b:b)
                    b=0
                    a=Int(pomoc)
                    znak="-"
                    result=String(pomoc)
                    koniec=true
                }
                
            case "*":
                if(pisze=="a")
                {
                    pisze="b"
                    znak="*"
                    result=""
                }
                else
                {
                    let pomoc=Calculations().mnozenie(a:a,b:b)
                    b=0
                    a=Int(pomoc)
                    znak="*"
                    result=String(pomoc)
                    koniec=true
                }
            
            case "/":
                if(pisze=="a")
                {
                    pisze="b"
                    znak="/"
                    result=""
                }
                else
                {
                    let pomoc=Calculations().dzielenie(a:a,b:b)
                    
                    if pomoc == nil
                    {
                        result="Error dzielenie przez 0"
                        koniec=true
                    }
                    else
                    {
                        b=0
                        a=Int(pomoc!)
                        znak="/"
                        result=String(pomoc!)
                        koniec=true
                        
                    }
                }
               
                
            case "sin":
            let pomoc=Calculations().sinus(a: a)
                if(pomoc == nil)
                {
                    result="Wartosc ze zlego przedzialu"
                }
                else
                {
                    a=Int(pomoc!)
                    result=String(pomoc!)
                    
                }
                koniec=true
            default:
                result.append(inside)
                if (pisze=="a")
                {
                    a=Int(result)!
                }
                else
                {
                    b=Int(result)!
                }
            }
            
            
            
   
        }.font(.largeTitle).frame(width: 100,height: 60).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/,width: 2)
    }
}

#Preview {
    CustomButton(inside:.constant(""),result:.constant(""),a:.constant(0),b:.constant(0),znak: .constant(""),pisze: .constant("a"),koniec: .constant(false))
}
