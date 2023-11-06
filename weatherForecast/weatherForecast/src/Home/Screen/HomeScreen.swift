//
//  HomeScreen.swift
//  weatherForecast
//
//  Created by Alysson Menezes on 06/11/23.
//

import UIKit

class HomeScreen: UIView {
    
    
    lazy var viewBackGround: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 244/255, green: 246/255, blue: 123/255, alpha: 1.0)
        return view
    }()
    
    lazy var genericLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "BF NFT!"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        return label
    }()
    
    private func addViews(){
        addSubview(viewBackGround)
        viewBackGround.addSubview(genericLabel)
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
            
            
            genericLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            genericLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
            
        ])
    }
}
