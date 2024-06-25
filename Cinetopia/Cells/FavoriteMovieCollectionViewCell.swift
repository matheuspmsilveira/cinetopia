//
//  FavoriteMovieCollectionViewCell.swift
//  Cinetopia
//
//  Created by Matheus Silveira on 20/06/24.
//

import UIKit
import Kingfisher

class FavoriteMovieCollectionViewCell: UICollectionViewCell {
    
    private lazy var moviePosterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 12
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private lazy var movieTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.textColor = .white
        label.numberOfLines = 1
        return label
    }()
    
    private lazy var favoriteButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        let iconImage = UIImage(systemName: "heart.fill")?.withTintColor(.buttonBackground, renderingMode: .alwaysOriginal)
        button.setImage(iconImage, for: .normal)
        button.addTarget(self, action: #selector(didTapFavoriteButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview()
        setupConstraints()
        backgroundColor = .background
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubview() {
        addSubview(moviePosterImageView)
        addSubview(movieTitleLabel)
        addSubview(favoriteButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            moviePosterImageView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            moviePosterImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            moviePosterImageView.heightAnchor.constraint(equalToConstant: 140),
            moviePosterImageView.widthAnchor.constraint(equalToConstant: 100),
            
            movieTitleLabel.topAnchor.constraint(equalTo: moviePosterImageView.bottomAnchor, constant: 16),
            movieTitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            favoriteButton.topAnchor.constraint(equalTo: movieTitleLabel.bottomAnchor, constant: 16),
            favoriteButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            favoriteButton.heightAnchor.constraint(equalToConstant: 25),
            favoriteButton.widthAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    func configureCell(movie: Movie) {
        let url = URL(string: movie.image)
        moviePosterImageView.kf.setImage(with: url)
        movieTitleLabel.text = movie.title
    }
    
    @objc func didTapFavoriteButton(_ sender: UIButton) {
        print("Botao favoritar pressionado")
    }
}
