//
//  HomeDetailViewViewModel.swift
//  DangeunClone
//
//  Created by 최낙주 on 3/6/24.
//

import UIKit

final class HomeDetailViewViewModel {
    private let post: Post
    
    public var imageViewModel: [HomePhotoCollectionViewCellViewModel] = []
    
    // MARK: - Init
    
    init(post: Post) {
        self.post = post
        setUpImage()
    }
    
    private func setUpImage() {
        
    }
    
    public var name: String {
        return post.name
    }
    
    public var address: String {
        return post.address
    }
    
    public var title: String {
        return post.title
    }
    
    public var time: String {
        return post.time
    }
    
    public var content: String {
        return post.content
    }
    
    // MARK: - Layouts
    
    public func createPhotoSectionLayout() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(
            layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1.0),
                heightDimension: .fractionalHeight(1.0)
            )
        )
        item.contentInsets = NSDirectionalEdgeInsets(
            top: 0,
            leading: 0,
            bottom: 10,
            trailing: 0
        )
        let group = NSCollectionLayoutGroup.vertical(
            layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1.0),
                heightDimension: .fractionalHeight(1.0)
            ),
            subitems: [item]
        )
        let section = NSCollectionLayoutSection(group: group)
        return section
    }
}
