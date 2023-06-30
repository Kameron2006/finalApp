import SwiftUI

struct Hotels: View {
    @State private var isBookingSheetPresented = false
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Hotels")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.bottom, 20)
                
                VStack(alignment: .leading) {
                    Text("Colombia")
                        .font(.title)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 2)
                    Text("Bogota")
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                    
                    // First Colombia HStack
                    HStack(alignment: .top) {
                        VStack {
                            Image("ic2")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .aspectRatio(contentMode: .fit)
                                .padding(.trailing, 10)
                            Image("ic3")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .aspectRatio(contentMode: .fit)
                                .padding(.trailing, 10)
                            Image("ic1")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .aspectRatio(contentMode: .fit)
                                .padding(.trailing, 10)
                        }
                        VStack(alignment: .leading) {
                            Text("Intercontinental Medellin")
                                .font(.title)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.leading)
                                .foregroundStyle(.black)
                            HStack {
                                Text("★★★★★")
                                    .font(.headline)
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(.black)
                                Text("Excellent")
                                Text("8.4")
                                    .fontWeight(.bold)
                            }
                            Text("Medellin")
                            Divider()
                            Text("⎋ Free Cancelation")
                            Text("📱Mobile Rate")
                                .padding(.bottom, 25)
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("$281")
                                        .fontWeight(.bold)
                                        .multilineTextAlignment(.leading)
                                        .font(.system(size: 35))
                                    Text("$300")
                                        .strikethrough()
                                        .font(.body)
                                        .multilineTextAlignment(.leading)
                                        .foregroundStyle(.black)
                                    Text("Hotels.com")
                                }
                                .padding(.trailing, 10)
                                Button(action: {
                                    isBookingSheetPresented = true
                                }) {
                                    Text("Book Now")
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, maxHeight: 40)
                                        .background(Color.blue)
                                        .cornerRadius(8)
                                        .padding(.top, 10)
                                }
                            }
                        } // Closes the Info VStack
                    } // Closes the HStack
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                }
                .padding(.bottom, 10)
                // Second Colombia HStack
                HStack(alignment: .top) {
                    VStack {
                        Image("ACA3")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .aspectRatio(contentMode: .fit)
                            .padding(.trailing, 10)
                        Image("ACA2")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .aspectRatio(contentMode: .fit)
                            .padding(.trailing, 10)
                        Image("ACA1")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .aspectRatio(contentMode: .fit)
                            .padding(.trailing, 10)
                    }
                    VStack(alignment: .leading) {
                        Text("Ayenda Colombia Avenida")
                            .font(.title)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .foregroundStyle(.black)
                        HStack {
                            Text("★★★★")
                                .font(.headline)
                                .multilineTextAlignment(.leading)
                                .foregroundStyle(.black)
                            Text("Great")
                            Text("7.5")
                                .fontWeight(.bold)
                        }
                        Text("Medellin")
                        Divider()
                        Text("⎋ Free Cancelation")
                        Text("📱Mobile Rate")
                            .padding(.bottom, 25)
                        HStack {
                            VStack(alignment: .leading) {
                                Text("$16")
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.leading)
                                    .font(.system(size: 35))
                                Text("Hotels.com")
                            }
                            .padding(.trailing, 10)
                            Button(action: {
                                isBookingSheetPresented = true
                            }) {
                                Text("Book Now")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, maxHeight: 40)
                                    .background(Color.blue)
                                    .cornerRadius(8)
                                    .padding(.top, 10)
                            }
                        }
                    } // Closes the Info VStack
                } // Closes the HStack
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
            } // Closes the Main VStack
            .padding()
        } // Closes the ScrollView
        .sheet(isPresented: $isBookingSheetPresented) {
            BookingPage(isBookingSheetPresented: $isBookingSheetPresented)
        } // Closes the body
    }
    
    
    struct BookingPage: View {
        @Binding var isBookingSheetPresented: Bool
        @State private var checkInDate = Date()
        @State private var checkOutDate = Date()
        @State private var numberOfGuests = 1
        //@State private var isHotelBooked = false
        
        var body: some View {
            NavigationView {
                Form {
                    Section(header: Text("Check-in")) {
                        DatePicker("Select Date", selection: $checkInDate, displayedComponents: .date)
                    }
                    
                    Section(header: Text("Check-out")) {
                        DatePicker("Select Date", selection: $checkOutDate, displayedComponents: .date)
                    }
                    
                    Section(header: Text("Guests")) {
                        Stepper(value: $numberOfGuests, in: 1...10) {
                            Text("\(numberOfGuests) guest(s)")
                        }
                    }
                    
                    Section {
                        Button(action: bookHotel) {
                            Text("Book Hotel")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, maxHeight: 40)
                                .background(Color.blue)
                                .cornerRadius(8)
                        }
                    }
                }
                .navigationBarTitle("Hotel Booking")
                .navigationBarItems(trailing: Button("Close") {
                    isBookingSheetPresented = false
                })
            }
        }
        
        func bookHotel() {
        }
    }
    
    struct Hotels_Previews: PreviewProvider {
        static var previews: some View {
            Hotels()
        }
    }
}
