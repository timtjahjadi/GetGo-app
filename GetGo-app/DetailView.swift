//
//  DetailView.swift
//  GetGo-app
//
//  Created by Timotius Tjahjadi  on 05/06/21.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var isHidden: Bool
    @Environment(\.presentationMode) var presentationMode : Binding<PresentationMode>
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "arrow.left")
                            .font(.title3)
                            .foregroundColor(.primary)
                    })
                    Spacer()
                    Text("Booking ID : 44123331")
                        .font(.title2)
                        .fontWeight(.bold)
                    Image("icoActionCopy")
                        .font(.title3)
                }
                .padding()
                ScrollView {
                    VStack(spacing: 5) {
                        HStack {
                            Text("Mazda 3")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .padding(.horizontal)
                        HStack {
                            Text("SMS1000Z")
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding(.trailing, 5)
                            ZStack {
                                Rectangle()
                                    .foregroundColor(Color(red:  68/255, green: 117/255, blue: 249/255, opacity: 1.0))
                                Text("CONFIRMED")
                                    .foregroundColor(.white)
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                
                            }
                            .frame(width: 100)
                            .cornerRadius(5)
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Start date")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.gray)
                                Text("Mon, 1 Nov 20")
                                Text("11:45am")
                            }
                            Spacer()
                            VStack(alignment: .leading) {
                                Text("End date")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.gray)
                                Text("Tue, 2 Nov 20")
                                Text("11:45am")
                            }
                            Spacer()
                            ZStack {
                                Rectangle()
                                    .foregroundColor(Color(red: 12/255, green: 30/255, blue: 81/255, opacity: 1.0))
                                VStack() {
                                    Text("Duration")
                                        .font(.footnote)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.gray)
                                    HStack {
                                        VStack {
                                            Text("02")
                                                .font(.title3)
                                                .fontWeight(.semibold)
                                                .foregroundColor(.white)
                                            Text("days")
                                                .foregroundColor(.white)
                                                .font(.footnote)
                                        }
                                        VStack {
                                            Text(":")
                                                .foregroundColor(.white)
                                            Spacer()
                                        }
                                        VStack {
                                            Text("00")
                                                .font(.title3)
                                                .fontWeight(.semibold)
                                                .foregroundColor(.white)
                                            Text("hours")
                                                .foregroundColor(.white)
                                                .font(.footnote)
                                        }
                                    }
                                }
                                .padding(15)
                            }
                            .frame(width: 120)
                            .cornerRadius(10)
                        }
                        .padding(.horizontal)
                        
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.black, lineWidth: 1)
                                    .foregroundColor(.white)
                                    
                                HStack {
                                    Image(systemName: "plus")
                                    Text("Add to calender")
                                        .fontWeight(.semibold)
                                }
                                .padding()
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.black, lineWidth: 1)
                                    .foregroundColor(.white)
                                    
                                HStack {
                                    Image(systemName: "clock")
                                    Text("Extend")
                                        .fontWeight(.semibold)
                                }
                                .padding()
                            }
                        }
                        .padding(.top)
                        .padding(.horizontal)
                        
                        VStack {
                            Image("car_big")
                            HStack {
                                Circle()
                                    .foregroundColor(Color(red: 12/255, green: 30/255, blue: 81/255, opacity: 1.0))
                                    .frame(width: 10, height: 10)
                                Circle()
                                    .foregroundColor(Color(red: 12/255, green: 30/255, blue: 81/255, opacity: 1.0))
                                    .opacity(0.2)
                                    .frame(width: 10, height: 10)
                                Circle()
                                    .foregroundColor(Color(red: 12/255, green: 30/255, blue: 81/255, opacity: 1.0))
                                    .opacity(0.2)
                                    .frame(width: 10, height: 10)
                            }
                        }
                        .padding(.horizontal)
                        
                        VStack {
                            HStack {
                                Text("Pick up car at")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(red: 212/255, green: 38/255, blue: 130/255, opacity: 1.0))
                                Spacer()
                            }
                            .padding(.horizontal)
                            HStack {
                                Image("miniMap")
                                VStack(alignment: .leading) {
                                    Text("193 Punggol Road P100 Multi Storey Car Park")
                                        .fontWeight(.semibold)
                                        .lineLimit(nil)
                                        
                                    Text("Level 4 / Lot 123 - 456")
                                        .padding(.bottom, 10)
                                    HStack {
                                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                            ZStack {
                                                RoundedRectangle(cornerRadius: 5)
                                                    .stroke(Color.black, lineWidth: 1)
                                                    .foregroundColor(.white)
                                                HStack(spacing: 10) {
                                                    Image(systemName: "arrow.turn.up.right")
                                                    Text("Get Directions")
                                                        .fontWeight(.semibold)
//                                                    Spacer()
                                                }
                                                .foregroundColor(.primary)
//                                                .padding()
                                            }
                                            .frame(width: 180, height: 50)
                                        })
                                        
                                        Spacer()
                                    }
                                    HStack {
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 5)
                                                .stroke(Color.black, lineWidth: 1)
                                                .foregroundColor(.white)
                                            Image("fac1")
                                                .resizable()
                                        }
                                        .frame(width: 50, height: 50)
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 5)
                                                .stroke(Color.black, lineWidth: 1)
                                                .foregroundColor(.white)
                                            Image("fac2")
                                                .resizable()
                                        }
                                        .frame(width: 50, height: 50)
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 5)
                                                .stroke(Color.black, lineWidth: 1)
                                                .foregroundColor(.white)
                                            Image("fac3")
                                                .resizable()
                                        }
                                        .frame(width: 50, height: 50)
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 5)
                                                .stroke(Color.black, lineWidth: 1)
                                                .foregroundColor(.white)
                                            Text("+10")
                                        }
                                        .frame(width: 50, height: 50)
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                        .padding(.bottom)
                        
                        Rectangle()
                            .frame(height: 7)
                            .foregroundColor(Color(.separator))
                        
                        VStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Estimated total")
                                        .fontWeight(.semibold)
                                    Text("*Amount is not final")
                                        .foregroundColor(.secondary)
                                }
                                Spacer()
                                Text("S$52.00")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                Image(systemName: "chevron.right")
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 15)
                            Divider()
                                .padding(.horizontal)
                            HStack {
                                Text("Need help?")
                                    .fontWeight(.semibold)
                                Spacer()
                                Image("icoHelpHelp")
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 15)
                            Divider()
                                .padding(.horizontal)
                            HStack {
                                Text("Cancel this booking")
                                    .fontWeight(.semibold)
                                Spacer()
                                Image("icoHelpCancel")
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 15)
                        }
                        
                    }
                }
            }
            .navigationBarHidden(true)
        }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(isHidden)
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView()
//    }
//}
