//
//  ContentView.swift
//  Analogia
//
//  Created by Анастасия Тимофеева on 09.06.2024.
//

import SwiftUI

var shots = [Shot(objectID: "1",
                  title: "Cow",
                  date: Date.now,
                  image: Image("Cow"),
                  location: "Lazar utca 9",
                  film: "Kodak Gold 200",
                  aperture: 5.6,
                  shutterSpeed: "1/1000",
                  iso: 400,
                  focus: 7.5,
                  note: "I used exposure compensation",
                  flashIsUsed: false,
                  lens: "Canon RF 24-105mm F2.8L IS USM Z",
                  camera: "Canon EOS R5"),

             Shot(objectID: "2",
                  title: "Lighthouse",
                  date: Date.now,
                  image: Image("Lighthouse"),
                  location: "O utca",
                  film: "Kodak Portra 400",
                  aperture: 2.0,
                  shutterSpeed: "1/125",
                  iso: 200,
                  focus: 10.0,
                  note: "A lighthouse on Madeira",
                  flashIsUsed: true,
                  lens: "Canon RF 24-105mm F2.8L IS USM Z",
                  camera: "Canon EOS R5")
]

struct ContentView: View {
    @State private var showingSheet = false
    
    var body: some View {
        NavigationView {
            ZStack {
                List(shots) { shot in
                    NavigationLink(destination: DetailView()) {
                        HStack {
                            VStack(alignment: .leading) {
                                Text(shot.title)
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
            }
            .navigationTitle("Shots")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("New Shot") {
                        showingSheet.toggle()
                    }
                    .sheet(isPresented: $showingSheet) {
                        NewShotView()
                    }
                }
            })
        }
    }
}

#Preview {
    ContentView()
}
