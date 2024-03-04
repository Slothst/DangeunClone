//
//  NeighborhoodLifeViewController.swift
//  DangeunClone
//
//  Created by 최낙주 on 3/4/24.
//

import UIKit

final class NeighborhoodLifeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "동네생활"
        addRightBarButtons()
    }
    
    private func addRightBarButtons() {
        navigationItem.rightBarButtonItems = [addNoticeButton(), addSearchButton(), addProfileButton()]
    }
    
    private func addNoticeButton() -> UIBarButtonItem {
        return UIBarButtonItem(image: UIImage(systemName: "bell"), style: .plain, target: self, action: #selector(didTapNotice))
    }
    
    private func addSearchButton() -> UIBarButtonItem {
        return UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(didTapSearch))
    }
    
    private func addProfileButton() -> UIBarButtonItem {
        return UIBarButtonItem(image: UIImage(systemName: "person.circle"), style: .plain, target: self, action: #selector(didTapProfile))
    }
    
    @objc private func didTapNotice() {
        
    }
    
    @objc private func didTapSearch() {
        
    }
    
    @objc private func didTapProfile() {
        
    }
}
