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
                        //shows each page
                        VStack{
                            ZStack{
                                //pops up page
                                PageView(page: page)
                                
                                VStack{
                                    //makes the button appear on button
                                    Spacer(minLength: 720)
                                    //if it is the last page, it shows the button
                                    //navigates to login page
                                    if page == pages.last{
                                        NavigationLink(destination: Login(username: "", password: ""), label: {
                                            Text("login here!")
                                                .font(.custom("AbrilFatface-Regular", size: 40))
                                                
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
                
                
                //shows the dots on the bottom
                //when you're on the page it appears black
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
