//
//  MainFactoryImplementation.swift
//  MVVM-ListFilms
//
//  Created by Lucas De Castro Carvalho on 27/03/22.
//

import Swinject

final class ListFactory: ListFactoryProtocol {
    
    
    // MARK: - PRIVATE PROPERTIES
   
    private let resolver: Resolver
    
    // MARK: - PUBLIC API
   
    init(resolver: Resolver) {
        self.resolver = resolver
    }
    
    func makeListViewController() -> ListViewController {
        return resolver.resolve(ListViewController.self)!
    }
    
    func makeDetailViewController(data: TopRatedMovieList) -> DetailViewController {
        return resolver.resolve(DetailViewController.self, argument: data)!
    }
}
