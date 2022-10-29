//
//  CollectionViewCell.swift
//  SimpleAppSample
//
//  Created by usayuki on 2022/10/29.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup() {
        // Set label
        let label = UILabel()
        label.text = "Label"
        label.textAlignment = .center
        contentView.addSubview(label)

        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        label.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        label.heightAnchor.constraint(equalToConstant: 50).isActive = true

        // Set image
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Profile")
        contentView.addSubview(imageView)

        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        imageView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
}
