//
//  Detailprofile.swift
//  FoodPage
//
//  Created by MacBook on 16/04/21.
//

import SwiftUI

struct Detailprofile: View {
    var body: some View {
        VStack{
            VStack{
                Image("PP")
                    .resizable()
                    .frame(width:150,height: 150)
                    .clipped()
                    .clipShape(Circle())
                Text("Hazel")
                    .font(.title)
                    .fontWeight(.medium)
                
                
            }.padding()
            Form{
                Section{
                    HStack{
                        Text("Phone")
                        Spacer()
                        Text("+1(268)-8110134")
                            .foregroundColor(.gray)
                            .font(.callout)
                    }
                    HStack{
                        Text("Email")
                        Spacer()
                        Text("Hazel@Gmail.com")
                            .foregroundColor(.gray)
                            .font(.callout)
                    }
                    HStack{
                        Text("Alamat")
                        Spacer()
                        Text("Jakarta Timur")
                            .foregroundColor(.gray)
                            .font(.callout)
                        
                       
                    }
                    
                }
                // MARK: - SECTION 3
               
            }
           
        }
        
    }
}

struct Detailprofile_Previews: PreviewProvider {
    static var previews: some View {
        Detailprofile()
    }
}
