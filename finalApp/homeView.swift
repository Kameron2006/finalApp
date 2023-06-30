//
//  homeView.swift
//  finalApp
//
//  Created by Scholar on 6/27/23.
//

import SwiftUI

struct homeView: View {
    //    @StateObject var email = StringModel()
    //    @State private var password = ""
    //    @State private var textTitle = "Submit"
    //    var body: some View {
    
    @StateObject var stringModel = StringModel()
    var body: some View {
        NavigationStack{
            ZStack{
                Image("marble!")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Begin to Signup...")
                        .font(.title)
                        .fontWeight(.semibold)
                    TextField("Enter name", text: $stringModel.stringValue)
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .padding()
                        .border(.black, width: 3)
                        .padding()
                        .frame(width: 400, height: 150)
                    NavigationLink(destination: homePage(stringValue: $stringModel.stringValue)) {
                        Text("Continue")
                        
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    
                    
                }
                
            }
        }
    }
}
        
//        ZStack {
//            Image("")
//                .imageScale(.small)
//                .foregroundColor(.accentColor)
        
//        NavigationStack{
//            VStack {
//                Text(textTitle)
//
//
//                Text("Sign up")
//                    .fontWeight(.black)
//                    .font(.largeTitle)
//                    .multilineTextAlignment(.center)
//                    .padding(.top, 200.0)
//                TextField ("Email Address", text: $email.stringValue)
//                    .multilineTextAlignment(.center)
//                    .font(.title)
//                    .padding()
//                    .border(.black, width: 3)
//                TextField("Password", text: $password )
//                    .multilineTextAlignment(.center)
//                    .font(.title)
//                    .padding()
//                    .border(.black, width: 4)
//
//
//
//                Button("Submit") {
//                    textTitle = "welcome!"
//
//                }//closes button code
//                    .font(.title2)
//                    .buttonStyle(.borderedProminent)
//
//                NavigationLink(destination: homePage(stringValue: .constant(""))){
//                    Text("go here")
//                }
                    
//                } //closes VStack
            
            
//
//        }
//
//
//
//            }
////           .padding()
//
////    }
//}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
