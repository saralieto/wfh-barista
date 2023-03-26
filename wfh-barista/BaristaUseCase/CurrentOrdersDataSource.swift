import Foundation
import Combine

protocol CurrentOrdersCaseDataSource {
    func getCurrentOrders() -> AnyPublisher<[String], Never>
}
