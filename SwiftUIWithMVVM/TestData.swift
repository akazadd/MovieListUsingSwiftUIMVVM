//
//  TestData.swift
//  SwiftUIWithMVVM
//
//  Created by Abul Kalam Azad on 21/8/23.
//

import Foundation

struct TestData {
    static let story: Item = {
        let url = Bundle.main.url(forResource: "Story", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        return try! decoder.decode(Item.self, from: data)
    }()
}
