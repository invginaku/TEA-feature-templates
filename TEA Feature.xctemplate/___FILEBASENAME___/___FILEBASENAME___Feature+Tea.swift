import Combine

extension ___VARIABLE_productName___Feature {
    static func featureParams(
        effectHandler: @escaping Tea.EffectHandler<Effect, Msg>
    ) -> TeaFeature.Params {
        return Tea.Feature.Params(
            initialization: {
                .init(
                    state: State()
                )
            },
            update: makeUpdate(),
            effectHandler: effectHandler
        )
    }
}

// MARK: - State
extension ___VARIABLE_productName___Feature {
    struct State: Equatable {
    }
}

// MARK: - Message
protocol ___VARIABLE_productName___FeatureMsg { }

extension ___VARIABLE_productName___Feature {
    typealias Msg = ___VARIABLE_productName___FeatureMsg

    fileprivate static func makeUpdate() -> Tea.Update<State, Msg, Effect> {
        let internalUpdate = makeInternalUpdate()
        let externalUpdate = makeExternalUpdate()
        return { msg, state in
            switch msg {
            case let value as InternalMsg:
                return internalUpdate(value, state)
            case let value as ExternalMsg:
                return externalUpdate(value, state)
            default:
                fatalError("Unknown msg type")
            }
        }
    }

    enum ExternalMsg: Msg {
    }

    private static func makeExternalUpdate() -> Tea.Update<State, ExternalMsg, Effect> {
        return { msg, state in
            switch msg {
            }
        }
    }

    fileprivate enum InternalMsg: Msg {
    }

    private static func makeInternalUpdate() -> Tea.Update<State, InternalMsg, Effect> {
        return { msg, state in
            switch msg {
            }
        }
    }
}

// MARK: - Effect
extension ___VARIABLE_productName___Feature {
    enum Effect {
        case sendOutputEvent(event: OutputEvent)
    }

    enum OutputEvent {
    }

    enum InputEvent {
    }

    static func effectHandler(
        input: AnyPublisher<InputEvent, Never>,
        output: @escaping (OutputEvent) -> Void
    ) -> Tea.EffectHandler<Effect, Msg> {
        return { effect in
            switch effect {

            case .sendOutputEvent(event: let event):
                output(event)
                return Empty().eraseToAnyPublisher()
            }
        }
    }
}
