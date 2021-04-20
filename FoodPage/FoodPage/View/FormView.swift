//
//  FormView.swift
//  FoodPage
//
//  Created by MacBook on 16/04/21.
//

import SwiftUI

struct FormView: View {
    //Mark: Properties
    
    var icon: String
    var color: Color
    var text: String
    var link: String
    
    //Mark: body
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .fill(color)
                Image(systemName: icon)
                    .foregroundColor(Color.white)
            }//: ZStack
            .frame(width: 36, height: 36, alignment: .center)
            
            Text(text)
                .foregroundColor(Color.gray)
            Spacer()
    
            Button(action: {
                //: Buka Link
                guard let url = URL(string: self.link),
                      UIApplication.shared.canOpenURL(url) else {
                    return
                }
                UIApplication.shared.open(url as URL)
            }) {
                Image(systemName: "chevron.right")
                    .font(.system(size: 14, weight: .semibold,
                                  design: .rounded))
            }//:Button Buka Link
            .accentColor(Color(.systemGray2))
        }//: HStack
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView(icon: "globe", color: Color.pink, text: "Facebook", link: "")
    }
}
