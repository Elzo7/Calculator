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
    var body: some View {
        Button(inside){
            result.append(inside)
            
            
   
        }.font(.largeTitle).frame(width: 100,height: 60).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/,width: 2)
    }
}

#Preview {
    CustomButton(inside:.constant(""),result:.constant(""),a:.constant(0),b:.constant(0))
}
