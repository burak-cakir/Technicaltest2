//
//  ContentView.swift
//  technicaltest2
//
//  Created by burak cakir on 13.03.2022.
//

import SwiftUI
import URLImage

struct ContentView: View {
    @State private var selection = 0
    var body: some View {
        productView()
        TabView(selection: $selection){
            Text("")
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }
                        .tag(0)
                    

            Text("")
                        .tabItem {
                            Image(systemName: "leaf")
                            Text("Products")
                        }
                        .tag(1)
                    
            Text("")
   
                        .tabItem {
                            Image(systemName: "cart")
                            Text("Cart")
                        }
                        .tag(2)
                    
          
                    
            Text("")
                        .tabItem {
                            Image(systemName: "person.crop.circle.fill.badge.checkmark")
                            Text("Profile")
                        }
                        .tag(3)
                    
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

