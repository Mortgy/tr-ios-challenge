//
//  Publisher.swift
//  Challenge
//
//  Created by Mortgy on 5/1/21.
//

import Foundation

class Publisher<T> {
    
    typealias Subscriber = ((T?) -> Void)
    
    private var subscribers: [Subscriber] = []
    
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
    
    func subscribe(_ subscriber: @escaping Subscriber) {
        subscriber(value)
        self.subscribers.append(subscriber)
    }
}
