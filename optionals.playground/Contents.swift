import Cocoa

struct InterState{
    var width: Int
    var height: Int
    
    init?(_ size: CGSize) {
        self.width = Int(size.width)
        self.height = Int(size.height)
    }
}




