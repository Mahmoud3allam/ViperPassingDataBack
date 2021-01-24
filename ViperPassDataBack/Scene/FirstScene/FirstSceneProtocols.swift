//
//  FirstSceneProtocols.swift
//  ViperPassDataBack
//
//  Created Alchemist on 7/16/20.
//  Copyright © 2020 Lodex-Solutions. All rights reserved.
//
//@Mahmoud Allam Templete ^_^
import Foundation
protocol FirstSceneViewProtocol: class {
    var presenter: FirstScenePresenterProtocol! {get set}
}
protocol FirstScenePresenterProtocol {
    var view: FirstSceneViewProtocol? {get set}
    func viewDidLoad()
    func presentSecondScene()
}
protocol FirstSceneRouterProtocol {
    func presentSecondScene()
}
protocol FirstSceneInteractorInPutProtocol {
    var presenter: FirstSceneInteractorOutPutProtocol? {get set}
}
protocol FirstSceneInteractorOutPutProtocol {
}
