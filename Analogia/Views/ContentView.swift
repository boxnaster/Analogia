//
//  ContentView.swift
//  Analogia
//
//  Created by Анастасия Тимофеева on 09.06.2024.
//

import SwiftUI

var shots = [Shot(objectID: "1",
                  name: "Cow",
                  date: Date.now,
                  image: Image("Cow"),
                  location: "Lazar utca 9",
                  aperture: 5.6,
                  exposure: 1000,
                  iso: 400,
                  focus: 7.5,
                  description: "I used exposure compensation"),

             Shot(objectID: "2",
                  name: "Lighthouse",
                  date: Date.now,
                  image: Image("Lighthouse"),
                  location: "O utca",
                  aperture: 2.0,
                  exposure: 125,
                  iso: 200,
                  focus: 10.0,
                  description: "A lighthouse on Madeira")]

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(shots) { shot in
                NavigationLink(destination: DetailView()) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(shot.name)
                                .fontWeight(.heavy)
                            Text(shot.date.formatted())
                        }
                        shot.image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50, alignment: .trailing)
                    }
                }
            }
            .navigationTitle("Shots")
        }
    }
}

#Preview {
    ContentView()
}
