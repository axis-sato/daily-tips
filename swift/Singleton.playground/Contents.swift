import Foundation

class NetworkManager {
    static let shared = NetworkManager(baseURL: URL(string: "base.url")!)
    
    let baseURL: URL
    
    private init(baseURL: URL) {
        self.baseURL = baseURL
    }
}

NetworkManager.shared
