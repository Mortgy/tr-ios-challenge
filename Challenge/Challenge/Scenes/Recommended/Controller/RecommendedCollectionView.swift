//
//  RecommendedCollectionView.swift
//  Challenge
//
//  Created by Mortgy on 5/2/21.
//

import UIKit

class RecommendedCollectionView: UICollectionView {

    var viewModel: RecommendedViewModel!
    weak var coordinator: MovieDetailsCoordinator!
    
    var itemSize: CGSize {
        CGSize(width: 170*2/3, height: 170)
    }
    
    func setup(viewModel: RecommendedViewModel, coordinator: MovieDetailsCoordinator) {
        self.coordinator = coordinator
        self.viewModel = viewModel
        self.register(MovieCollectionViewCell.nib(), forCellWithReuseIdentifier: MovieCollectionViewCell.identifier())
        self.dataSource = self
        self.delegate = self
        self.viewModel.fetchData()
        self.viewModel.recommended.subscribe { [weak self] _ in
            DispatchQueue.main.async {
                self?.reloadData()
            }
        }
    }
}

extension RecommendedCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.recommended.value?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MovieCollectionViewCell.identifier(), for: indexPath) as! MovieCollectionViewCell
        cell.configure(movieViewModel: viewModel.recommended.value![indexPath.row])
        return cell
    }
}

extension RecommendedCollectionView: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        coordinator.open(id: viewModel.recommended.value![indexPath.row].movie.id!)
    }
    
}

extension RecommendedCollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return itemSize
    }
}
