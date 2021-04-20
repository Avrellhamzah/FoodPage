//
//  Profileusr.swift
//  FoodPage
//
//  Created by MacBook on 14/04/21.
//

import SwiftUI

struct Setting: View {
    var body: some View {
       
        NavigationView{
            
                VStack{
                    
                    Button(action: {}){
                        
                        NavigationLink(destination: Detailprofile()){
                            
                            VStack{
                                Image("PP")
                                    .resizable()
                                    .frame(width:150,height: 150)
                                    .clipped()
                                    .clipShape(Circle())
                                VStack{
                                    
                                    
                                    
                                    Text("Hazel")
                                        .font(.title)
                                        .fontWeight(.medium)
                                }
                            }
                        }
                    }
                    Form{
                        
                        
                        
                        
                        VStack(){
                            Section(header: Text("Follow us on social media")) {
                                FormView(icon: "globe", color: Color.pink, text: "Website", link: "https://swiftuimasterclass.com")
                                FormView(icon: "link", color: Color.blue, text: "Instagram", link: "https://www.instagram.com/dfalihhh/")
                                FormView(icon: "play.rectangle", color: Color.green, text: "Courses", link: "https://www.udemy.com/user/robert-petras")
                            } //: SECTION 3
                            .padding(.vertical, 3)
                        }
                        Section(header: Text("About the application")) {
                            FormStatic(icon: "gear", firstText: "Application", secondText: "Food Recipe")
                            FormStatic(icon: "checkmark.seal", firstText: "Compatibility", secondText: "iPhone, iPad")
                            FormStatic(icon: "keyboard", firstText: "Developer", secondText: "Avrel")
                            FormStatic(icon: "paintbrush", firstText: "Designer", secondText: "Source")
                            FormStatic(icon: "flag", firstText: "Version", secondText: "1.5.0")
                        } //: SECTION 4
                        .padding(.vertical, 3)
                    } //: Form
                    .listStyle(GroupedListStyle())
                    .environment(\.horizontalSizeClass, .regular)
                    
                }.navigationBarTitle("Profile")
            }
        }
    
}

struct Profileusr_Previews: PreviewProvider {
    static var previews: some View {
        Setting()
    }
}
