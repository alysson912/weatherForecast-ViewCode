//
//  HomeScreen.swift
//  weatherForecast
//
//  Created by Alysson Menezes on 06/11/23.
//

import UIKit

class HomeScreen: UIView {
    
    
    lazy var backGroundSubView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        //view.backgroundColor = UIColor(red: 244/255, green: 246/255, blue: 123/255, alpha: 1.0)
        view.image = UIImage(named: "background")
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    lazy var headerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(named: "customContrastColor")
        view.clipsToBounds = true
        view.layer.cornerRadius = 10.0
        
        return view
    }()
    
    lazy var cityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "cityLabel"
        // label.textColor = UIColor(red: 0/255, green: 65/255, blue: 1/255, alpha: 1.0)
        label.textColor = UIColor(named: "customPrimaryColor")
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var temperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "25* C"
        // label.textColor = UIColor(red: 0/255, green: 65/255, blue: 1/255, alpha: 1.0)
        label.textColor = UIColor(named: "customPrimaryColor")
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 70, weight: .bold)
        return label
    }()
    
    lazy var weatherIconImageView : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage( named: "sunIcon" )
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var humidityStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [humidityLabel, humidityValueLabel])
        stackView.axis = .horizontal //
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var humidityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Umidade"
        label.textColor = UIColor(named: "customContrastColor")
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        return label
    }()
    
    lazy var humidityValueLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1000mm"
        label.textColor = UIColor(named: "customContrastColor")
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        return label
    }()
    
    
    lazy var windStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [windLabel, windValueLabel]) // adicionando labels dentro da stackView
        stackView.axis = .horizontal //
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var windLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Vento"
        label.textColor = UIColor(named: "customContrastColor")
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        return label
    }()
    
    lazy var windValueLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "10km/h"
        label.textColor = UIColor(named: "customContrastColor")
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        return label
    }()
    
    lazy var statsStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [humidityStackView, windStackView]) // adicionando labels dentro da stackView
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical //
        stackView.spacing = 3
        stackView.backgroundColor = UIColor(named: "softGray")
        stackView.clipsToBounds = true
        stackView.layer.cornerRadius = 10
        stackView.isLayoutMarginsRelativeArrangement = true // habilitando margens customizadas
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(
            top: 12,
            leading: 24,
            bottom: 12,
            trailing: 24)// setando margins
        
        return stackView
    }()
    
    
    private func addViews(){
        addSubview(backGroundSubView)
        backGroundSubView.addSubview(headerView)
        backGroundSubView.addSubview(statsStackView)
        
        headerView.addSubview(cityLabel)
        headerView.addSubview(temperatureLabel)
        headerView.addSubview(weatherIconImageView)
        
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            
            backGroundSubView.topAnchor.constraint(equalTo: topAnchor),
            backGroundSubView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backGroundSubView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backGroundSubView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            headerView.topAnchor.constraint(equalTo:safeAreaLayoutGuide.topAnchor , constant: 60),
            headerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            headerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            headerView.heightAnchor.constraint(equalToConstant: 169),
            
            cityLabel.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 15),
            cityLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 15),
            cityLabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -15),
            cityLabel.heightAnchor.constraint(equalToConstant: 20),
            
            temperatureLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 21),
            temperatureLabel.leadingAnchor.constraint(equalTo: cityLabel.leadingAnchor),
            
            
            weatherIconImageView.heightAnchor.constraint(equalToConstant: 86),
            weatherIconImageView.widthAnchor.constraint(equalToConstant: 86),
            weatherIconImageView.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -26),
            weatherIconImageView.centerYAnchor.constraint(equalTo: headerView.centerYAnchor),
            weatherIconImageView.leadingAnchor.constraint(equalTo: temperatureLabel.trailingAnchor, constant: 15),
            
            statsStackView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 24),
            statsStackView.widthAnchor.constraint(equalToConstant: 206),
            statsStackView.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}
