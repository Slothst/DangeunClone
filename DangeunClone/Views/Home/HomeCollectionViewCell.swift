//
//  HomeCollectionViewCell.swift
//  DangeunClone
//
//  Created by 최낙주 on 3/6/24.
//

import UIKit

final class HomeCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "HomeCollectionViewCell"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 8
        imageView.backgroundColor = .blue
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.font = .systemFont(ofSize: 15, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    private let detailLabel: UILabel = {
        let label = UILabel()
        label.textColor = .secondaryLabel
        label.font = .systemFont(ofSize: 13, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let priceLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.font = .systemFont(ofSize: 16, weight: .heavy)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .secondarySystemBackground
        addSubviews(imageView, titleLabel, detailLabel, priceLabel)
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: 100),
            imageView.heightAnchor.constraint(equalToConstant: 100),
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            imageView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10),
            
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: -10),
            titleLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 15),
            titleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -25),
            
            detailLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: -15),
            detailLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 15),
            detailLabel.rightAnchor.constraint(equalTo: rightAnchor),
            
            priceLabel.topAnchor.constraint(equalTo: detailLabel.bottomAnchor, constant: 3),
            priceLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 15),
            priceLabel.rightAnchor.constraint(equalTo: rightAnchor),
            priceLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -30),
        ])
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
        titleLabel.text = nil
        detailLabel.text = nil
        priceLabel.text = nil
    }
    
    public func configure(with viewModel: HomeCollectionViewCellViewModel) {
        imageView.image = UIImage(systemName: viewModel.image)
        titleLabel.text = viewModel.title
        detailLabel.text = viewModel.detail
        priceLabel.text = viewModel.price
    }
}
