//
//  FavoriteMoviesViewController.swift
//  Cinetopia
//
//  Created by Matheus Silveira on 20/06/24.
//

import UIKit

class FavoriteMoviesViewController: UIViewController {
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .yellow
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        setupConstraints()
        view.backgroundColor = .background
    }
    
    private func addSubviews() {
        view.addSubview(collectionView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

#Preview {
    FavoriteMoviesViewController()
}
