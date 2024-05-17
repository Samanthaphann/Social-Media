//
//  PageView.swift
//  styles
//
//  Created by StudentAM on 5/8/24.
//

import SwiftUI

struct PageView: View {
    var page:Page
    var body: some View {
            if page.tag == 0{
                ZStack{
                    //shows the first image and the rectangle and text
                    Image("\(page.image)")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                    
                    VStack {
                        Rectangle()
                            .frame(width: 345,height: 720)
                            .foregroundColor(Color(red: 183/255, green: 65/255, blue: 64/255))
                            .opacity(0.3)
                    }
                    
                    VStack {
                        Text("STYLES")
                            .font(.custom("AbrilFatface-Regular", size: 48))
                            .foregroundColor(Color(red: 243/255, green: 237/255, blue: 225/255))
                        Text("FIND YOUR OUTFIT")
                            .foregroundColor(Color(red: 243/255, green: 237/255, blue: 225/255))
                    }
                }
            } else{
                //if it's not the first image, it just shows it ithout the styling
                Image("\(page.image)")
                    .resizable()
                    .ignoresSafeArea()
            }
    }

}

#Preview {
    PageView(page: Page.samplePage)
}
