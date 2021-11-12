//
//  CatDetailsView.swift
//  Star Wars
//
//  Created by Ahmed Elmemy on 12/11/2021.
//

import SwiftUI

struct CatDetailsView: View {
    
    var cat: Cat
    
    var body: some View {
        GeometryReader{ geometry in
            ScrollView {
                
                VStack(alignment: .leading){
                    ZStack(alignment: .bottom){
                        RemoteImage(url: cat.image)
                            .aspectRatio(contentMode: .fit)
                        Rectangle()
                            .frame(width: geometry.size.width , height: 25, alignment: .center)
                            .opacity(0.3)
                        
                        Text(cat.name)
                            .foregroundColor(.fontColor)
                    }
                    
                    VStack(alignment: .leading,spacing: 10){
                        Text("Birth Year: " + cat.birthYear)
                        Text("Gender: " + cat.gender)
                        Text("Height: " + cat.height)
                        Text("Mass: " + cat.mass)
                        Text("Eye Color: " + cat.eyeColor)
                        Text("Hair Color" + cat.hairColor)
                        Text("Skin Color: " + cat.skinColor)
                        
                    }
                    .padding()
                    
                    Spacer()
                }
            }
            .frame(height: geometry.size.height)
        }
        
        
    }
}

struct CatDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CatDetailsView(cat: cat.results[1])
    }
}
