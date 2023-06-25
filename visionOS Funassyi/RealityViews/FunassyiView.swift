//
//  Funassyi.swift
//  visionOS Funassyi
//
//  Created by Takahiko Inayama on 2023/06/25.
//

import SwiftUI
import RealityKit

struct FunassyiView: View {
    var body: some View {
        RealityView { content in
            let entity = try! await Entity.load(named: "Funassyi")
            entity.position.y = -0.6
//            entity.transform.rotation.vector = SIMD4<Float>(0.0, 0.75, 0.0, 1.0)
//            print(entity.transform.rotation.vector)
            content.add(entity)

        }
    }
}

#Preview {
    FunassyiView()
}
