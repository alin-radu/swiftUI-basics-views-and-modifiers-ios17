//https://www.youtube.com/watch?v=gc8BuZdCX40

import SwiftUI

struct ViewsAsProperties: View {
    let motto1 = Text("Draco dormiens")
    let motto2 = Text("nunquam titillandus")
    
    var spells1: some View {
        VStack {
            Text("Lumos")
            Text("Obliviate")
        }
    }
    
    var spells2: some View {
        Group {
            Text("Lumos")
            Text("Obliviate")
        }
    }
    
    @ViewBuilder var spells3: some View {
        Text("Lumos")
        Text("Obliviate")
    }

    var body: some View {
        VStack {
            motto1
                .foregroundStyle(.red)
            motto2
                .foregroundStyle(.blue)
        }
        .padding()
    }
}

#Preview {
    ViewsAsProperties()
}

