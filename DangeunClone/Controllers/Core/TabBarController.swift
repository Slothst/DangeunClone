//
//  ViewController.swift
//  DangeunClone
//
//  Created by 최낙주 on 3/4/24.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setUpTabs()
    }

    private func setUpTabs() {
        let homeVC = HomeViewController()
        let neighborhoodLifeVC = NeighborhoodLifeViewController()
        let nearByVC = NearByViewController()
        let chattingVC = ChattingViewController()
        let settingsVC = SettingsViewController()
        
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
        
        nav1.tabBarItem = UITabBarItem(title: "홈", image: UIImage(systemName: "house"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "동네생활", image: UIImage(systemName: "scroll"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "내 근처", image: UIImage(systemName: "mappin.and.ellipse"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "채팅", image: UIImage(systemName: "bubble.left.and.bubble.right"), tag: 4)
        nav5.tabBarItem = UITabBarItem(title: "나의 당근", image: UIImage(systemName: "person.fill"), tag: 5)
        
        nav1.tabBarItem.badgeColor = .white
        
        for nav in [nav1, nav2, nav3, nav4, nav5] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(
            [nav1, nav2, nav3, nav4, nav5],
            animated: true
        )
    }
}

