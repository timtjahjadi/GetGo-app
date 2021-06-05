//
//  MapView.swift
//  GetGo-app
//
//  Created by Timotius Tjahjadi  on 06/06/21.
//

import SwiftUI

extension UIDevice {
    var hasNotch: Bool {
        let bottom = UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0
        return bottom > 0
    }
}

struct MapView: View {
    @State var isHidden = true
    
    var body: some View {
        NavigationView {
            ZStack {
                Maps()
                VStack {
                    VStack {
                        HStack {
                            Spacer()
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                ZStack {
                                    Circle()
                                        .foregroundColor(.white)
                                        .shadow(radius: 10)
                                    Image("icoActionAlert")
                                        .padding()
                                }
                                .frame(width: 50, height: 50)
                                
                            })
                        }
                        .padding(.trailing, 25)
                        Spacer()
                        HStack {
                            Spacer()
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                ZStack {
                                    Circle()
                                        .foregroundColor(.white)
                                        .shadow(radius: 10)
                                    Image("icoActionLocate")
                                        .padding()
                                }
                                .frame(width: 50, height: 50)
                                
                            })
                        }
                        .padding(.trailing, 25)
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
                                    Divider()
                                        .frame(width: 1
                                        )
                                    HStack {
                                        NavigationLink(
                                            destination: SearchResultView(isHidden: self.$isHidden),
                                            label: {
                                                Text("Go")
                                                    .fontWeight(.bold)
                                                    .padding(30)
                                                    .background(Color(red: 155/255, green: 249/255, blue: 187/255, opacity: 1.0))
                                                    .foregroundColor(.primary)
                                            })
                                    }
                                }
                            }
                        }
                        .cornerRadius(10.0)
                        .frame(height: 150)
                        .padding()
                        .padding(.bottom, 40)
                        
                        
                    }
                    if UIDevice.current.hasNotch {
                        CustomTabBar()
                            .offset(y: -(UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0))
                    } else {
                        CustomTabBar()
                    }
                }
                
                .edgesIgnoringSafeArea(.bottom)
                
            }
            .navigationBarHidden(isHidden)
        }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(isHidden)
    }
}

//struct MapView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapView()
//    }
//}
