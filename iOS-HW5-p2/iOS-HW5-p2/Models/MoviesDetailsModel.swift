//
//  MoviesDetailsModel.swift
//  iOS-HW5-p2
//
//  Created by Huda on 7/5/20.
//  Copyright © 2020 shaikha aljenaidel. All rights reserved.
//

import Foundation

struct Movie {
    var name: String
    var rating: Double
    var PGrate: String
    var movieReleaseDate: Int
    var Actors: [String]
    
    func songName() -> String {
        return name + ".mp3"
    }
    
}


var moviesData = [                                                 //اسمه الصجي طويل فحطيت ذا روك😂
    Movie(name: "Moana", rating: 7.6, PGrate: "PG-6", movieReleaseDate: 2016, Actors: ["The Rock", "Auli'i Cravalho", "Jemaine Clement"]),
    Movie(name: "Snowpiercer", rating: 7.1, PGrate: "PG-14", movieReleaseDate: 2013, Actors: ["Chris Evans", "John Hurt", "Jamie Bell"]),
    Movie(name: "The Little Mermaid", rating: 7.6, PGrate: "PG-5", movieReleaseDate: 1989, Actors: ["Jodi Benson", "Pat Carroll", "Buddy Hackett"]),
    Movie(name: "Lion King", rating: 6.9, PGrate: "PG-5", movieReleaseDate: 2019, Actors: ["Donald Glover", "Beyonce", "James Earl"]),
    //                 مال يهال بس احبه، اغانيه تونس😝 👇🏼😂
    Movie(name: "Annie", rating: 5.3, PGrate: "PG-6", movieReleaseDate: 2014, Actors: ["Will Smith", "Sia", "Jamie Foxx"])
]
