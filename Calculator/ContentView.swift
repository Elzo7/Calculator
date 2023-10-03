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
                    CustomButton(inside:.constant("1"),result: $result,a:$a,b:$b)
                    CustomButton(inside:.constant("2"),result: $result,a:$a,b:$b)
                    CustomButton(inside:.constant("3"),result: $result,a:$a,b:$b)
                }
                HStack
                {
                    CustomButton(inside:.constant("4"),result: $result,a:$a,b:$b)
                    CustomButton(inside:.constant("5"),result: $result,a:$a,b:$b)
                    CustomButton(inside:.constant("6"),result: $result,a:$a,b:$b)
                }
                HStack
                {
                    CustomButton(inside:.constant("7"),result: $result,a:$a,b:$b)
                    CustomButton(inside:.constant("8"),result: $result,a:$a,b:$b)
                    CustomButton(inside:.constant("9"),result: $result,a:$a,b:$b)
                }
                HStack
                {
                    CustomButton(inside:.constant("0"),result: $result,a:$a,b:$b)
                    CustomButton(inside:.constant("+"),result: $result,a:$a,b:$b)
                    CustomButton(inside:.constant("-"),result: $result,a:$a,b:$b)
                }
                HStack
                {
                    CustomButton(inside:.constant("*"),result: $result,a:$a,b:$b)
                    CustomButton(inside:.constant("/"),result: $result,a:$a,b:$b)
                    CustomButton(inside:.constant("sin"),result: $result,a:$a,b:$b)
                }
                
            }
            Button("Oblicz"){
            
            }.font(.largeTitle).frame(width: 315,height: 60).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/,width: 2)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

