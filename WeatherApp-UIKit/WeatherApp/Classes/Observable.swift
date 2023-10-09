//
//  Observable.swift
//  WeatherApp
//
//  Created by Lê Minh Hiếu on 24/09/2023.
//

import Foundation

class Observable<T> {
    var value: T? {
        didSet {
            DispatchQueue.main.async {
                self.listener?(self.value)
            }
        }
    }

    init(_ value: T?) {
        self.value = value
    }

    var listener: ((T?) -> Void)?

    func bind(_ listener: @escaping ((T?) -> Void)) {
        listener(value)
        self.listener = listener
    }
}
