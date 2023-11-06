//
//  HomeScreen.swift
//  weatherForecast
//
//  Created by Alysson Menezes on 06/11/23.
//

import UIKit

class HomeScreen: UIView {
    
    
    lazy var viewBackGround: UIImageView = {
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
        view.backgroundColor = .white
        view.clipsToBounds = true
        view.layer.cornerRadius = 10.0
        
        return view
    }()
    
    lazy var cityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "cityLabel"
       // label.textColor = UIColor(red: 0/255, green: 65/255, blue: 1/255, alpha: 1.0)
        label.textColor = UIColor(named: "primaryColor")
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var temperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "25* C"
       // label.textColor = UIColor(red: 0/255, green: 65/255, blue: 1/255, alpha: 1.0)
        label.textColor = UIColor(named: "primaryColor")
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

    private func addViews(){
        addSubview(viewBackGround)
        viewBackGround.addSubview(headerView)
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
            
            viewBackGround.topAnchor.constraint(equalTo: topAnchor),
            viewBackGround.leadingAnchor.constraint(equalTo: leadingAnchor),
            viewBackGround.trailingAnchor.constraint(equalTo: trailingAnchor),
            viewBackGround.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            headerView.topAnchor.constraint(equalTo:safeAreaLayoutGuide.topAnchor , constant: 60),
            headerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
            headerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -35),
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
      
        ])
    }
}
