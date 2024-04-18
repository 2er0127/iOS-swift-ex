//
//  ContentView.swift
//  iOS-swift-ex
//
// 앱의 기본 화면을 정의함. SwiftUI 프레임워크에서는 화면 구성을 위해 해당 파일을 주로 사용함.
// 앱의 UI 요소들을 구성하는 코드가 포함됨.

import SwiftUI
import WebKit

struct ContentView: View {
    let webViewURL = URL(string: "https://www.skshieldus.com/")! // 해당 URL
    let webView = WKWebView()
    
    var body: some View {
        Rectangle()
                    .fill(Color.blue)
                    .frame(width: 300, height: 600)
                    .overlay(
                        WebView(webView: webView, url: webViewURL)
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                    let request = URLRequest(url: self.webViewURL)
                                    self.webView.load(request)
                                }
                            }
                    )
            }
}

struct WebView: UIViewRepresentable {
    let webView: WKWebView
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
