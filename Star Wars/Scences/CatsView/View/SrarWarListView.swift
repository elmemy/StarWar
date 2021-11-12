//
//  SrarWarListView.swift
//  SrarWarListView
//
//  Created by Ahmed Elmemy on 12/11/2021.
//

import SwiftUI

struct SrarWarListView: View {
    
    @StateObject var viewModel: CatsListViewModel
    
    init(viewModel: CatsListViewModel = .init()) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        NavigationView {
            ZStack{
                List(viewModel.cats) { cat in
                    NavigationLink(destination: CatDetailsView(cat: cat)) {
                        CatRow(cat: cat)
                    }
                }
                .onAppear(perform: viewModel.getCats)
                .navigationTitle("Star War Cats")
                .animation(.default)
                ActivityIndicator(isAnimating: .constant(viewModel.loading), style: .large)
                
                
            }
            
        }
    }
    
}

struct SrarWarListView_Previews: PreviewProvider {
    static var previews: some View {
        SrarWarListView()
    }
}
