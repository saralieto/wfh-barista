import Foundation

class MenuItem: Codable {
    var name: String
    var description: String
}

class MenuItemEntity {
    var name: String
    var description: String
    
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
}
