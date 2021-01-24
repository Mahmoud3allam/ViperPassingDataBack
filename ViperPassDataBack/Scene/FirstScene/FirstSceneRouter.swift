//
//  FirstSceneRouter.swift
//  ViperPassDataBack
//
//  Created Alchemist on 7/16/20.
//  Copyright © 2020 Lodex-Solutions. All rights reserved.
//
//@Mahmoud Allam Templete ^_^
import UIKit
class FirstSceneRouter: FirstSceneRouterProtocol {

    weak var viewController: UIViewController?
    static func createAnModule() -> UIViewController {
        let interactor = FirstSceneInteractor()
        let router = FirstSceneRouter()
        let view = FirstSceneViewController()
        let presenter = FirstScenePresenter(view: view, interactor: interactor, router: router)
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        return view
    }
    func presentSecondScene() {
        if (self.viewController as? FirstSceneViewController) != nil {
            viewController?.present(SecondSceneRouter.createAnModule(withDelegete: viewController!), animated: true, completion: nil)
        }
    }
    
}
