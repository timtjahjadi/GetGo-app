//
//  SearchResultView.swift
//  GetGo-app
//
//  Created by Timotius Tjahjadi  on 05/06/21.
//

import SwiftUI

struct SearchResultView: View {
    
    @Binding var isHidden: Bool
    @Environment(\.presentationMode) var presentationMode : Binding<PresentationMode>
    
    var body: some View {
        NavigationView {
            ZStack {

            VStack(spacing: 0) {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "arrow.left")
                            .font(.title3)
                            .foregroundColor(.primary)
                    })
                    
                    Text("Search results")
                        .font(.title2)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding()
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                    VStack(spacing: 0) {
                        HStack {
                            Image("icoAddress")
                            VStack(alignment: .leading) {
                                Text("Location")
                                    .font(.footnote)
                                    .foregroundColor(.secondary)
                                Text("Current location")
                            }
                            Spacer()
                        }
                        .padding()
                        Divider()
                        HStack(spacing: 0) {
                            HStack {
                                Image("icoDateD")
                                VStack(alignment: .leading) {
                                    Text("Date & Time")
                                        .font(.footnote)
                                        .foregroundColor(.secondary)
                                    Text("Now")
                                }
                            }
                            .padding()
                            Spacer()
                            Divider()
                                .frame(width: 1
                                )
                            HStack {
                                Image("icoTime")
                                VStack(alignment: .leading) {
                                    Text("Duration")
                                        .font(.footnote)
                                        .foregroundColor(.secondary)
                                    Text("1 hr")
                                }
                            }
                            .padding()
                            Spacer()
                        }
                    }
                }
                .cornerRadius(10.0)
                .frame(height: 150)
                
                ZStack {
                    Rectangle()
                        .edgesIgnoringSafeArea(.all)
                        .foregroundColor(Color(red: 12/255, green: 30/255, blue: 81/255, opacity: 1.0))
                        
                    ScrollView {
                        VStack {
                            HStack {
                                Text("300+")
                                    .foregroundColor(Color(red: 202/255, green: 40/255, blue: 125/255, opacity: 1.0))
                                    .fontWeight(.semibold)
                                Text("cars found")
                                    .foregroundColor(.white)
                                Spacer()
                                ZStack {
                                    Rectangle()
                                        .cornerRadius(5)
                                        .foregroundColor(.white)
                                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                        Text("Filter")
                                            .foregroundColor(.black)
                                            .fontWeight(.semibold)
                                            .font(.callout)
                                    })
                                    .padding(.horizontal)
                                    .padding(.vertical, 5)
                                }
                                .frame(width: 80)
                                ZStack {
                                    Rectangle()
                                        .cornerRadius(5)
                                        .foregroundColor(.white)
                                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                        Text("Map")
                                            .foregroundColor(.black)
                                            .fontWeight(.semibold)
                                            .font(.callout)
                                    })
                                    .padding(.horizontal)
                                    .padding(.vertical, 5)
                                }
                                .frame(width: 80)
                            }
                            
                            NavigationLink(
                                destination: DetailView(isHidden: $isHidden),
                                label: {
                                    HStack {
                                        Image("car1")
                                            .cornerRadius(5)
                                            .padding(.trailing, 5)
                                            
                                        VStack(alignment: .leading, spacing: 3) {
                                            Text("Mazda 3")
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                            HStack {
                                                Text("SMS1000Z - 5 Seater")
                                                    .font(.callout)
                                                    .foregroundColor(.white)
                                                Spacer()
                                                Text("0.5KM AWAY")
                                                    .foregroundColor(.white)
                                                    .font(.footnote)
                                            }
                                            HStack {
                                                VStack(alignment: .leading) {
                                                    Text("Rental fee")
                                                        .foregroundColor(.white)
                                                        .font(.footnote)
                                                    Text("Fr.$3.00/hr")
                                                        .foregroundColor(.white)
                                                }
                                                VStack(alignment: .leading) {
                                                    Text("Rental fee")
                                                        .foregroundColor(.white)
                                                        .font(.footnote)
                                                    Text("Fr.$3.00/hr")
                                                        .foregroundColor(.white)
                                                }
                                                Spacer()
                                            }
                                        }
                                    }
                                })
                            
                            ForEach(0...7, id: \.self) { _ in
                                Divider()
                                    .colorInvert()
                                NavigationLink(
                                    destination: DetailView(isHidden: $isHidden),
                                    label: {
                                        HStack {
                                            Image("car1")
                                                .cornerRadius(5)
                                                .padding(.trailing, 5)
                                                
                                            VStack(alignment: .leading, spacing: 3) {
                                                Text("Mazda 3")
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                HStack {
                                                    Text("SMS1000Z - 5 Seater")
                                                        .font(.callout)
                                                        .foregroundColor(.white)
                                                    Spacer()
                                                    Text("0.5KM AWAY")
                                                        .foregroundColor(.white)
                                                        .font(.footnote)
                                                }
                                                HStack {
                                                    VStack(alignment: .leading) {
                                                        Text("Rental fee")
                                                            .foregroundColor(.white)
                                                            .font(.footnote)
                                                        Text("Fr.$3.00/hr")
                                                            .foregroundColor(.white)
                                                    }
                                                    VStack(alignment: .leading) {
                                                        Text("Rental fee")
                                                            .foregroundColor(.white)
                                                            .font(.footnote)
                                                        Text("Fr.$3.00/hr")
                                                            .foregroundColor(.white)
                                                    }
                                                    Spacer()
                                                }
                                            }
                                        }
                                    })
                            }
                            
                        }
                        .padding()
                    }
                }
            }
            
            .navigationBarHidden(isHidden)
            }
        }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(isHidden)
    }
}

//struct SearchResultView_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchResultView(isHidden: true)
//    }
//}
