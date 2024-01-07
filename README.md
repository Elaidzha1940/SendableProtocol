Sendable.
=========

`````````ruby

struct MyUserInfo: Sendable {
    var name: String
}

// Not recomanded to do this:
final class MyClassUserInfo: @unchecked Sendable {
    private var name: String
    let queue = DispatchQueue(label: "com.MyApp.MyClassUserInfo")
    
    init(name: String) {
        self.name = name
    }
    
    func updateName(ame: String) {
        queue.async {
            self.name = self.name
        }
    }
}

`````````
