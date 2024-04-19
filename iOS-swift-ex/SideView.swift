//
//  SideView.swift
//  iOS-swift-ex
//
//  Created by 이선아 on 4/19/24.
//

import SwiftUI

struct SideView: View {
    @Binding var selectedTitle: String
    @Namespace var namespace
    var body: some View {
        ZStack(alignment: .leading) {
            Color.black.ignoresSafeArea()
            VStack {
                Text("SideView")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(22)
                Spacer()
                // SideTapButtom
                VStack(spacing: 15) {
                    TapButton(image: "house", title: "마이페이지", selectedTitle: $selectedTitle, namespace: namespace)
                    TapButton(image: "square.and.pencil", title: "1:1 문의", selectedTitle: $selectedTitle, namespace: namespace)
                    TapButton(image: "trash", title: "???", selectedTitle: $selectedTitle, namespace: namespace)
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
