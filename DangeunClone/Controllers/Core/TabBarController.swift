//
//  ViewController.swift
//  DangeunClone
//
//  Created by 최낙주 on 3/4/24.
//

import UIKit

final class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.tintColor = .white
        setUpTabs()
    }

    private func setUpTabs() {
        let homeVC = HomeViewController()
        let neighborhoodLifeVC = NeighborhoodLifeViewController()
        let nearByVC = NearByViewController()
        let chattingVC = ChattingViewController()
        let settingsVC = ProfileViewController()
        
        homeVC.navigationItem.largeTitleDisplayMode = .automatic
        neighborhoodLifeVC.navigationItem.largeTitleDisplayMode = .automatic
        nearByVC.navigationItem.largeTitleDisplayMode = .automatic
        chattingVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let nav1 = UINavigationController(rootViewController: homeVC)
        let nav2 = UINavigationController(rootViewController: neighborhoodLifeVC)
        let nav3 = UINavigationController(rootViewController: nearByVC)
        let nav4 = UINavigationController(rootViewController: chattingVC)
        let nav5 = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = UITabBarItem(title: "홈", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
        nav2.tabBarItem = UITabBarItem(title: "동네생활", image: UIImage(systemName: "scroll"), selectedImage: UIImage(systemName: "scroll.fill"))
        nav3.tabBarItem = UITabBarItem(title: "내 근처", image: UIImage(systemName: "mappin.and.ellipse.circle"), selectedImage: UIImage(systemName: "mappin.and.ellipse.circle.fill"))
        nav4.tabBarItem = UITabBarItem(title: "채팅", image: UIImage(systemName: "bubble.left.and.bubble.right"), selectedImage: UIImage(systemName: "bubble.left.and.bubble.right.fill"))
        nav5.tabBarItem = UITabBarItem(title: "나의 당근", image: UIImage(systemName: "person"), selectedImage: UIImage(systemName: "person.fill"))
        
        
        for nav in [nav1, nav2, nav3, nav4, nav5] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(
            [nav1, nav2, nav3, nav4, nav5],
            animated: true
        )
    }
}

