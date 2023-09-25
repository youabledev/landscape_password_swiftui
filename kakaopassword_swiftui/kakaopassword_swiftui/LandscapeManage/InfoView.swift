//
//  InfoView.swift
//  kakaopassword_swiftui
//
//  Created by zumin you on 2023/09/19.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack(spacing: 0) {
            Text("암호 입력")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 10)
            
            Text("카카오톡 암호를 입력해 주세요.")
                .foregroundStyle(.gray)
                .font(.system(size: 14))
                .padding(.bottom, 18)
            
            HStack(spacing: 20) {
                ForEach(0..<4) { index in
                    Image(systemName: "circle")
                }
            }
        }
    }
}

#Preview {
    InfoView()
        .previewLayout(.sizeThatFits)
        .padding(10)
}
