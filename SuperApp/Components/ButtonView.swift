//
//  ButtonView.swift
//  SuperApp
//
//  Created by Anton Hoang on 26/05/2024.
//  Copyright © 2024 碼願科技有限公司. All rights reserved.

import SwiftUI

struct ButtonView: View {
    
    @State private var isTaped: Bool = false
    @State private var counter = 0
    
    let image: ImageName
    let startColor: Color
    let selectColor: Color
    
    var body: some View {
        Button(action: {
            isTaped.toggle()
            counter += isTaped ? 1 : -1
        }) {
            VStack {
                Image(systemName: image.rawValue)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .foregroundColor(isTaped ? selectColor : startColor)
                
                Text("\(counter)")
                    .foregroundColor(.white)
            }
        }
    }
}
