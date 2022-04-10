//
//  ViewController.swift
//  collection view
//
//  Created by Yushan Yang on 2022/4/9.
//

import UIKit

class ViewController: UIViewController {
    enum Section {
        case main
    }

    @IBOutlet weak var collectionView: UICollectionView!
    var dataSource = UICollectionViewDiffableDataSource<Section, Int>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        collectionView.collectionViewLayout = configureLayout()
        configureDataSource()
    }
 
    func configureLayout() -> UICollectionViewCompositionalLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalHeight(1.0), heightDimension: .fractionalHeight(1.0))//讓他跟parent 是一樣的大小；0.1就等於10%大
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalHeight(1.0), heightDimension:.absolute(44.0))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize,
            subitems: [item])
        
        let section =
            NSCollectionLayoutSection(group: group)
        
        return UICollectionViewCompositionalLayout(section: section)
    }
    
    func configureDataSource() {
        dataSource = UICollectionViewDiffableDataSource<Section,Int>(collectionView: self.collectionView) {
            (collectionView, IndexPath, number) -> UICollectionViewCell? in
            
            guard let cell = collectionView.dequeueReusableCell(withIdentifier: NumberCell.reuseIdentifier, for: IndexPath) else {
                fatalError("Cannot creat new cell")
            }
            cell.label.text = number.description
            return cell
        }
        
    }

}

