//
//  NetworkConstant.swift
//  WeatherApp
//
//  Created by Lê Minh Hiếu on 23/09/2023.
//

import Foundation

class NetworkConstant {
    public static var shared: NetworkConstant = .init()

    private init() {}

    public var apiKey: String {
        return "4dbd13a6433927339131585919452965"
    }

    public var serverAddress: String {
        return "https://api.openweathermap.org/data/2.5/"
    }

    public func iconServerAddress(_ name: String) -> String {
        return "https://openweathermap.org/img/wn/\(name)@2x.png"
    }
}
