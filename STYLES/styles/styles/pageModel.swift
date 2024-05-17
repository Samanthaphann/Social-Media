//
//  pageModel.swift
//  styles
//
//  Created by StudentAM on 5/8/24.
//

import SwiftUI

struct Page: Identifiable, Equatable{
    //creates the variables for the page
    let id = UUID()
    var image: String
    var tag: Int
    
    static var samplePage = Page(image: "Image", tag: 0)
    static var samplePages: [Page] = [
        //each page has a image, and tag
     Page(image: "Image", tag: 0),
     Page(image: "2", tag: 1),
     Page(image: "3", tag: 2),
    ]
}
