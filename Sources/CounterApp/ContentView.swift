
import SwiftUI

struct ContentView: View {

    @State private var count = 0

    var body: some View {
        VStack(spacing: 25) {

            Text("My First iOS App")
                .font(.largeTitle)
                .bold()

            Text("\(count)")
                .font(.system(size: 60))
                .accessibilityIdentifier("counterValue")

            HStack {
                Button("Decrease") {
                    count -= 1
                }
                .accessibilityIdentifier("decrementButton")

                Button("Increase") {
                    count += 1
                }
                .accessibilityIdentifier("incrementButton")
            }
            .buttonStyle(.borderedProminent)

            Button("Reset") {
                count = 0
            }
            .accessibilityIdentifier("resetButton")
        }
        .padding()
    }
}
