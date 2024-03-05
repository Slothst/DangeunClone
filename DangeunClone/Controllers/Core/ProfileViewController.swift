//
//  SettingsViewController.swift
//  DangeunClone
//
//  Created by 최낙주 on 3/4/24.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        addSettingsButton()
    }
    
    private func addSettingsButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gearshape"), style: .plain, target: self, action: #selector(didTapSettings))
    }
    
    @objc private func didTapSettings() {
        
    }
}
