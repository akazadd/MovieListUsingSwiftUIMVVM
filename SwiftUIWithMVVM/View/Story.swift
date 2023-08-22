//
//  Story.swift
//  SwiftUIWithMVVM
//
//  Created by Abul Kalam Azad on 21/8/23.
//

import SwiftUI
/*
struct Story: View {
    let position: Int
    let item: Item
    
    var body: some View {
        HStack(alignment: .top, spacing: 16.0) {
            Position(position: position)
            VStack(alignment: .leading, spacing: 8.0) {
                Text(item.title)
                    .font(.headline)
                Text(footnote)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
                    Badge(text: item.score.formatted, imageName: "arrowtriangle.up.circle")
                        .foregroundColor(.teal)
                    Badge(text: item.commentCount.formatted, imageName: "ellipses.bubble")
                        .padding(.leading, 96.0)
                        .foregroundColor(.orange)
                }
                .font(.callout)
                .padding(.bottom)
            }
        }
        .padding(.top, 16.0)
    }
    
    var footnote: String {
        item.url.formatted()
            + " - \(item.date.timeAgo)"
            + " - by \(item.author)"
    }
}
*/

struct Story: View {
    let position: Int
    let title: String
    let footnote: String
    let score: String
    let commentCount: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 16.0) {
            Position(position: position)
            VStack(alignment: .leading, spacing: 8.0) {
                Text(title)
                    .font(.headline)
                Text(footnote)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
                    Badge(text: score, imageName: "arrowtriangle.up.circle")
                        .foregroundColor(.teal)
                    Badge(text: commentCount, imageName: "ellipses.bubble")
                        .padding(.leading, 96.0)
                        .foregroundColor(.orange)
                }
                .font(.callout)
                .padding(.bottom)
            }
        }
        .padding(.top, 16.0)
    }
}

extension Story {
    init(position: Int, item: Item) {
        self.position = position
        title = item.title
        score = item.score.formatted
        commentCount = item.commentCount.formatted
        footnote = item.url.formatted()
        + " - \(item.date.timeAgo)"
        + " - by \(item.author)"
    }
}
