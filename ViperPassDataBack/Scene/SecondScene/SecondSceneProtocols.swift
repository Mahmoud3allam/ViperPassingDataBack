//
//  SecondSceneProtocols.swift
//  ViperPassDataBack
//
//  Created Alchemist on 7/16/20.
//  Copyright © 2020 Lodex-Solutions. All rights reserved.
//
//@Mahmoud Allam Templete ^_^
import Foundation
protocol SecondSceneViewProtocol: class {
    var presenter: SecondScenePresenterProtocol! {get set}
}
protocol SecondScenePresenterProtocol {
    var view: SecondSceneViewProtocol? {get set}
    func viewDidLoad()
    func setDelegeteMethod(withData:String)

}
protocol SecondSceneRouterProtocol {
    func setDelegeteMethod(withData:String)
}
protocol SecondSceneInteractorInPutProtocol {
    var presenter: SecondSceneInteractorOutPutProtocol? {get set}
}
protocol SecondSceneInteractorOutPutProtocol {
}
