//
//  HomeCollectionViewCellViewModel.swift
//  DangeunClone
//
//  Created by 최낙주 on 3/6/24.
//

import Foundation

final class HomeCollectionViewCellViewModel: Hashable, Equatable {
    
    public let image: String
    public let title: String
    private let address: String
    private let time: String
    public let price: String
    
    // MARK: - Init
    
    init(
        image: String,
        title: String,
        address: String,
        time: String,
        price: String
    ) {
        self.image = image
        self.title = title
        self.address = address
        self.time = time
        self.price = price
    }
    
    public var detail: String {
        return "\(address)∙\(time)"
    }
    
    // MARK: - Hashable
    
    static func == (lhs: HomeCollectionViewCellViewModel, rhs: HomeCollectionViewCellViewModel) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(image)
        hasher.combine(title)
        hasher.combine(address)
        hasher.combine(time)
        hasher.combine(price)
    }
}
