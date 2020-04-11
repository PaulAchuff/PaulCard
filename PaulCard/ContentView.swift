//
//  ContentView.swift
//  PaulCard
//
//  Created by Paul Achuff Sr on 4/8/20.
//  Copyright © 2020 Paul Achuff Sr. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //Color(UIColor(red:0.12, green:0.22, blue:0.60, alpha:1.00))
            Color(UIColor(red:0.92, green:0.18, blue:0.02, alpha:1.00))
            //Color(UIColor(red:0.05, green:0.14, blue:0.38, alpha:1.00))
            //Color(UIColor(red:1.00, green:0.74, blue:0.74, alpha:1.00))
            .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Image("RockUSA logo.002")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 175, height: 175, alignment: .center)
                        .clipShape(Circle())
                        .overlay(
                        Circle().stroke(Color.black, lineWidth: 3)
                    )
                    Image("Me dressed up")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 175, height: 175)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.black, lineWidth: 3)
                        )
                    
                }
                Text("Just Me...")
                    .foregroundColor(.white)
                    .bold()
                    .padding()
                    
                Text("Paul Achuff")
                    .font(Font.custom("Pacifico-Regular", size: 50))
                    //.font(Font.custom("Ubuntu-Bold", size: 50))
                    .bold()
                    .italic()
                    .foregroundColor(.white)
                    //.frame(width: 465, height: 50, alignment: .center)
                    .padding()
                Text("iOS & Web Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+1 406-885-5130", imageName: "phone.fill")
                    .foregroundColor(.black)
                InfoView(text: "paul.achuff@me.com", imageName: "envelope.open.fill")
                    .foregroundColor(.black)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
