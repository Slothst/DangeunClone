//
//  HomeView.swift
//  DangeunClone
//
//  Created by 최낙주 on 3/5/24.
//

import UIKit

protocol HomeListViewDelegate: AnyObject {
    func homeListView(
        _ homeListView: HomeListView,
        didSelectPost post: Post
    )
}

final class HomeListView: UIView {
    
    public weak var delegate: HomeListViewDelegate?

    private let viewModel = HomeListViewViewModel()
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(
            HomeCollectionViewCell.self,
            forCellWithReuseIdentifier: HomeCollectionViewCell.cellIdentifier
        )
        return collectionView
    }()
    
    // MARK: - Init

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(collectionView)
        addConstraints()
        viewModel.delegate = self
        viewModel.fetchPosts()
        setUpCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: topAnchor),
            collectionView.leftAnchor.constraint(equalTo: leftAnchor),
            collectionView.rightAnchor.constraint(equalTo: rightAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    private func setUpCollectionView() {
        collectionView.delegate = viewModel
        collectionView.dataSource = viewModel
    }
}

extension HomeListView: HomeListViewViewModelDelegate {
    func didSelectPost(_ post: Post) {
        delegate?.homeListView(self, didSelectPost: post)
    }
}
