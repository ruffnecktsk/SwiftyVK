public protocol SendableMethod {
    func toRequest() -> Request
}

public extension SendableMethod {
    
    @discardableResult
    func send() -> Task {
        return send(in: nil)
    }
    
    @discardableResult
    func send(in session: Session?) -> Task {
        guard let session = session ?? VK.sessions?.default else {
            fatalError("You must call VK.prepareForUse function to start using SwiftyVK!")
        }
        
        return session.send(method: self)
    }
}

public protocol Method: SendableMethod {}

public extension Method {
    func onSuccess(_ clousure: @escaping RequestCallbacks.Success) -> Methods.FailableProgressableConfigurable {
        let request = toRequest()
        request.callbacks.onSuccess = clousure
        return .init(request)
    }
    
    func onError(_ clousure: @escaping RequestCallbacks.Error) -> Methods.SuccessableProgressableConfigurable {
        let request = toRequest()
        request.callbacks.onError = clousure
        return .init(request)
    }
    
    func onProgress(_ clousure: @escaping RequestCallbacks.Progress) -> Methods.SuccessableFailableConfigurable {
        let request = toRequest()
        request.callbacks.onProgress = clousure
        return .init(request)
    }
    
    func configure(with config: Config) -> Methods.SuccessableFailableProgressable {
        let request = toRequest()
        request.config = config
        return .init(request)
    }
    
    func chain(_ next: @escaping (Data) -> SendableMethod) -> Methods.SuccessableFailableProgressableConfigurable {
        let request = toRequest()
        request.add(next: next)
        return .init(request)
    }
}

public struct Methods {}
