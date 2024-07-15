//
//  ImageSell.swift
//  картинки со snapkit
// не билдится по причине no such file or direcory хотя сслыка вроде та 
//  Created by Иван Галиченко on 15.07.2024.
//

import SnapKit
import UIKit

class imageSell: UICollectionViewCell {
    // Mark: Public
    func configure(image: UIImage?) {
        imageView.image = image
    }
    
    // Mark: init
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:)has not been implement")
    }
    // Mark: Private properties
    private let imageView: UIImageView = {
        let view = UIImageView()
        return view
    } ()
    
}

// Mark: Private methods
private extension imageSell {
    func initialize() {
        contentView.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.size.equalTo(140)
            make.edges.equalToSuperview().inset(5)
        }
    }
}
