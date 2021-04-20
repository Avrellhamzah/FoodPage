//
//  Foodetail.swift
//  FoodPage
//
//  Created by MacBook on 14/04/21.
//

import SwiftUI

struct Foodetail: View {
    
    let detail: Recipe
    
    var body: some View {
        ScrollView{
            VStack (alignment: .leading){
                Image(detail.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipped()
                
                VStack(alignment: .leading){
                    Text(detail.namaMakanan)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                    
            
                    Text(detail.detailMakanan)
                        .font(.body)
                    
                    ScrollView(.horizontal){
                        
                        HStack{
                            
                            ForEach(Recipedataall){ data in
                                
                                NavigationLink(destination:Foodetail(detail: data)){
                                    
                                    
                                    VStack{
                                    
                                        
                                        ZStack(){
                                            
                                            VStack{
                                            
                                            Image(data.image)
                                                .resizable()
                                                .frame(width: 150, height: 100)
                                                .cornerRadius(10)
                                            
                                                Text(data.namaMakanan)
                                                    .font(.callout)
                                                    .foregroundColor(Color.black)
                                                    .padding(.horizontal)
                                                
                                            }
                                        }
                                    }
                                }
                            }
                            
                        }
                    }
                }.padding()
            }
        }
    }
}

struct Foodetail_Previews: PreviewProvider {
    static var previews: some View {
        Foodetail(detail: Recipe(id: 1, image: "", namaMakanan: "", detailMakanan: ""))
    }
}
