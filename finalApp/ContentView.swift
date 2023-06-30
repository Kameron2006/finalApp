//
//  ContentView.swift
//  finalApp
//
//  Created by Scholar on 6/26/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Image("marble!")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            NavigationStack {
                
                
                VStack {
                    Image("world")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(-7.0)
                    
                    
                    NavigationLink(destination: homeView()){
                        Text("Welcome")
                    }
                    .buttonStyle(.bordered)
                    
                }
                .padding()
                
                
            } //closes navigation stack
        }
       
            
         //closes VStack
      
    }

}
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
    

