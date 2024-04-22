//  SideView.swift
//  iOS-swift-ex

import SwiftUI

struct SideView: View {
    @Binding var selectedTitle: String
    @Namespace var namespace
    var body: some View {
        ZStack(alignment: .leading) {
            Color.black.ignoresSafeArea()
            VStack {
                Text("Menu") // SideView_name
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(22)
                Spacer()
                // 메뉴바 리스트
                VStack(spacing: 15) {
                    TapButton(image: "house.fill", title: "메인 페이지", selectedTitle: $selectedTitle, namespace: namespace)
                    TapButton(image: "minus", title: "", selectedTitle: $selectedTitle, namespace: namespace)
                    TapButton(image: "tray.fill", title: "카테고리1", selectedTitle: $selectedTitle, namespace: namespace)
                    TapButton(image: "tray.fill", title: "카테고리2", selectedTitle: $selectedTitle, namespace: namespace)
                    TapButton(image: "tray.fill", title: "카테고리3", selectedTitle: $selectedTitle, namespace: namespace)
                    TapButton(image: "minus", title: "", selectedTitle: $selectedTitle, namespace: namespace)
                    TapButton(image: "person.circle", title: "마이페이지", selectedTitle: $selectedTitle, namespace: namespace)
                    TapButton(image: "square.and.pencil", title: "1:1 문의", selectedTitle: $selectedTitle, namespace: namespace)
                    TapButton(image: "book.pages", title: "공지사항", selectedTitle: $selectedTitle, namespace: namespace)
                    TapButton(image: "questionmark.diamond", title: "FAQ", selectedTitle: $selectedTitle, namespace: namespace)
                }
                Spacer()
            }
            .ignoresSafeArea(edges: .bottom)
        }
        .frame(width: 240)
    }
}

struct SideView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
