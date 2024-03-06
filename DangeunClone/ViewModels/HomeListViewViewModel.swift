//
//  HomeListViewViewModel.swift
//  DangeunClone
//
//  Created by 최낙주 on 3/6/24.
//

import UIKit

final class HomeListViewViewModel: NSObject {
    private var posts: [Post] = [] {
        didSet {
            for post in posts {
                let viewModel = HomeCollectionViewCellViewModel(
                    image: post.image,
                    title: post.title,
                    address: post.address,
                    time: post.time,
                    price: post.price
                )
                cellViewModels.append(viewModel)
            }
        }
    }
    
    private var cellViewModels: [HomeCollectionViewCellViewModel] = []
    
    public func fetchPosts() {
        let post1 = Post(
            image: "house",
            name: "카야잼",
            address: "강서구 화곡제3동",
            title: "무신사 블랙모먼트 비건레더 자켓 size free",
            time: "33분 전",
            content: "구매한지 1년 됨",
            price: "25,000원"
        ) 
        let post2 = Post(
            image: "person",
            name: "카야잼",
            address: "양천구 신정4동",
            title: "책장정리",
            time: "끌올 5분 전",
            content: "구매한지 1년 됨",
            price: "8,000원"
        )
        posts = [post1, post2, post1, post2, post1, post2, post1, post2, post1, post2]
    }
}

extension HomeListViewViewModel: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(cellViewModels.count)
        return cellViewModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: HomeCollectionViewCell.cellIdentifier,
            for: indexPath
        ) as? HomeCollectionViewCell else {
            fatalError("Unsupported cell")
        }
        cell.configure(with: cellViewModels[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = collectionView.bounds
        let width = bounds.width
        return CGSize(width: width, height: width / 3.3)
    }
}
