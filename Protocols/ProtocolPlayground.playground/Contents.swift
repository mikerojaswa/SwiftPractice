//: Playground - noun: a place where people can play

import UIKit

protocol Vehicle {
    var engine: EngineSize { get }
    var transmission: Transmission { get }
    var numWheels: Int { get }
    var doesWork: Bool { get }
    var driverType: DriverType { get }
}

enum Transmission{
    case manual
    case automatic
}

enum EngineSize{
    case oneLiter
    case twoLiter
    case threeLiter
}

enum DriverType{
    case average
    case aggressive
    case tailgater
    case newDriver
    case driverWithLoudMusic
    case distractedDriver
    case angryPickUpDriver
    case grandmaDriver
}

protocol Color {
    var color: PaintColor { get }
}

enum PaintColor{
    case rustyGreen
    case yuckyYellow
    case blandBlack
    case repulsiveRed
    case blue
}

struct Car: Vehicle, Color{
    var engine: EngineSize
    var transmission: Transmission
    var numWheels: Int
    var doesWork: Bool
    var driverType: DriverType
    var color: PaintColor
}


let BMW = Car(engine: .threeLiter, transmission: .manual, numWheels: 4, doesWork: true, driverType: .aggressive, color: .blandBlack)