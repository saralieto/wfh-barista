import Foundation
import Combine

protocol MenuDataSource {
    func getMenu() -> AnyPublisher<[String], Never>
}

class MenuDataSourceImpl: MenuDataSource {
    func getMenu() -> AnyPublisher<[String], Never> {
        return Future<[String], Never> { promise in
            promise(.success(["Temporary"]))
        }.eraseToAnyPublisher()
    }
}
