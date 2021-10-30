//
//  WebView.swift
//  H4CKER News
//
//  Created by Aitor Trujillo on 13/10/21.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let req = URLRequest(url: url)
                uiView.load(req)
            }
        }
    }
}
