//
//  PasswordView.swift
//  kakaopassword_swiftui
//
//  Created by zumin you on 2023/09/26.
//

import SwiftUI

struct PasswordView: View {
    @StateObject var passwordViewModel = PasswordViewModel()
    
    var body: some View {
        LandscapeManageView {
            Spacer()
            PasswordInfoView(inputPasswordCount: $passwordViewModel.inputPassword)
            Spacer()
            PasswordKeypadView(isOn: passwordViewModel.isOn) { newIsOn in
                passwordViewModel.isOn = newIsOn
            }
        }
    }
}

#Preview {
    PasswordView()
}
