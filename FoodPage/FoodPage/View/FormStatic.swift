//
//  FormStatic.swift
//  FoodPage
//
//  Created by MacBook on 16/04/21.
//

import SwiftUI

struct FormStatic: View {
    //Mark: Properties
    
    var icon: String
    var firstText: String
    var secondText: String
    
    
    //Mark: Body
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .fill(Color.gray)
                Image(systemName: icon)
                    .foregroundColor(Color.white)
            }//: ZStack
            .frame(width: 36, height: 36, alignment: .center)
            
            Text(firstText)
                .foregroundColor(Color.gray)
            Spacer()
            Text(secondText)
        }//: HStack
    }
}

struct FormStatic_Previews: PreviewProvider {
    static var previews: some View {
        FormStatic(icon: "gear", firstText: "Applicatiob", secondText: "Todo")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
