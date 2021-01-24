//
//  FirstSceneViewController.swift
//  ViperPassDataBack
//
//  Created Alchemist on 7/16/20.
//  Copyright © 2020 Lodex-Solutions. All rights reserved.
//
//@Mahmoud Allam Templete ^_^
import UIKit
class FirstSceneViewController: UIViewController, FirstSceneViewProtocol , getDataFromSecondVC {

    var presenter: FirstScenePresenterProtocol!
    lazy var contentLabel : UILabel = {
        var label = UILabel()
        label.text = "Demo TEXT"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .green
        self.setupContentLabel()
        
    }
    private func setupContentLabel(){
        self.view.addSubview(self.contentLabel)
        NSLayoutConstraint.activate([
            self.contentLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            self.contentLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Touched , gotta Navigate to next screen")
        presenter.presentSecondScene()
    }
    func getData(data: String) {
        self.contentLabel.text = data
    }
    
}

protocol getDataFromSecondVC {
    func getData(data:String)
}
