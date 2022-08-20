//
//  NewsViewModel.swift
//  AutodocTest
//
//  Created by Михаил Серёгин on 21.08.2022.
//

import Foundation

protocol NewsViewModelProtocol {
    var news: [String] { get }
}

final class NewsViewModel: NewsViewModelProtocol {
    
    private(set) var news: [String] = ["qweqwe","qweq","qweqwe"]
}
