//
//  SceneDelegate.swift
//  TxNotify
//
//  Created by Vivian Phung on 1/25/23.
//

import UIKit
import Auth
import WalletConnectRelay
import WalletConnectNetworking

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    private let signCoordinator = SignCoordinator()
    private let authCoordinator = AuthCoordinator()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        Networking.configure(projectId: InputConfig.projectId, socketFactory: DefaultSocketFactory())
        Auth.configure(signerFactory: DefaultSignerFactory())

        setupWindow(scene: scene)
    }

    private func setupWindow(scene: UIScene) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)

        let tabController = UITabBarController()
        tabController.viewControllers = [
            signCoordinator.navigationController,
            authCoordinator.navigationController
        ]

        signCoordinator.start()
        authCoordinator.start()

        window?.rootViewController = tabController
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }
}
