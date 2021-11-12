//
//  CatRow.swift
//  Star Wars
//
//  Created by Ahmed Elmemy on 12/11/2021.
//
import SwiftUI

struct CatRow: View {
    
    var cat: Cat
    
    var body: some View {
        HStack {
            RemoteImage(url: cat.image)
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text(self.cat.name)
            Spacer()
        }
    }
}

struct CatRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CatRow(cat: cat.results[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
