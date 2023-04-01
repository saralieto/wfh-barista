import Foundation

class MenuItem: Codable {
    var uid: String
    var name: String
    var description: String
}

class MenuItemEntity {
    var uid: String
    var name: String
    var description: String
    
    init(uid: String, name: String, description: String) {
        self.uid = uid
        self.name = name
        self.description = description
    }
}
