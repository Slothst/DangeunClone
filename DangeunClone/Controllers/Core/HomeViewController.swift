//
//  HomeViewController.swift
//  DangeunClone
//
//  Created by 최낙주 on 3/4/24.
//

import UIKit

final class HomeViewController: UIViewController, HomeListViewDelegate {
    
    private let homeListView = HomeListView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setUpView()
        addRightBarButtons()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
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
    
    private func setUpView() {
        homeListView.delegate = self
        view.addSubview(homeListView)
        NSLayoutConstraint.activate([
            homeListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            homeListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            homeListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            homeListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    // MARK: - HomeListViewDelegate
    
    func homeListView(_ homeListView: HomeListView, didSelectPost post: Post) {
        let viewModel = HomeDetailViewViewModel(post: post)
        let detailVc = HomeDetailViewController(viewModel: viewModel)
        detailVc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(detailVc, animated: true)
    }
}
