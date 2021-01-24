//
//  SecondScenePresenter.swift
//  ViperPassDataBack
//
//  Created Alchemist on 7/16/20.
//  Copyright © 2020 Lodex-Solutions. All rights reserved.
//
//@Mahmoud Allam Templete ^_^

import Foundation
class SecondScenePresenter: SecondScenePresenterProtocol, SecondSceneInteractorOutPutProtocol {

    weak var view: SecondSceneViewProtocol?
    private let interactor: SecondSceneInteractorInPutProtocol
    private let router: SecondSceneRouterProtocol
    init(view: SecondSceneViewProtocol, interactor: SecondSceneInteractorInPutProtocol, router: SecondSceneRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    func viewDidLoad() {
        print("ViewDidLoad")

    }
    func setDelegeteMethod(withData: String) {
        router.setDelegeteMethod(withData: withData)
    }
    
}
