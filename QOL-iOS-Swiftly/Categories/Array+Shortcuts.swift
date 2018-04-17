//
//  Array+Shortcuts.swift
//  PhotoDay
//
//  Created by Isaac Paul on 11/22/17.
//  Copyright © 2017 Isaac Paul. All rights reserved.
//

import Foundation

public extension Array {
    public init(count: Int, elementCreator: @autoclosure () -> Element) {
        self = (0 ..< count).map { _ in elementCreator() }
    }
    
    func randomItem() -> Element? {
        if isEmpty { return nil }
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
    
    func arrayWithIndexs(_ indexs:[Int]) -> [Element] {
        var newArray:[Element] = []
        for eachIndex in indexs {
            newArray.append(self[eachIndex])
        }
        return newArray
    }
}

public extension Sequence where Iterator.Element: Hashable {
    var uniqueElements: [Iterator.Element] {
        return Array( Set(self) )
    }
}

public extension Sequence where Iterator.Element: Equatable {
    var uniqueElementsByEq: [Iterator.Element] {
        return self.reduce([]){
            uniqueElements, element in
            
            uniqueElements.contains(element)
                ? uniqueElements
                : uniqueElements + [element]
        }
    }
}