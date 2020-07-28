//
//  Details.swift
//  H4XOR News
//
//  Created by Himanshu Gupta on 21/06/20.
//  Copyright © 2020 mine. All rights reserved.
//
import WebKit
import SwiftUI

struct Details: View {
    
    let url : String?
    var body: some View {
        WebView(urlstring: url)
    }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        Details(url: "https://www.google.com")
    }
}


