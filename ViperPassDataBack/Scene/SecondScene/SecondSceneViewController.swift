//
//  SecondSceneViewController.swift
//  ViperPassDataBack
//
//  Created Alchemist on 7/16/20.
//  Copyright © 2020 Lodex-Solutions. All rights reserved.
//
//@Mahmoud Allam Templete ^_^
import UIKit
class SecondSceneViewController: UIViewController, SecondSceneViewProtocol {
    var presenter: SecondScenePresenterProtocol!
    lazy var textField : UITextField = {
        var field = UITextField()
        field.placeholder = "Set Text To Back With"
        field.textColor = .black
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
        self.view.backgroundColor = .blue
        self.setupField()
        // Do any additional setup after loading the view.
    }
    private func setupField(){
        self.view.addSubview(self.textField)
        NSLayoutConstraint.activate([
            self.textField.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            self.textField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor , constant: 20),
            self.textField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor,constant: -20),
            self.textField.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        print("Navigate Back with Text")
        presenter.setDelegeteMethod(withData: self.textField.text ?? "no data")
    }
}
