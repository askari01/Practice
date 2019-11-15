import Cocoa

protocol Drawing {
    func render()
}

extension Drawing {
    func circle() {
        print ("protocol")
    }
    func render() {
        circle()
    }
}

class SVG: Drawing {
    func circle() {
        print ("class")
    }
}

SVG().render() // my answer was protocol
