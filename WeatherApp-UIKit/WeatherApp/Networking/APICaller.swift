//
//  APICaller.swift
//  WeatherApp
//
//  Created by Lê Minh Hiếu on 23/09/2023.
//

import Foundation

enum NetworkError: Error {
    case urlError
    case canNotParseData
}

class APICaller {
    static func getCurrentWeather(coord: Coord, completionHandler: @escaping (_ result: Result<CurrentWeatherModel, NetworkError>) -> Void) {
        let urlString = NetworkConstant.shared.serverAddress + "weather?lat=\(coord.lat)&lon=\(coord.lon)&appid=\(NetworkConstant.shared.apiKey)"
        guard let url = URL(string: urlString) else {
            completionHandler(.failure(.urlError))
            return
        }

        URLSession.shared.dataTask(with: url) { dataResponse, _, error in
            if error == nil,
               let data = dataResponse,
               let resultData = try? JSONDecoder().decode(CurrentWeatherModel.self, from: data)
            {
                completionHandler(.success(resultData))
            } else {
                completionHandler(.failure(.canNotParseData))
            }
        }.resume()
    }
}
