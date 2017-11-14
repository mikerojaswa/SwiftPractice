//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var downloadQueue:OperationQueue = {
    var queue = OperationQueue()
    queue.name = "Download queue"
    queue.maxConcurrentOperationCount = 1
    return queue
}()

downloadQueue.addOperation {
    print("HI")
    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
        print("Hello")
    })
}


