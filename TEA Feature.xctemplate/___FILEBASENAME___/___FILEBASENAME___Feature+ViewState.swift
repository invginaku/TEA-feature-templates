// MARK: - ViewState
extension ___VARIABLE_productName___Feature {
    struct ViewState {
    }

    static func stateTransform() -> Tea.StateTransform<State, ViewState> {
        return { state in
            ViewState()
        }
    }
}
