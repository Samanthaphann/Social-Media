//
//  ContentView.swift
//  styles
//
//  Created by StudentAM on 5/6/24.
//

import SwiftUI

struct ContentView: View {
    @State private var pageIndex = 0
    private let pages: [Page] = Page.samplePages
    private let dotAppearance = UIPageControl.appearance()
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 243/255, green: 237/255, blue: 225/255)
                TabView(selection: $pageIndex){
                    ForEach(pages) { page in
                        VStack{
                            ZStack{
                                PageView(page: page)
                                
                                VStack{
                                    Spacer(minLength: 750)
                                    if page == pages.last{
                                        NavigationLink(destination: Login(username: "", password: ""), label: {
                                            Text("login here!")
                                        })
                                        .frame(width: 200)
                                        .foregroundColor(Color(red: 183/255, green: 65/255, blue: 64/255))
                                        
                                        
                                    }
                                    Spacer()
                                }
                            }
                        }
                        .tag(page.tag)
                    }
                }
                .ignoresSafeArea()
                .offset(x:2.25)
                .animation(.easeInOut, value: pageIndex)
                .tabViewStyle(.page)
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .interactive))
                
                
                
                .onAppear{
                    dotAppearance.currentPageIndicatorTintColor = .black
                    dotAppearance.currentPageIndicatorTintColor = .gray
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
