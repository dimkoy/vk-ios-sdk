//
//  PostView.swift
//  vkwatch Extension
//
//  Created by Дмитрий Червяков on 30.10.2020.
//  Copyright © 2020 VK. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct PostView: View {
    var post: PostModel
    @State private var isFavorite: Bool = false

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                WebImage(url: URL(string: "https://sun9-51.userapi.com/impg/nBobjyazLVWoGB77Mgh1vugjxLwPFUExD8mLSA/VfrUQyRzJ-Q.jpg?size=100x0&quality=88&crop=1044,484,541,541&sign=235c184b1cecdb0963a18a6831178d2b&ava=1"))
                    .onSuccess { image, data, cacheType in
                    }
                    .resizable()
                    .placeholder {
                        Rectangle().foregroundColor(.gray)
                    }
                    .transition(.fade(duration: 0.5)) // Fade Transition with duration
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text(post.postAuhtor)
                        .font(.system(size: 13))
                    Text(post.forrmatedDate)
                        .font(.system(size: 13))
                        .foregroundColor(Color.gray)
                }
                .padding(.leading, 5.0)
            }
            if post.postImageUrl.count > 0 {
            WebImage(url: URL(string: post.postImageUrl))
                .onSuccess { image, data, cacheType in
                }
                .resizable()
                .placeholder {
                    Rectangle().foregroundColor(.gray)
                }
                .aspectRatio(contentMode: .fit)
                .transition(.fade(duration: 0.5))
                .scaledToFit()
                .cornerRadius(3.0)
            }
            Text(post.postText)
            HStack {
                Button(action: {
                    self.isFavorite.toggle()
                }, label: {
                    HStack(alignment: .center) {
                        Spacer()
                        Image(systemName: isFavorite ? "suit.heart.fill" : "suit.heart")
                        Text("\(isFavorite ? post.likesCount + 1 : post.likesCount)")
                        Spacer()
                    }
                })
                .frame(height: 32)
                .foregroundColor(Color.gray)
                .background(RoundedRectangle(cornerRadius: 12.0)
                                .fill(Color.gray.opacity(0.2)))
                Spacer()
                Button(action: {}, label: {
                    HStack {
                        Spacer()
                        Image(systemName: "bubble.right")
                        Text("\(post.commentsCount)")
                        Spacer()
                    }
                })
                .frame(height: 32)
                .foregroundColor(Color.gray)
                .background(RoundedRectangle(cornerRadius: 12.0)
                                .fill(Color.gray.opacity(0.2)))
                Spacer()
                Button(action: {

                }, label: {
                    HStack {
                        Spacer()
                        Image(systemName: "arrowshape.turn.up.right")
                        Text("\(post.repostCount)")
                        Spacer()
                    }
                })
                .frame(height: 32)
                .foregroundColor(Color.gray)
                .background(RoundedRectangle(cornerRadius: 12.0)
                                .fill(Color.gray.opacity(0.2)))
            }
            Spacer()
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: PostModel.mock().first!)
    }
}
