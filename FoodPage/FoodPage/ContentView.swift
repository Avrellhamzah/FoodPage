//
//  ContentView.swift
//  FoodPage
//
//  Created by MacBook on 13/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Foodlist()
                .tabItem {
                    Image(systemName: "house.fill")
                    
                    Text("Home")
                }
            
            Setting()
                .tabItem {
                    NavigationLink(destination: Setting()){
                        
                        Image(systemName: "gear")
                        Text("Setting")
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Foodlist()
            
    }
}
