//  TapButton.swift
//  iOS-swift-ex

import SwiftUI

struct TapButton: View {
    
    var image: String
    var title: String
    @Binding var selectedTitle: String
    var namespace: Namespace.ID
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()) {
                selectedTitle = title
            }
        }) {
            HStack(spacing: 20){
                Image(systemName: image)
                    .frame(width: 10)
                    .font(.system(size: 22, weight: .regular))
                Text(title)
                    .fontWeight(.semibold)
            }
        }
        .foregroundColor(.white)
        .padding(.vertical, 10)
        .padding(.leading, 20)
        .frame(maxWidth: 180, alignment: .leading)
        .background(
            ZStack {
                if selectedTitle == title {
                    Color(hue: 1.0, saturation: 0.0, brightness: 0.046)
                        .opacity(selectedTitle == title ? 1 : 0)
                        .matchedGeometryEffect(id: "TapEffect", in: namespace)
                }
            }
        )
    }
}

struct TapButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

