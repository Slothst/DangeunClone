//
//  HomeDetailViewController.swift
//  DangeunClone
//
//  Created by 최낙주 on 3/6/24.
//

import UIKit

final class HomeDetailViewController: UIViewController {
    private let viewModel: HomeDetailViewViewModel
    
    private let detailView: HomeDetailView
    
    init(viewModel: HomeDetailViewViewModel) {
        self.viewModel = viewModel
        self.detailView = HomeDetailView(frame: .zero, viewModel: viewModel)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(detailView)
        addRightBarButton()
        addConstraints()
    }
    
    private func addRightBarButton() {
        navigationItem.rightBarButtonItems = [addMenuButton(), addShareButton()]
    }
    
    private func addMenuButton() -> UIBarButtonItem {
        return UIBarButtonItem(
            barButtonSystemItem: .edit,
            target: self,
            action: #selector(didTapShare)
        )
    }
    
    private func addShareButton() -> UIBarButtonItem {
        return UIBarButtonItem(
            barButtonSystemItem: .action,
            target: self,
            action: #selector(didTapShare)
        )
    }
    
    @objc private func didTapShare() {
        // Share character info
        
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            detailView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            detailView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            detailView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            detailView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

// MARK: - CollectionView

extension HomeDetailViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return viewModel.imageViewModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.imageViewModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: HomePhotoCollectionViewCell.cellIdentifier,
            for: indexPath
        ) as? HomePhotoCollectionViewCell else {
            fatalError()
        }
        cell.configure(with: viewModel)
        return cell
    }
}
