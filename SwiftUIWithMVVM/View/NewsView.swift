//
//  NewsView.swift
//  SwiftUIWithMVVM
//
//  Created by Abul Kalam Azad on 21/8/23.
//

import SwiftUI

struct NewsView: View {
    @StateObject private var model = NewsViewModel()
    
    var body: some View {
        List(model.stories.indices) { index in
            if let story = model.stories[index] {
                Story(position: index + 1, item: story)
            }
        }
        .navigationTitle("News")
        .onAppear(perform: model.fetchTopStories)
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Story(position: 1, item: TestData.story)
            Position(position: 1)
            Badge(text: "1.234", imageName: "paperplane")
            NewsView()
        }
        .previewLayout(.sizeThatFits)
    }
}


