//
//  ContentView.swift
//  GetGo-app
//
//  Created by Timotius Tjahjadi  on 05/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
        }
    }
}

struct CustomTabBar: View {
    var body: some View {
        HStack(alignment: .top, spacing: 30) {
            //MARK: rent
            Button(action: {
                
            }) {
                VStack {
                    Image(systemName: "car")
                        .font(.system(size: 24))
                        .padding(.bottom, 1)
                        .frame(height: 24)
                    Text(" Rent a car ")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                .foregroundColor(.white)

            }
            //MARK: book
            Button(action: {
                
            }) {
                VStack {
                    Image(systemName: "checkmark.rectangle")
                        .font(.system(size: 24))
                        .padding(.bottom, 1)
                        .frame(height: 24)
                    Text(" Bookings ")
                        .font(.footnote)
//                        .fontWeight(.semibold)
                }
                .foregroundColor(.white)
                .opacity(0.6)
            }
            //MARK: refer
            Button(action: {
                
            }) {
                VStack {
                    Image(systemName: "gift")
                        .font(.system(size: 24))
                        .padding(.bottom, 1)
                        .frame(height: 24)
                    Text(" Refer a friend ")
                        .font(.footnote)
//                        .fontWeight(.semibold)
                }
                .foregroundColor(.white)
                .opacity(0.6)
            }
            //MARK: Account
            Button(action: {
                
            }) {
                VStack {
                    Image(systemName: "gear")
                        .font(.system(size: 24))
                        .padding(.bottom, 1)
                        .frame(height: 24)
                    Text(" Account ")
                        .font(.footnote)
//                        .fontWeight(.semibold)
                }
                .foregroundColor(.white)
                .opacity(0.6)
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: 80)
        .background(Color(red: 12/255, green: 30/255, blue: 81/255, opacity: 1.0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
