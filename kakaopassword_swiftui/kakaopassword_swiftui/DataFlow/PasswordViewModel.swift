//
//  PasswordViewModel.swift
//  kakaopassword_swiftui
//
//  Created by zumin you on 2023/09/26.
//

import Foundation

class PasswordViewModel: ObservableObject {
    let userPassword = ["5", "3", "2", "9"]
    
    /// 사용자가 입력한 비밀번호
    @Published var inputPassword: [String] = []
    /// 버튼의 상태값 표시
    @Published var isOn = [
        [false, false, false],
        [false, false, false],
        [false, false, false],
        [false, false, false]
    ]
}
