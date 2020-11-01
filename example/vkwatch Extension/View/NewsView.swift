//
//  NewsView.swift
//  vkwatch Extension
//
//  Created by Дмитрий Червяков on 31.10.2020.
//  Copyright © 2020 VK. All rights reserved.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        List{
            PostView(post: PostModel.mock()[0])
            PostView(post: PostModel.mock()[1])
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
