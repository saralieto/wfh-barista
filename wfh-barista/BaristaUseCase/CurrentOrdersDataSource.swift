import Foundation
import Combine

protocol CurrentOrdersDataSource {
    func getCurrentOrders() -> AnyPublisher<[String], Never>
}


class CurrentOrdersDataSourceImpl: CurrentOrdersDataSource {
    func getCurrentOrders() -> AnyPublisher<[String], Never> {
        return Future<[String], Never> { promise in
            promise(.success(["Temporary"]))
        }.eraseToAnyPublisher()
    }
}
