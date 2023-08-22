//
//  Badge.swift
//  SwiftUIWithMVVM
//
//  Created by Abul Kalam Azad on 21/8/23.
//

import SwiftUI

struct Badge: View {
    let text: String
    let imageName: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
            Text(text)
        }
    }
}
