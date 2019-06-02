import FluentSQLite
import Vapor

final class Test: SQLiteModel {
    var id: Int?
    var title: String
    var body: String
    
    init(id: Int?=nil, title: String, body: String) {
        self.id = id
        self.title = title
        self.body = body
    }
}

/// Allows `Todo` to be used as a dynamic migration.
extension Test: Migration { }

/// Allows `Todo` to be encoded to and decoded from HTTP messages.
extension Test: Content { }

/// Allows `Todo` to be used as a dynamic parameter in route definitions.
extension Test: Parameter { }
