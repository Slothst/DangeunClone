//
//  HomeDetailView.swift
//  DangeunClone
//
//  Created by 최낙주 on 3/6/24.
//

import UIKit

class HomeDetailView: UIView {
    
    public var collectionView: UICollectionView?
    
    private let viewModel: HomeDetailViewViewModel
    
    // MARK: - Init

    init(frame: CGRect, viewModel: HomeDetailViewViewModel) {
        self.viewModel = viewModel
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemBackground
        let collectionView = createCollectionView()
        self.collectionView = collectionView
        addSubview(collectionView)
        addConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func addConstraint() {
        guard let collectionView = collectionView else {
            return
        }
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: topAnchor),
            collectionView.leftAnchor.constraint(equalTo: leftAnchor),
            collectionView.rightAnchor.constraint(equalTo: rightAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    private func createCollectionView() -> UICollectionView {
        let layout = UICollectionViewCompositionalLayout(section: viewModel.createPhotoSectionLayout())
        let collectionView = UICollectionView(
            frame: .zero,
            collectionViewLayout: layout
        )
        collectionView.register(
            HomePhotoCollectionViewCell.self,
            forCellWithReuseIdentifier: HomePhotoCollectionViewCell.cellIdentifier
        )
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }
    
}
