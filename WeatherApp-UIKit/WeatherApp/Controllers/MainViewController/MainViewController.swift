//
//  MainViewController.swift
//  WeatherApp
//
//  Created by Lê Minh Hiếu on 23/09/2023.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet var loadingView: UIActivityIndicatorView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet var addressLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var windSpeedLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!

    var viewModel: MainViewModel = .init()

    override func viewDidLoad() {
        super.viewDidLoad()

        showLoading()
        bindViewModel()
        viewModel.getCurrentWeather()
    }

    func showLoading() {
        loadingView.isHidden = false
        loadingView.startAnimating()
        contentView.isHidden = true
    }

    func hideLoading() {
        loadingView.stopAnimating()
        loadingView.isHidden = true
        contentView.isHidden = false
    }

    func bindViewModel() {
        viewModel.currentWeather.bind { [weak self] currentWeather in
            if let data = currentWeather {
                print("Current weather:", data)
                self?.addressLabel.text = data.name
                self?.descriptionLabel.text = data.weather[0].description
                self?.imageView.imageFromURL(urlString: NetworkConstant.shared.iconServerAddress(data.weather[0].icon))
                self?.temperatureLabel.text = String(round(data.main.temp - 273.15))
                self?.timeLabel.text = Date().formatted()
                self?.pressureLabel.text = String(data.main.pressure)
                self?.humidityLabel.text = String(data.main.humidity)
                self?.windSpeedLabel.text = String(data.wind.speed)
                self?.hideLoading()
            }
        }
    }
}
