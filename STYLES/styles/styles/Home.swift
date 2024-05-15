//
//  Home.swift
//  styles
//
//  Created by StudentAM on 5/13/24.
//

import SwiftUI

struct Home: View {
    @State var posts: Int = 0
    @State var followers: Int = 0
    @State var following: Int = 0
    var body: some View {
        ZStack {
            VStack{
                ZStack{
                    Rectangle()
                        .frame(width: 300, height: 100)
                        .cornerRadius(5)
                        .foregroundColor(Color(red: 188/255, green: 137/255, blue: 136/255))
                    Image("pic")
                        .offset(x:-100)
                        .frame(height: 1)
                    Text("username")
                        .offset(x:-10,y:-25)
                        .foregroundColor(.black)
                    Text("\(posts)")
                        .font(.custom("AbrilFatface-Regular", size: 12))
                        .frame(height: 1)
                        .offset(x:-31, y:5)
                        .foregroundColor(.black)
                    Text("posts")
                        .font(.custom("AbrilFatface-Regular", size: 12))
                        .frame(height: 1)
                        .offset(x:-31, y:25)
                        .foregroundColor(.black)
                    Text("\(followers)")
                        .font(.custom("AbrilFatface-Regular", size: 12))
                        .frame(height: 1)
                        .offset(x:30, y:5)
                        .foregroundColor(.black)
                    Text("followers")
                        .font(.custom("AbrilFatface-Regular", size: 12))
                        .frame(height: 1)
                        .offset(x:30, y:25)
                        .foregroundColor(.black)
                    Text("\(following)")
                        .font(.custom("AbrilFatface-Regular", size: 12))
                        .frame(height: 1)
                        .offset(x:100, y:5)
                        .foregroundColor(.black)
                    Text("following")
                        .font(.custom("AbrilFatface-Regular", size: 12))
                        .frame(height: 1)
                        .offset(x:100, y:25)
                        .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    Home()
}
