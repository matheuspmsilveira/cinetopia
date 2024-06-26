//
//  Movie.swift
//  Cinetopia
//
//  Created by Matheus Silveira on 13/06/24.
//

import Foundation

struct Movie: Decodable {
    let id: String
    let title: String
    let image: String
    let synopsis: String
    let rate: Double
    let releaseDate: String
}

let movies: [Movie] = [
    Movie(id: "1", title: "Avatar", image: "https://github.com/alura-cursos/movie-api/blob/main/images/avatar.jpg?raw=true", synopsis: "Um militar paraplégico despachado para a lua Pandora em uma missão única fica dividido entre seguir suas ordens e proteger o mundo que ele sente ser sua casa.", rate: 7.9, releaseDate: "18/12/2009"),
    Movie(id: "2", title: "Vingadores: Ultimato", image: "https://github.com/alura-cursos/movie-api/blob/main/images/vingadores-ultimato.jpg?raw=true", synopsis: "Após os eventos devastadores de Vingadores: Guerra Infinita, o universo está em ruínas, e com a ajuda de aliados os Vingadores se reúnem para desfazer as ações de Thanos e restaurar a ordem.", rate: 8.4, releaseDate: "25/04/2019"),
    Movie(id: "3", title: "Avatar: O Caminho da Água", image: "https://github.com/alura-cursos/movie-api/blob/main/images/avatar-2.jpg?raw=true", synopsis: "Após os eventos devastadores de Vingadores: Guerra Infinita , o universo está em ruínas, e com a ajuda de aliados os Vingadores se reúnem para desfazer as ações de Thanos e restaurar a ordem.", rate: 7.6, releaseDate: "16/12/2022")
]
