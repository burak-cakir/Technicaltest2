//
//  loginView.swift
//  technicaltest2
//
//  Created by burak cakir on 13.03.2022.
//

import SwiftUI

struct loginView: View {
   
    
    var body: some View {
      
       
        VStack{
            
            
            
            WelcomeText()
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                
                .padding(.horizontal,100)
            
            Form{
                
                
               
                
                
                
                Text("Email")
                    
                    
                  
                
                
                Text("Password")
                
                
                Button("Login"){
                    
        
                    
                    
                   
                    
                }
                
                .frame(maxWidth:.infinity)
                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                
                                .background(Color.green)
                                .cornerRadius(15.0)
                                
                
            }
            
            
        }
       
}

struct loginView_Previews: PreviewProvider {
    static var previews: some View {
        loginView()
    }
}
}

struct WelcomeText : View {
    var body: some View {
        return Text("Welcome !")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.horizontal,65)
    }
}

