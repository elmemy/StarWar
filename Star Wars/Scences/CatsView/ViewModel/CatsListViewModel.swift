//
//  CatsListViewModel.swift
//  Star Wars
//
//  Created by Ahmed Elmemy on 12/11/2021.
//

import SwiftUI

class CatsListViewModel: ObservableObject {
    
    @Published var cats = [Cat]()
    @Published var loading = false
    
    
    
    
    let dataService: CatsApiService
    
    init(dataService: CatsApiService = AppDataService()) {
        self.dataService = dataService
    }
    
    func configure(with something: Any) {
        
    }
    
    func getCats() {
        if self.cats.isEmpty{
            self.loading = true
            dataService.getCatsList { [weak self] cats in
                self?.cats = cats
                self?.loading = false
            }
        }
        
    }
    
}
