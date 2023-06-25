//
//  WelcomeView.swift
//  visionOS Funassyi
//
//  Created by Takahiko Inayama on 2023/06/25.
//

import SwiftUI

struct WelcomeView: View {
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow
    @Binding var isShowing: Bool
    var body: some View {
        VStack {
            Text("フナディウス4世")

            Toggle("ひゃっはーーーー！", isOn: $isShowing)
                .padding(.all)
                .onChange(of: isShowing) { wasShowing, isShowing in
                    if isShowing {
                        openWindow(id: "funassyi")
                    } else {
                        dismissWindow(id: "funassyi")
                    }
                }
                .toggleStyle(.button)
        }
    }
}

#Preview {
    @State var isShowing = false
    return WelcomeView(isShowing: $isShowing)
}
