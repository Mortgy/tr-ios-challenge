//
//  Publisher.swift
//  Challenge
//
//  Created by Mortgy on 5/1/21.
//

import Foundation

class Publisher<T> {
    private var subscribers: [((T?) -> Void)] = []
    
    var value: T? {
        didSet {
            subscribers.forEach {
                $0(value)
            }
        }
    }
    
    init(_ value: T?) {
        self.value = value
    }
    
    func subscribe(_ subscriber: @escaping (T?) -> Void) {
        subscriber(value)
        self.subscribers.append(subscriber)
    }
    
}
