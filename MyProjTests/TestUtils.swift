import Foundation

struct Sample: Decodable, Equatable {
    let key: String
}
private final class Dummy {}

extension Bundle {
    static var test: Bundle {
        Bundle(for: Dummy.self)
    }
}
