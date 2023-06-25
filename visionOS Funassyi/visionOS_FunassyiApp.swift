//
//  visionOS_FunassyiApp.swift
//  visionOS Funassyi
//
//  Created by Takahiko Inayama on 2023/06/25.
//

import SwiftUI

@main
struct visionOS_FunassyiApp: App {
    @State var isShowing = false
    var body: some Scene {
        WindowGroup {
            WelcomeView(isShowing: $isShowing)
        }
        WindowGroup(id: "funassyi") {
            FunassyiView()
        }.windowStyle(.volumetric)
    }
}
