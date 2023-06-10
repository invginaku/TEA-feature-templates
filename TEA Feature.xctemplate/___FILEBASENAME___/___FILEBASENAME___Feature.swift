import Combine
import SwiftUI

class ___VARIABLE_productName___Feature {
    typealias TeaFeature = Tea.Feature<State, Msg, Effect>
    typealias ViewStore = Tea.ViewStore<TeaFeature, ViewState>

    func makeViewStore(
        input: AnyPublisher<InputEvent, Never>,
        output: @escaping (OutputEvent) -> Void
    ) -> ViewStore {
        return Tea.ViewStore(
            feature: Tea.Feature(
                params: Self.featureParams(
                    effectHandler: Self.effectHandler(
                        input: input,
                        output: output
                    )
                )
            ),
            stateTransform: Self.stateTransform()
        )
    }

    func makeView(_ store: ViewStore) -> some View {
        return ___VARIABLE_productName___View(feature: store)
