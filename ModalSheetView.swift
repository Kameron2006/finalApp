//
//  ModalSheetView.swift
//  finalApp
//
//  Created by Scholar on 6/30/23.
//

import SwiftUI

struct ModalSheetView: View {
    @Binding var place: String
           @Binding var show: Bool
           
           var body: some View {
               VStack {
                   Button(action: {
                       withAnimation(.spring()){
                           show.toggle()
                       }
                   }){
                       Image(systemName: "xmark")
                           .font(Font.title.weight(.bold))
                           .foregroundColor(.white)
                   }
                   
                   Spacer()
                   
                   Text(place)
                       .fontWeight(.bold)
                       .minimumScaleFactor(0.5)
                       .foregroundColor(.white)
                       .font(.system(size: 60))
                   
                   Spacer()
                   
                   VStack(alignment: .leading, spacing: 10)
                   {
                       HStack{
                           Text(details[place]?.title ?? "")
                               .foregroundColor(.white)
                               .fontWeight(.bold)
                               .font(.system(size: 25))
                           
                           Spacer()
                           
                           Text(details[place]?.price ?? "")
                               .foregroundColor(.white)
                               .fontWeight(.semibold)
                               .font(.system(size: 20))
                       }
                       
                       Text("\(details[place]?.rating ?? "")/5")
                           .foregroundColor(.white)
                           .font(.system(size: 20))
                       
                       Text(details[place]?.description ?? "")
                           .foregroundColor(.white)
                           .lineLimit(3)
                       
                       Button(action: {
                           
                       }){
                           HStack{
                               Spacer()
                               Text("BOOK FLIGHT")
                                   .fontWeight(.bold)
                                   .foregroundColor(.white)
                               
                               Spacer()
                           }
                       }
                       .padding()
                       .background(Color("primary"))
                       .buttonStyle(PlainButtonStyle())
                       .clipShape(RoundedRectangle(cornerRadius: 40))
                   }
                   .padding(.horizontal, 30)
               }
               .background(
                   Image(place)
                       .resizable()
                       .scaledToFill()
                       .edgesIgnoringSafeArea(.all)
               )
           }
       }

       struct Details: Identifiable {
           var id = UUID()
           var title: String
           var price: String
           var rating: String
           var description: String
       }

       var details = [

           "JAPAN" : Details(title: "Japan Trip", price: "$ 450", rating: "4.5", description: "Kiyomizu-Dera temple is one of the most celebrated temples in the city. Located halfway up Mt. Otowa, this temple houses a deity of great mercy and compassion, Kannon. A large number of travelers and locals visit the temple to pay their respects. It is believed that Kannon embodies your feelings of gratitude, tranquil daily lives, and your thankful hearts."),
           "GERMANY" : Details(title: "Germany Trip", price: "$ 420", rating: "4.2", description: "A visit to Museum Island is one of the most unique things to do in Germany, and you’ll find that this UNESCO World Heritage Site is home to a wealth of exhibits and artifacts that will transport you through millennia of human history and culture. "),
           "COLOMBIA" : Details(title: "Colombia Trip", price: "$ 380", rating: "4.9", description: "From hiking and biking to cooking and coffee picking, scuba diving to dancing salsa, Colombia offers a myriad of unforgettable experiences for every type of traveller.")
           ]

