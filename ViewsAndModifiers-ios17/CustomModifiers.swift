// https://www.youtube.com/watch?v=z_Fk7LUXKkk

//Tip: Often folks wonder when it’s better to add a custom view modifier versus just adding a new method to View, and really it comes down to one main reason: custom view modifiers can have their own stored properties, whereas extensions to View cannot.

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct Watermark: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct CustomModifiers: View {
    var body: some View {
        VStack() {
            Text("Hello World")
                .frame(width:  100, height: 100)
                .border(.blue, width: 1)
//                .modifier(Title())
//                .titleStyle()
                .watermarked(with: "test")
        }
        .padding()
        .border(.red, width: 1)
    }
}

#Preview {
    CustomModifiers()
}
