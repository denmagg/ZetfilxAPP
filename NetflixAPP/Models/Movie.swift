//
//  Movie.swift
//  NetflixAPP
//
//  Created by Денис Медведев on 01.09.2022.
//

import Foundation

struct TrendingMoviesResponse: Codable {
    let results: [Movie]
}

struct Movie: Codable {
    let id: Int
    let media_type: String?
    let original_name: String?
    let originalTitle: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
}

/*
{
adult = 0;
"backdrop_path" = "/lbLPVvgq16BD3IA6sIH3riu9ouO.jpg";
"genre_ids" =             (
27,
9648,
878,
53
);
id = 762504;
"media_type" = movie;
"original_language" = en;
"original_title" = Nope;
overview = "Residents in a lonely gulch of inland California bear witness to an uncanny, chilling discovery.";
popularity = "3447.388";
"poster_path" = "/AcKVlWaNVVVFQwro3nLXqPljcYA.jpg";
"release_date" = "2022-07-20";
title = Nope;
video = 0;
"vote_average" = "7.1";
"vote_count" = 959;
},
*/
