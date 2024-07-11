//
//  MoviesPresenter.swift
//  Cinetopia
//
//  Created by Matheus Silveira on 11/07/24.
//

import UIKit

protocol MoviesPresenterToViewControllerProtocol: AnyObject {
    func setViewController(_ viewController: MoviesViewControllerToPresenterProtocol)
    func viewDidLoad()
    func viewDidAppear()
}

protocol MoviesPresenterToViewProtocol: AnyObject {
    func didSelect(movie: Movie)
    func didSelectFavoriteButton(_ movie: Movie)
    func didSearchText(_ searchBar: UISearchBar, textDidChange searchText: String, _ movies: [Movie], _ filteredMovies: inout [Movie])
}

class MoviesPresenter: MoviesPresenterToViewControllerProtocol {
    
    private var controller: MoviesViewControllerToPresenterProtocol?
    private var view: MoviesViewProtocol?
    private var intector: MoviesPresenterToInteractorProtocol?
    
    init(view: MoviesViewProtocol, interector: MoviesPresenterToInteractorProtocol) {
        self.view = view
        self.intector = interector
    }
    
    func setViewController(_ viewController: MoviesViewControllerToPresenterProtocol) {
        self.controller = viewController
    }
    
    func viewDidLoad() {
        view?.setPresenter(self)
        Task {
            await fetchMovies()
        }
    }
    
    func viewDidAppear() {
        view?.reloadData()
    }
    
    private func fetchMovies() async {
        do {
            guard let movies = try await intector?.fetchMovies() else { return }
            view?.setupView(with: movies)
            view?.reloadData()
        } catch (let error) {
            print(error)
        }
    }
}

extension MoviesPresenter: MoviesPresenterToViewProtocol {
    func didSelect(movie: Movie) {
        controller?.didSelectMovie(movie)
    }
    
    func didSelectFavoriteButton(_ movie: Movie) {
        movie.changeSelectedStatus()
        MovieManager.shared.add(movie)
    }
    
    func didSearchText(_ searchBar: UISearchBar, textDidChange searchText: String, _ movies: [Movie], _ filteredMovies: inout [Movie]) {
        if searchText.isEmpty {
            view?.toggle(false)
        } else {
            filteredMovies = movies.filter({ movie in
                movie.title.lowercased().contains(searchText.lowercased())
            })
            view?.toggle(true)
        }
    }
    
}
