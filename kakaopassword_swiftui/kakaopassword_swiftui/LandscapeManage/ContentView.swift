//
//  ContentView.swift
//  kakaopassword_swiftui
//
//  Created by zumin you on 2023/09/19.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        LandscapeManageView {
            Spacer()
            InfoView()
            Spacer()
            KeypadView()
        }
    }
}

#Preview {
    ContentView()
}
