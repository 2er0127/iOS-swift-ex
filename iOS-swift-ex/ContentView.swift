//
//  ContentView.swift
//  iOS-swift-ex
//
// 앱의 기본 화면을 정의함. SwiftUI 프레임워크에서는 화면 구성을 위해 해당 파일을 주로 사용함.
// 앱의 UI 요소들을 구성하는 코드가 포함됨.

import SwiftUI

struct ContentView: View {
    @State var selectedTitle = "Main"
    @State var showSide = false
    @State var translation: CGSize = .zero
    @State var offsetX: CGFloat = -120
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        HStack {
            SideView(selectedTitle: $selectedTitle)
            ZStack {
                HomeView(selectedTitle: $selectedTitle)
            }
            .overlay(alignment: .topLeading, content: {
                VStack {
                    Button(action: {
                        withAnimation(.spring()){
                            showSide.toggle()
                        }
                    }) {
                        VStack(spacing: 5) {
                            Capsule()
                                .fill(Color.primary)
                                .frame(width: 30, height: 3)
                                .rotationEffect(.degrees(showSide ? 45 : 0))
                                .offset(y: showSide ? 8 : 0)
                            Capsule()
                                .fill(Color.primary)
                                .frame(width: 30, height: 3)
                                .opacity(showSide ? 0 : 1)
                            Capsule()
                                .fill(Color.primary)
                                .frame(width: 30, height: 3)
                                .rotationEffect(.degrees(showSide ? -45 : 0))
                                .offset(y: showSide ? -8 : 0)
                        }
                        .padding()
                    }
                }
            })
        }
        .offset(x: (translation.width + offsetX) > -120 ? ((translation.width + offsetX) < 120 ? translation.width + offsetX : 120 ) : -120)
        .onChange(of: showSide) {_ in
            withAnimation(.spring()) {
                if showSide && offsetX == -120 {
                    offsetX = 120
//                    print("showSide ON")
                }
                if !showSide && offsetX == 120 {
                    offsetX = -120
//                    print("showSide OFF")
                }
            }
        }
        .gesture(
            DragGesture()
                .onChanged { value in
                    translation = value.translation
                }
                .onEnded {_ in
                    withAnimation(.spring()) {
                        let dragOffset = translation.width + offsetX

                        if dragOffset > -100 && offsetX == -120 {
                            offsetX = 120
                            showSide = true
                        } else if dragOffset < 100 && offsetX == 120 {
                            offsetX = -120
                            showSide = false
                        }
                        translation = .zero
                    }
                }
        )
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

