//
//  WebView.swift
//  H4XOR News
//
//  Created by Himanshu Gupta on 21/06/20.
//  Copyright © 2020 mine. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView : UIViewRepresentable {
    
    let urlstring : String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safestring = urlstring {
            if let url = URL(string: safestring){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
