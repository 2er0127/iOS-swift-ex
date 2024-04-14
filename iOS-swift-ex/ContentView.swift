//
//  ContentView.swift
//  iOS-swift-ex
//
//  Created by zero on 4/13/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            Link(destination: URL(string: "https://www.skshieldus.com/" )!) {
                Text("Safari App으로 이동하기")
            }
        }
}

#Preview {
    ContentView()
}
