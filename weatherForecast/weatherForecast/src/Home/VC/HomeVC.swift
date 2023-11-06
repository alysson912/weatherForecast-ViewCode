//
//  ViewController.swift
//  weatherForecast
//
//  Created by Alysson Menezes on 06/11/23.
//

import UIKit

class HomeVC: UIViewController {
    
    private var screen: HomeScreen?
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    //MARK: Ciclos de vida
    
    // executado antes do viewDidAppear
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    // executado toda vez que a viewControlle aparece na tela. ex: vai em uma tela e volta, ele executará novamente
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    // executado depois viewDidAppear
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    // quando ja desapareceu
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


}

