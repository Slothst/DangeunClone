//
//  HomePhotoCollectionViewCellViewModel.swift
//  DangeunClone
//
//  Created by 최낙주 on 3/6/24.
//

import UIKit

final class HomePhotoCollectionViewCellViewModel {
    private let image: String
    
    init(image: String) {
        self.image = image
    }
    
    public func fetchImage() -> UIImage? {
        return UIImage(systemName: "photo")
    }
}
