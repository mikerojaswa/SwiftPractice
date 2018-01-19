//: Playground - noun: a place where people can play
import Foundation

//Notice how en_GB produces a 24 hour style format. of HH:mm:ss z

let localeArray = ["en_GB", "en_US", "en_CA", "en_AU", "de_DE"]

for item in localeArray {
    var locale = NSLocale.init(localeIdentifier: item) as NSLocale
    
    var dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .none
    dateFormatter.timeStyle = .long
    dateFormatter.locale = locale as Locale!
    print(item)
    print(dateFormatter.dateFormat)
}

