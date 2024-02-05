//https://www.youtube.com/watch?v=3XLq6f1tbEM

// Almost every time we apply a modifier to a SwiftUI view, we actually create a new view with that change applied – we don’t just modify the existing view in place.

// !!! how modifiers work: each one creates a new struct with that modifier applied, rather than just setting a property on the view.

// The best way to think about it for now is to imagine that SwiftUI renders your view after every single modifier.

// Important NOTE: Of course, this isn’t actually how SwiftUI works, because if it did it would be a performance nightmare, but it’s a neat mental shortcut to use while you’re learning.

import SwiftUI

struct ModifiersOrder: View {

    var body: some View {
        Button("Hello, world!") {
            print(type(of: self.body))
        }
        .background(.red)
        .frame(width: 200, height: 200)
    }
}

#Preview {
    ModifiersOrder()
}
