//  HomeView.swift
//  iOS-swift-ex

import SwiftUI
import WebKit

struct HomeView: View {
    @Binding var selectedTitle: String
    
    var body: some View {
        TabView(selection: $selectedTitle ) {
            MainView()
                .tag("메인 페이지")
            CategoriView_1()
                .tag("카테고리1")
            CategoriView_2()
                .tag("카테고리2")
            CategoriView_3()
                .tag("카테고리3")
            MyPageView()
                .tag("마이페이지")
            AskView()
                .tag("1:1 문의")
            NoticeView()
                .tag("공지사항")
            FaqView()
                .tag("FAQ")
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
            //.frame(width: 400, height: 550)
        }
    }
}

struct CategoriView_1: View {
    var body: some View {
        ZStack {
            WebView(url: URL(string: "https://www.naver.com/")!)
            //.frame(width: 400, height: 550)
        }
    }
}

struct CategoriView_2: View {
    var body: some View {
        ZStack {
            WebView(url: URL(string: "https://www.naver.com/")!)
            //.frame(width: 400, height: 550)
        }
    }
}

struct CategoriView_3: View {
    var body: some View {
        ZStack {
            WebView(url: URL(string: "https://www.naver.com/")!)
            //.frame(width: 400, height: 550)
        }
    }
}

struct MyPageView: View {
    var body: some View {
        ZStack {
            WebView(url: URL(string: "https://www.google.co.kr/")!)
            //.frame(width: 400, height: 550)
        }
    }
}

struct AskView: View {
    var body: some View {
        ZStack {
            WebView(url: URL(string: "https://www.google.co.kr/")!)
            //.frame(width: 400, height: 550)
        }
    }
}

struct NoticeView: View {
    var body: some View {
        ZStack {
            WebView(url: URL(string: "https://www.google.co.kr/")!)
            //.frame(width: 400, height: 550)
        }
    }
}

struct FaqView: View {
    var body: some View {
        ZStack {
            WebView(url: URL(string: "https://www.google.co.kr/")!)
            //.frame(width: 400, height: 550)
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
