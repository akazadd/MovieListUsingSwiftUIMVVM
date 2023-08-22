//
//  Position.swift
//  SwiftUIWithMVVM
//
//  Created by Abul Kalam Azad on 21/8/23.
//

import SwiftUI

struct Position: View {
    let position: Int
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 32.0, height: 32.0)
                .foregroundColor(.teal)
            Text("\(position)")
                .font(.callout)
                .bold()
                .foregroundColor(.white)
        }
    }
}
