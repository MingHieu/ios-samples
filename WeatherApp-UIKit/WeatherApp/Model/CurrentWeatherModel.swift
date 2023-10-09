//
//  CurrentWeatherModel.swift
//  WeatherApp
//
//  Created by Lê Minh Hiếu on 23/09/2023.
//

import Foundation

struct CurrentWeatherModel: Codable {
    var coord: Coord
    var weather: [Weather]
    var base: String
    var main: Main
    var visibility: Int
    var wind: Wind
    var rain: Rain?
    var snow: Snow?
    var clouds: Clouds
    var dt: Int
    var sys: Sys
    var timezone: Int
    var id: Int
    var name: String
    var cod: Int
}

struct Coord: Codable {
    var lon: Double
    var lat: Double
}

struct Weather: Codable {
    var id: Int
    var main: String
    var description: String
    var icon: String
}

struct Main: Codable {
    var temp: Double
    var feels_like: Double
    var temp_min: Double
    var temp_max: Double
    var pressure: Int
    var humidity: Int
    var sea_level: Int
    var grnd_level: Int
}

struct Wind: Codable {
    var speed: Double
    var deg: Int
    var gust: Double
}

struct Rain: Codable {
    let oneHour: Double?
    let threeHours: Double?

    enum CodingKeys: String, CodingKey {
        case oneHour = "1h"
        case threeHours = "3h"
    }
}

struct Snow: Codable {
    let oneHour: Double?
    let threeHours: Double?

    enum CodingKeys: String, CodingKey {
        case oneHour = "1h"
        case threeHours = "3h"
    }
}

struct Clouds: Codable {
    var all: Int
}

struct Sys: Codable {
    var type: Int
    var id: Int
    var country: String
    var sunrise: Int
    var sunset: Int
}
