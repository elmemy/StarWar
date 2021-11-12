//
//  CatsApiService.swift
//  Star Wars
//
//  Created by Ahmed Elmemy on 12/11/2021.
//

import Foundation

protocol CatsApiService {
    func getCatsList(completion: @escaping ([Cat]) -> Void)
}

class AppDataService: CatsApiService {
    func getCatsList(completion: @escaping ([Cat]) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            completion(
                cat.results
            )
        }
    }
}
