//
//  KeypadView.swift
//  kakaopassword_swiftui
//
//  Created by zumin you on 2023/09/19.
//

import SwiftUI

struct KeypadView: View {
    let numbers = [
        ["1", "2", "3"],
        ["4", "5", "6"],
        ["7", "8", "9"],
        [" ", "0", " "]
    ]
    
    var body: some View {
        VStack(spacing: 0) {
            ForEach(0..<numbers.count, id: \.self) { rowIndex in
                HStack(spacing: 0) {
                    ForEach(0..<numbers[rowIndex].count, id: \.self) { columnIndex in
                        Button {
                            print(numbers[rowIndex][columnIndex])
                        } label: {
                            if rowIndex == numbers.count - 1 && columnIndex == numbers[rowIndex].count - 1 {
                                Image(systemName: "eraser")
                                    .keypadButtonStyle()
                                    
                            } else {
                                Text("\(numbers[rowIndex][columnIndex])")
                                    .keypadButtonStyle()
                            }
                        } //: Button
                    }
                }
            } //: ForEach
        } //: VStack
    }
}

struct KeypadButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundStyle(.black)
            .padding(.vertical, 20)
            .frame(maxWidth: .infinity)
    }
}

extension View {
    func keypadButtonStyle() -> some View {
        self.modifier(KeypadButtonStyle())
    }
}

#Preview {
    KeypadView()
}
