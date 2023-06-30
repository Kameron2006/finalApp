import SwiftUI

struct placesView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Attractions")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.bottom, 20)
                
                VStack (alignment: .leading) {
                    Text("Colombia")
                        .font(.title)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 2)
                    Text("Bogota")
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                    // First Colombia HStack
                    Button(action: {
                        openWebsite("https://www.viator.com/es-ES/tours/Medellin/Coffee-Tour-In-Horse-Riding-In-Medellin/d4563-70874P4")
                    }, label: {
                        HStack(alignment: .top) {
                            VStack{
                                Image("coffee")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .aspectRatio(contentMode: .fit)
                                    .padding([.top, .trailing], 15.0)
                                Image("coffee1")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.trailing, 10)
                            }
                            VStack(alignment: .leading) {
                                Text("Coffee tour with horseback riding in Medellín")
                                    .font(.title3)
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(.black)
                                Text("$89")
                                    .font(.headline)
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(.black)
                                Text("Explore Colombian countryside life on a day trip to a coffee plantation in San Sebastián de Palmitas. Discover coffee's history, cultivation, roasting, and traditional brewing.")
                                    .font(.body)
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(.black)
                            }//Closes the Info VStack
                        }// Closes the HStack
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    })
                    
                    // Second Colombia HStack
                    Button(action: {
                        // Open the website for the second Colombia attraction
                        openWebsite("https://www.viator.com/es-ES/tours/Medellin/Spa-Sensorial-Hydric-Experience-and-Thematic-Relaxing-Massage-in-Medellin/d4563-150607P35")
                    }, label: {
                        HStack(alignment: .top) {
                            VStack{
                                Image("Spa1")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .aspectRatio(contentMode: .fit)
                                    .padding([.top, .trailing], 17.0)
                                Image("spa2")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.trailing, 10)
                                Image("spa3")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.trailing, 10)
                            }
                            VStack(alignment: .leading) {
                                Text("Spa sensorial hydric experience & Thematic relaxing massage")
                                    .font(.title3)
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(.black)
                                Text("$159")
                                    .font(.headline)
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(.black)
                                Text("Experience a one-of-a-kind moment in our themed cubicles, where you can escape reality and witness the healing effects of water firsthand. Following our water therapy, indulge in a deep relaxation massage in a cubicle inspired by ancient caves from Mexico's Yucatan peninsula.")
                                    .font(.body)
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(.black)
                            }//Closes the Info VStack
                        }// Closes the HStack
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    })
                    
                    // Third Colombia HStack
                    Button(action: {
                        // link 3
                        openWebsite("https://www.viator.com/es-ES/tours/Medellin/AMESOME-PARAGLIDING-OVER-GIANT-WATERFALLS-FROM-MEDELLIN/d4563-63824P6")
                    }, label: {
                        HStack(alignment: .top) {
                            VStack{
                                Image("para1")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.trailing, 10)
                                Image("para2")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.trailing, 10)
                                Image("para3")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.trailing, 10)
                            }
                            VStack(alignment: .leading) {
                                Text("Impressive Parapente flight over giant waterfalls from Medellín")
                                    .font(.title3)
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(.black)
                                Text("$156")
                                    .font(.headline)
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(.black)
                                Text("Sit back and unwind as a driver-guide transports you from your hotel to Cocorna. There, join a skilled pilot for a 25-minute paragliding adventure. Enjoy breathtaking views of waterfalls and canyons, witnessing a unique perspective of Colombia's stunning landscape.")
                                    .font(.body)
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(.black)
                            }//Closes the Info VStack
                        }// Closes the HStack
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    })
                    // Fourth Colombia HStack
                    Button(action: {
                        // link 4
                        openWebsite("https://www.botanicomedellin.org")
                    }, label: {
                        HStack(alignment: .top) {
                            VStack{
                                Image("garden1")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.trailing, 10)
                                Image("Garden2")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.trailing, 10)
                                Image("Garden3")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.trailing, 10)
                            }
                            VStack(alignment: .leading) {
                                Text("Jardín Botánico de Medellín")
                                    .font(.title3)
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(.black)
                                Text("Free")
                                    .font(.headline)
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(.black)
                                Text("Stretched across 34 acres of land (14 hectares), Jardín Botánico is a wonderful natural escape in the busy city of Medellín. With over 1,000 different living plant species, the gardens are not only a place to relax but also to learn about Colombia’s biodiversity.")
                                    .font(.body)
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(.black)
                            }//Closes the Info VStack
                        }// Closes the HStack
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    })
                    .padding(.bottom, 10)
                    
                }//Closes the Colombia VStack
                .padding(.bottom, 50)
                
                
                
                
                
                
                
                VStack (alignment: .leading) {
                    Text("Germany")
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 10)
                    
                    // First Germany HStack
                    Button(action: {
                        // Open the website for the first Germany attraction
                        openWebsite("https://www.example.com/germany-attraction-1")
                    }, label: {
                        HStack(alignment: .top) {
                            Image("beach")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .aspectRatio(contentMode: .fit)
                                .padding(.trailing, 10)
                            
                            VStack(alignment: .leading) {
                                Text("Beach Trip")
                                    .font(.title3)
                                Text("$20")
                                    .font(.headline)
                                Text("Enjoy a relaxing day at the beach in Cartagena, Colombia")
                                    .font(.body)
                            }//Closes the Info VStack
                        }// Closes the HStack
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    })
                    
                    // Second Germany HStack
                    Button(action: {
                        // Open the website for the second Germany attraction
                        openWebsite("https://www.example.com/germany-attraction-2")
                    }, label: {
                        HStack(alignment: .top) {
                            Image("beach")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .aspectRatio(contentMode: .fit)
                                .padding(.trailing, 10)
                            
                            VStack(alignment: .leading) {
                                Text("Beach Trip")
                                    .font(.title3)
                                Text("$20")
                                    .font(.headline)
                                Text("Enjoy a relaxing day at the beach in Cartagena, Colombia")
                                    .font(.body)
                            }//Closes the Info VStack
                        }// Closes the HStack
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    })
                    
                    // Third Germany HStack
                    Button(action: {
                        // Open the website for the third Germany attraction
                        openWebsite("https://www.example.com/germany-attraction-3")
                    }, label: {
                        HStack(alignment: .top) {
                            Image("beach")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .aspectRatio(contentMode: .fit)
                                .padding(.trailing, 10)
                            
                            VStack(alignment: .leading) {
                                Text("Beach Trip")
                                    .font(.title3)
                                Text("$20")
                                    .font(.headline)
                                Text("Enjoy a relaxing day at the beach in Cartagena, Colombia")
                                    .font(.body)
                            }//Closes the Info VStack
                        }// Closes the HStack
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    })
                }//Closes the Germany VStack
                .padding(.bottom, 50)
                
                VStack (alignment: .leading) {
                    Text("Japan")
                        .font(.title)
                        .multilineTextAlignment(.

leading)
                        .padding(.bottom, 10)
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    // First Japan HStack
                    Button(action: {
                        // Open the website for the first Japan attraction
                        openWebsite("https://www.example.com/japan-attraction-1")
                    }, label: {
                        HStack(alignment: .top) {
                            Image("beach")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .aspectRatio(contentMode: .fit)
                                .padding(.trailing, 10)
                            
                            VStack(alignment: .leading) {
                                Text("Beach Trip")
                                    .font(.title3)
                                Text("$20")
                                    .font(.headline)
                                Text("Enjoy a relaxing day at the beach in Cartagena, Colombia")
                                    .font(.body)
                            }//Closes the Info VStack
                        }// Closes the HStack
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    })
                    
                    // Second Japan HStack
                    Button(action: {
                        // Open the website for the second Japan attraction
                        openWebsite("https://www.example.com/japan-attraction-2")
                    }, label: {
                        HStack(alignment: .top) {
                            Image("beach")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .aspectRatio(contentMode: .fit)
                                .padding(.trailing, 10)
                            
                            VStack(alignment: .leading) {
                                Text("Beach Trip")
                                    .font(.title3)
                                Text("$20")
                                    .font(.headline)
                                Text("Enjoy a relaxing day at the beach in Cartagena, Colombia")
                                    .font(.body)
                            }//Closes the Info VStack
                        }// Closes the HStack
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    })
                    
                    // Third Japan HStack
                    Button(action: {
                        // Open the website for the third Japan attraction
                        openWebsite("https://www.example.com/japan-attraction-3")
                    }, label: {
                        HStack(alignment: .top) {
                            Image("beach")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .aspectRatio(contentMode: .fit)
                                .padding(.trailing, 10)
                            
                            VStack(alignment: .leading) {
                                Text("Beach Trip")
                                    .font(.title3)
                                Text("$20")
                                    .font(.headline)
                                Text("Enjoy a relaxing day at the beach in Cartagena, Colombia")
                                    .font(.body)
                            }//Closes the Info VStack
                        }// Closes the HStack
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    })
                }//Closes the Japan VStack
                
                
                
            }//closes the Main Vstack
            .padding()
            
            
            
        }//Closes the scroll
        
        
        
    } //Closes the body
    
    
    
} //Closes the struct

func openWebsite(_ url: String) {
    guard let websiteURL = URL(string: url) else {
        return
    }
    UIApplication.shared.open(websiteURL)
}

struct placesView_Previews: PreviewProvider {
    static var previews: some View {
        placesView()
    }
}
