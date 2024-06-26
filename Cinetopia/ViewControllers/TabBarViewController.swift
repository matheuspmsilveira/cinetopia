//
//  TabBarViewController.swift
//  Cinetopia
//
//  Created by Matheus Silveira on 26/06/24.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarController()
        setupNavigationBar()
    }
    
    private func setupTabBarController() {
        let symbolConfiguration = UIImage.SymbolConfiguration(scale: .medium)

        let home = UINavigationController(rootViewController: MoviesViewController())
        let homeSymbol = UIImage(systemName: "play.square", withConfiguration: symbolConfiguration)
        home.tabBarItem.image = homeSymbol
        home.tabBarItem.title = "Filmes"
        
        let favorites = UINavigationController(rootViewController: FavoriteMoviesViewController())
        let favoriteSymbol = UIImage(systemName: "heart.square", withConfiguration: symbolConfiguration)
        favorites.tabBarItem.image = favoriteSymbol
        favorites.tabBarItem.title = "Favoritos"
        
        self.setViewControllers([home, favorites], animated: true)
    }
    
    private func setupNavigationBar() {
        self.navigationItem.setHidesBackButton(true, animated: true)
    }

}
