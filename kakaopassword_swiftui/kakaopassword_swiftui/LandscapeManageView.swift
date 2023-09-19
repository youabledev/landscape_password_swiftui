//
//  LandscapeManageView.swift
//  kakaopassword_swiftui
//
//  Created by zumin you on 2023/09/19.
//

import SwiftUI

struct LandscapeManageView<Content: View>: View {
    
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        GeometryReader { geometry in
            if geometry.size.height > geometry.size.width {
                VStack {
                    content
                } //: VStack
            } else {
                HStack(alignment: .center) {
                    content
                } //: HStack
                .frame(maxHeight: .infinity)
            }
        } //: GeometryReader
    }
}

#Preview {
    LandscapeManageView {
        Text("test")
    }
}
