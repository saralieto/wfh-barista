import Foundation
import Combine

public protocol PatronUseCase {
    func displayItems() -> AnyPublisher<[String], Never>
    func add(item: String)
}


public class PatronInteractor: PatronUseCase {
    public func displayItems() -> AnyPublisher<[String], Never> {
        return dataSource.getMenu()
    }
    
    public func add(item: String) {
        // cart datasource
    }
    
    var dataSource: MenuDataSource
    
    init(menuDataSource: MenuDataSource) {
        self.dataSource = menuDataSource
    }
}
