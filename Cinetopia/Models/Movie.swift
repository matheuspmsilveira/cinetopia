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

//let movies: [Movie] = [
//    Movie(id: 1, title: "Star Wars: Episódio I - A Ameaça Fantasma", image: "StarWars-Episode1", synopsis: "Obi-Wan e seu mentor embarcam em uma perigosa aventura na tentativa de salvar o planeta das garras de Darth Sidious. Durante a viagem, eles conhecem um habilidoso menino e decidem treiná-lo para se tornar um Jedi. Mas o tempo irá revelar que as coisas nem sempre são o que aparentam ser.", rate: 9.5, releaseDate: "24/06/1999"),
//    Movie(id: 2, title: "Harry Potter e o Prisioneiro de Azkaban", image: "HP-3", synopsis: "É o início do terceiro ano na escola de bruxaria Hogwarts. Harry, Ron e Hermione têm muito o que aprender. Mas uma ameaça ronda a escola e ela se chama Sirius Black. Após doze anos encarcerado na prisão de Azkaban, ele consegue escapar e volta para vingar seu mestre, Lord Voldemort. Para piorar, os Dementores, guardas supostamente enviados para proteger Hogwarts e seguir os passos de Black, parecem ser ameaças ainda mais perigosas.", rate: 8.5, releaseDate: "04/06/2004"),
//    Movie(id: 3, title: "Doutor Estranho", image: "DoctorStrange", synopsis: "Após sua carreira ser destruída, um brilhante, porém arrogante, cirurgião ganha uma nova chance em sua vida quando um feiticeiro o treina para se tornar o Mago Supremo.", rate: 8, releaseDate: "02/11/2016")
//]
