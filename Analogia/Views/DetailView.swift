//
//  DetailView.swift
//  Analogia
//
//  Created by Анастасия Тимофеева on 09.06.2024.
//

import Foundation
import SwiftUI

var shot = Shot(objectID: "1",
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
                lens: "Canon RF 24-105mm F2.8L IS USM Z lens",
                camera: "Canon EOS R5")

struct DetailView: View {
    var body: some View {
        ScrollView {
            VStack {
                shot.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                VStack(alignment: .leading, spacing: 10) {
                    Text("Title: \(shot.title)")
                    Text("Date: \(shot.date.formatted())")
                    Text("Location: \(shot.location)")
                    Text("Camera: \(shot.camera)")
                    Text("Lens: \(shot.lens)")
                    Text("Film: \(shot.film)")
                    Text("ISO: \(shot.iso)")
                    Text("Aperture: \(shot.aperture.formatted())")
                    Text("Shutter Speed: \(shot.shutterSpeed)")
                    Text("Focus: \(shot.focus.formatted())")
                    if shot.flashIsUsed {
                        Text("Flash: Yes")
                    } else {
                        Text("Flash: No")
                    }
                    Text("Note: \(shot.note)")
                }
            }
        }
    }
}

#Preview {
    DetailView()
}
