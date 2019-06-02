import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "It works!"
    }
    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }
    
    router.get("test") { req in
        return "Hello, again!"
    }
    
    let testController = TestController()
    router.get("greet", use: testController.greet)
    router.get("tests", use: testController.index)
    router.post("tests", use: testController.create)
    
    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
    
    
}
