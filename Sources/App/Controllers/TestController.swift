import Vapor
import SwiftMarkdown

final class TestController {
    
    func index(_ req: Request) throws -> Future<[Test]> {
        return Test.query(on: req).all()
    }
    
    func create(_ req: Request) throws -> Future<Test> {
        return try req.content.decode(Test.self).flatMap { todo in
            return todo.save(on: req)
        }
    }
    
    func greet(_ req: Request) throws -> String {
        let markdown = "# Hello"
        let html = try markdownToHTML(markdown)
        return html
    }
}
