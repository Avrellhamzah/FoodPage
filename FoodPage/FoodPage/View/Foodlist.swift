//
//  Foodlist.swift
//  FoodPage
//
//  Created by MacBook on 14/04/21.
//

import SwiftUI

struct Foodlist: View {
    var body: some View {
        Home()
        
    }
}

struct Foodlist_Previews: PreviewProvider {
    static var previews: some View {
        Foodlist()
        
    }
}

struct Home: View {
    var body: some View {
       
      
          
            NavigationView{
                
                
                VStack{
                    
                    VStack{
                        
                    Text("Hi, Hazel")
                        .font(.title2)
                        .bold()
                        .padding(.top, 50)
                        .padding(.trailing, 250)
                        
                    Text("What food you want to cook?")
                        .opacity(0.8)
                        .padding(.top, 3)
                        .padding(.trailing, 123)
                        .padding(.bottom)
                    }
                    
                    ScrollView(.horizontal ){
                        
                        HStack{
                            
                            ForEach(Recipe2data){ data in
                                
                                NavigationLink(destination:Foodetail(detail: data)){
                                    
                                    
                                    VStack{
                                    
                                        
                                        ZStack(){
                                            
                                            VStack{
                                            
                                            Image(data.image)
                                                .resizable()
                                                .frame(width: 100,height: 50)
                                                .cornerRadius(10)
                                                .clipShape(Rectangle())
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
                    }.padding(.top)
                    .padding(.leading)
                    
                        List(Recipedata){ data in
                            
                         
                            
                            NavigationLink(destination:Foodetail(detail: data)){
                      
                                
                                
                                
                                VStack{
                                    
                                    
                                    
                                    
                                    HStack(alignment: .top){
                                        
                                        Image(data.image)
                                            .resizable()
                                            .frame(width: 150, height: 100)
                                            .cornerRadius(10)
                                        
                                        VStack(alignment:.leading){
                                            Text(data.namaMakanan)
                                                .font(.title3)
                                                .bold()
                                                .foregroundColor(Color.orange)
                                            
                                            Text(data.detailMakanan)
                                                .clipped()
                                                .font(.system(size: 12))
                                                .foregroundColor(.black)
                                            
                                        }.frame(width: 200, height: 100)
                                        
                                    }
                                }
                            }
                        }
                    }.navigationTitle("FoodPage")

                }
    }
}



