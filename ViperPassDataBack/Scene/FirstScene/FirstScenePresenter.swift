//
//  FirstScenePresenter.swift
//  ViperPassDataBack
//
//  Created Alchemist on 7/16/20.
//  Copyright © 2020 Lodex-Solutions. All rights reserved.
//
//@Mahmoud Allam Templete ^_^

import Foundation
class FirstScenePresenter: FirstScenePresenterProtocol, FirstSceneInteractorOutPutProtocol {

    weak var view: FirstSceneViewProtocol?
    private let interactor: FirstSceneInteractorInPutProtocol
    private let router: FirstSceneRouterProtocol
    init(view: FirstSceneViewProtocol, interactor: FirstSceneInteractorInPutProtocol, router: FirstSceneRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    func viewDidLoad() {
        print("ViewDidLoad")

    }
    func presentSecondScene() {
        router.presentSecondScene()
    }
    
}
