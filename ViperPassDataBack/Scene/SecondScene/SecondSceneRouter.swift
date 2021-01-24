//
//  SecondSceneRouter.swift
//  ViperPassDataBack
//
//  Created Alchemist on 7/16/20.
//  Copyright © 2020 Lodex-Solutions. All rights reserved.
//
//@Mahmoud Allam Templete ^_^
import UIKit
class SecondSceneRouter: SecondSceneRouterProtocol {

    weak var viewController: UIViewController?
    var delegete: getDataFromSecondVC?
    static func createAnModule(withDelegete:UIViewController) -> UIViewController {
        let interactor = SecondSceneInteractor()
        let router = SecondSceneRouter()
        let view = SecondSceneViewController()
        let presenter = SecondScenePresenter(view: view, interactor: interactor, router: router)
        if let firstVC = withDelegete as? FirstSceneViewController {
            router.delegete = firstVC
        }
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        return view
    }
    func setDelegeteMethod(withData: String) {
        self.delegete?.getData(data: withData)
        viewController?.dismiss(animated: true, completion: nil)
    }
    
}
