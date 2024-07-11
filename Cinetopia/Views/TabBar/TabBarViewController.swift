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
        let moviesView = MoviesView()
        let moviesInterector = MoviesInteractor()
        let moviesPresenter = MoviesPresenter(view: moviesView, interector: moviesInterector)
        let home = UINavigationController(rootViewController: MoviesViewController(presenter: moviesPresenter, view: moviesView))
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
