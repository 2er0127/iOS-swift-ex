//
//  HomeView.swift
//  iOS-swift-ex
//
//

import SwiftUI
import WebKit

struct HomeView: View {
    @Binding var selectedTitle: String
    
    var body: some View {
        TabView(selection: $selectedTitle ) {
            MainView()
                .tag("마이페이지")
            MemoView()
                .tag("1:1 문의")
            DeleteView()
                .tag("???")
        }
        .frame(width: getRect().width)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MainView: View {
    var body: some View {
        ZStack {
            WebView(url: URL(string: "https://www.skshieldus.com/")!)
                .frame(width: 400, height: 550)
        }
    }
}

struct MemoView: View {
    var body: some View {
        ZStack {
            WebView(url: URL(string: "https://www.naver.com/")!)
                .frame(width: 400, height: 550)
        }
    }
}

struct DeleteView: View {
    var body: some View {
        ZStack {
            WebView(url: URL(string: "https://www.google.co.kr/")!)
                .frame(width: 400, height: 550)
        }
    }
}

struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

extension View {
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}
