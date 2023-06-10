import SwiftUI

struct ___VARIABLE_productName___View: View {
    @ObservedObject var feature: ___VARIABLE_productName___Feature.ViewStore

    var body: some View {
        switch feature.state {
        case .preparing:
            Text("preparing")
        case .initialized(let state):
            Text("initialized")
        }
    }
}
