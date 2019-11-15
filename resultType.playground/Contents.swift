import Cocoa

struct MyCustomError: Error {}

func getMessage(completion: @escaping (Result<String, Error>) -> Void) {
    completion(.success("It worked!"))
}

getMessage { result in
    switch result {
        case .success(let msg): print("message:", msg)
        case .failure(let error): print("error:", error)
        default: print ("def")
    }
}
