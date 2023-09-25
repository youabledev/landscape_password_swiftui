//
//  PasswordKeypadView.swift
//  kakaopassword_swiftui
//
//  Created by zumin you on 2023/09/26.
//

import SwiftUI

struct PasswordKeypadView: View {
    let numbers = [
        ["1", "2", "3"],
        ["4", "5", "6"],
        ["7", "8", "9"],
        [" ", "0", " "]
    ]
    
    let isOn: [[Bool]]
    let isOnChanged: (([[Bool]]) -> ())
    
    
    var body: some View {
        VStack(spacing: 0) {
            ForEach(0..<numbers.count, id: \.self) { rowIndex in
                HStack(spacing: 0) {
                    ForEach(0..<numbers[rowIndex].count, id: \.self) { columnIndex in
                        Button {
                            print(numbers[rowIndex][columnIndex])
                            var newIsOn = isOn
                            newIsOn[rowIndex][columnIndex].toggle()
                            isOnChanged(newIsOn)
                        } label: {
                            if rowIndex == numbers.count - 1 && columnIndex == numbers[rowIndex].count - 1 {
                                Image(systemName: "eraser")
                                    .keypadButtonStyle()
                                    
                            } else {
                                Text("\(numbers[rowIndex][columnIndex])")
                                    .keypadButtonStyle()
                                    .background(
                                        isOn[rowIndex][columnIndex] ? .blue : .white
                                    )
                            }
                        } //: Button
                    }
                }
            } //: ForEach
        } //: VStack
    }

}

#Preview {
    PasswordKeypadView(isOn:
        [
            [false, false, false],
            [false, true, false],
            [false, false, false],
            [false, false, false]
        ], isOnChanged: { _ in })
}
