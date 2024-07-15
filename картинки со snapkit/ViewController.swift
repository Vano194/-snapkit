//
//  ViewController.swift
//  картинки со snapkit
// 
//  Created by Иван Галиченко on 15.07.2024.
//
import SnapKit
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

 // Mark: Private properties
    private var collectionView: UICollectionView!
    private var images: [UIImage?] = [UIImage(systemName: "star"),UIImage(systemName: "star"),UIImage(systemName: "star")]
}

// Mark: Private methods
private extension ViewController {
    func initialixe() {
        let collectionViewLayout = UICollectionViewFlowLayout()
        collectionViewLayout.scrollDirection = .horizontal
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints{make in
            make.leading.trailing.equalToSuperview()
            make.top.equalToSuperview().inset(20)
            make.height.equalTo(150)
        }
        collectionView.dataSource = self
        collectionView.register(imageSell.self, forCellWithReuseIdentifier: "cell")
    }
  
}
// Mark: UICollectionViewDataSource
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! imageSell
        cell.configure(image: images[indexPath.item])
        return cell
    }
    
    func collectionView(_ _collectionView: UICollectionView, numberOfItemsInSection section: Int ) -> Int{
        images.count
    }
        
  
    
}
