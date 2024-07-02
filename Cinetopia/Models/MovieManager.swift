//
//  MovieManager.swift
//  Cinetopia
//
//  Created by Matheus Silveira on 02/07/24.
//

import Foundation

class MovieManager {
    
    static let shared = MovieManager()
    var favoritesMovies: [Movie] = []
    
    private init() {}
    
    func add(_ movie: Movie) {
        if favoritesMovies.contains(where: {$0.id == movie.id}) {
            remove(movie)
        } else {
            favoritesMovies.append(movie)
        }
    }
    
    func remove(_ movie: Movie) {
        if let index = favoritesMovies.firstIndex(where: {$0.id == movie.id}) {
            favoritesMovies.remove(at: index)
        }
    }
}
