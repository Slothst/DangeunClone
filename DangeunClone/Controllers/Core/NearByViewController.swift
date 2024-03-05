//
//  NearByViewController.swift
//  DangeunClone
//
//  Created by 최낙주 on 3/4/24.
//

import UIKit

final class NearByViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        addRightBarButtons()
    }
    
    private func addRightBarButtons() {
        navigationItem.rightBarButtonItems = [addNoticeButton(), addSearchButton()]
    }
    
    private func addNoticeButton() -> UIBarButtonItem {
        return UIBarButtonItem(image: UIImage(systemName: "bell"), style: .plain, target: self, action: #selector(didTapNotice))
    }
    
    private func addSearchButton() -> UIBarButtonItem {
        return UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(didTapSearch))
    }
    
    @objc private func didTapNotice() {
        
    }
    
    @objc private func didTapSearch() {
        
    }
}
