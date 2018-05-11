//: Playground - noun: a place where people can play

import UIKit
class Node{
    let value : Int
    var next : Node?
    init(value:Int) {
        self.value = value
    }
}
class stack{
    static var top : Node?
    static func push(_ value:Int){
        let oldnode = top
        top = Node(value: value)
        top?.next = oldnode
    }
    static func pop()->Int?{
        let value = top?.value
        top = top?.next
        return value
    }
    static func peek (){
        var current = top
        while current != nil {
            print("Vlaues in \(current?.value ?? -0)")
            current = current?.next
        }
    }
}
stack.push(90)
stack.push(56)
stack.push(12)
stack.peek()
stack.pop()
stack.pop()
stack.pop()
stack.pop()
