//
//  homePage.swift
//  finalApp
//
//  Created by Scholar on 6/27/23.
//

import SwiftUI


struct Itinerary: Identifiable {
    
    var id = UUID()
    var event: String
    var when: String
}


struct homePage: View {
    @Binding var stringValue: String
//    @State var stringModel2 = StringModel()
    
    @State private var days = 3
    @State private var current = 67.0
    @State private var minValue = 0.0
    @State private var maxValue = 100.0
  
    
    var plans = [

            Itinerary(event: "Taste Film", when: "10:00 AM"),
            Itinerary(event: "Arc de Triumph", when: "1:00 PM"),
            Itinerary(event: "Disneyland Paris", when: "3:00 PM"),
            Itinerary(event: "Louvre", when: "5:00 PM"),
            Itinerary(event: "Macaroon Shop", when: "7:00 PM")

        ]
    
    var body: some View {
        /*Text(stringValue)
        Text("This is your email!")*/
    
     /* VStack {
            Text("Welcome, \(stringValue)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 52.0)
                .padding(.bottom, -1)
        
            
        } */
        VStack {

                    Text("Hello,  \(stringValue)")

                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top, 52.0)
                        .padding(.bottom, -1)

        

    VStack {

        HStack{

        Text("✈️Upcoming  Flight in  ")

            .font(.largeTitle)
            .fontWeight(.heavy)
            .multilineTextAlignment(.center)
           .frame(width: 200.0, height: 185.0)
            .background(Color(red: 0.002, green: 0.597, blue: 0.857))
            .cornerRadius(10)
            .padding(.trailing, -22.5)
            .padding(.horizontal, -180)
            .foregroundStyle(.white)

        Text(" T-\(days) days")

        .font(.largeTitle)
           .fontWeight(.heavy)
         .multilineTextAlignment(.center)
         .frame(width: 175.0, height: 185.0)
            .background(Color(red: 0.002, green: 0.597, blue: 0.857))
             .cornerRadius(10)
             .padding(.trailing, -175)
            .foregroundStyle(.white)
            }
            .padding(.bottom, 40)

        HStack {

                            VStack {

                                Text("Reminder\n Pack your bag!")

                                    .font(.system(size: 25))

                                    .fontWeight(.semibold)

                                    .multilineTextAlignment(.center)

                                    .padding(.trailing, 10.0)

                                    .frame(width: 200.0, height: 100.0)

                                    .background(Color(red: 0.002, green: 0.597, blue: 0.857))

                                    .foregroundStyle(.white)

                                    .cornerRadius(10)

                        NavigationLink(destination: bookingsPage(stringValue: $stringValue)) {
                                    Text("Explore ✨New Bookings✨")
                                }
                                .font(.system(size: 25))
                                .foregroundStyle(.white)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)


                               
                                        //.accentColor(Color.white)

                                        .frame(width: 200, height: 110)

                                        .background(Color(red: 0.002, green: 0.597, blue: 0.857))

                                        .cornerRadius(10)

                                DatePicker("Label", selection: .constant(Date()), displayedComponents: .date)

                                    .datePickerStyle(.graphical)

                                    

                                

                            }



                            .frame(width: 200.0, height: 100.0)

                            .padding(.top, 23)

                            VStack(alignment: .leading) {

                                Text("   Itinerary")

                                    .font(.headline)

                                    .multilineTextAlignment(.center)

                                    .padding()



                                ForEach(plans.indices, id: \.self) { index in

                                    let event = plans[index]

                                    VStack {

                                        Text("Day \(index + 1)").font(.subheadline)

                                            .padding(.bottom, 8)

                                        ForEach(plans.filter { $0.event == event.event }) { plan in

                                            HStack {

                                                Text(plan.event)

                                                    .multilineTextAlignment(.leading)

                                                    .font(.system(size: 15))

                                                Text(plan.when)

                                                    .multilineTextAlignment(.trailing)

                                                    .font(.system(size: 15))

                                            }

                                        }

                                        Text("---------------")

                                    }

                                    

                                }

                                .frame(height:82.0)

                            }

                            .foregroundStyle(.white)

                            .fontWeight(.semibold)

                            .padding(.horizontal)

                            .background(Color(red: 0.002, green: 0.597, blue: 0.857))

                            .cornerRadius(10)

                            //.padding(.bottom, 8)

                            .padding(.top, -45)

                            

                        }

                        .padding()



                    }

                }
    }
    
}

struct homePage_Previews: PreviewProvider {
    static var previews: some View {
        homePage(stringValue: .constant("Sample text"))
    }
}
