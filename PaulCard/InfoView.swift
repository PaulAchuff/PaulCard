//
//  InfoView.swift
//  PaulCard
//
//  Created by Paul Achuff Sr on 4/8/20.
//  Copyright © 2020 Paul Achuff Sr. All rights reserved.
//

import SwiftUI

struct InfoView: View {
let text: String
let imageName: String

var body: some View {
    RoundedRectangle(cornerRadius: 25)
        //.fill(Color.white)
        .frame(width: 375, height: 40)
        .foregroundColor(.white)
        .overlay(HStack {
            Image(systemName: imageName)
                .foregroundColor(.green)
            Text(text)
                .font(.system(size: 25))
            .bold()
            
            
        })
    .padding(20)
}
struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
}

