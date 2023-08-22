//
//  SwiftUIWithMVVMApp.swift
//  SwiftUIWithMVVM
//
//  Created by Abul Kalam Azad on 21/8/23.
//

import SwiftUI

@main
struct SwiftUIWithMVVMApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                NewsView()
            }
        }
    }
}
