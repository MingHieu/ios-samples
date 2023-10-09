//
//  UIImageExtension.swift
//  WeatherApp
//
//  Created by Lê Minh Hiếu on 24/09/2023.
//

import Foundation
import UIKit

public extension UIImageView {
    func imageFromURL(urlString: String) {
        let activityIndicator = UIActivityIndicatorView(style: .medium)
        activityIndicator.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)
        activityIndicator.startAnimating()
        if self.image == nil {
            self.addSubview(activityIndicator)
        }

        URLSession.shared.dataTask(with: NSURL(string: urlString)! as URL, completionHandler: { data, _, error in
            if error != nil {
                print(error ?? "No Error")
                return
            }

            DispatchQueue.main.async { () in
                let image = UIImage(data: data!)
                activityIndicator.removeFromSuperview()
                self.image = image
            }
        }).resume()
    }
}
