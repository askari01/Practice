import UIKit
import PlaygroundSupport

var str = "786"

let width: CGFloat = 640
let height: CGFloat = 640

let shapeLayer = CAShapeLayer()
shapeLayer.frame = CGRect(x: 0,
                          y: 0,
                          width: width,
                          height: height)

let path = CGMutablePath()
print (CGFloat.pi*2)
print (CGFloat.pi/30)
stride(from: 0,
       to: CGFloat.pi*2,
       by: CGFloat.pi/30).forEach { (angle) in
        var transform = CGAffineTransform(rotationAngle: angle)
            .concatenating(CGAffineTransform(translationX: width/2,
                                             y: height/2))

        let petal = CGPath(ellipseIn: CGRect(x: -20,
                                             y: 0,
                                             width: 40,
                                             height: 100),
                           transform: &transform)
        
        path.addPath(petal)
        
}

shapeLayer.path = path
shapeLayer.strokeColor = UIColor.red.cgColor
shapeLayer.fillColor = UIColor.yellow.cgColor
shapeLayer.fillRule = .evenOdd

let view = UIView(frame: CGRect(x: 0,
                                y: 0,
                                width: 640,
                                height: 640))
view.layer.addSublayer(shapeLayer)

view.translatesAutoresizingMaskIntoConstraints = false
view.backgroundColor = UIColor.white
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = view
