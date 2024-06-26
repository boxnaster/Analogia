//
//  NewShotView.swift
//  Analogia
//
//  Created by Анастасия Тимофеева on 10.06.2024.
//

import Foundation
import SwiftUI
import PhotosUI

struct NewShotView: View {
    @State private var name: String = ""
    @State private var film: String = ""
    @State private var camera: String = ""
    @State private var lens: String = ""
    @State private var focus: String = ""
    @State private var isFlashUsed: Bool = false
    @State private var note: String = ""

    var location: String = "O utca 9" // need to get the location

    let apertureValues = ["None", "1.8", "2.0", "5.6"]
    @State private var aperture = "None"

    let shutterSpeedValues = ["None", "1/1000", "1/500", "1/125", "1"]
    @State private var shutterSpeed = "None"

    let isoValues = ["None", "200", "400", "800"]
    @State private var iso = "None"

    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Title", text: $name)
                    Text(location)
                }

                Section {
                    TextField("Camera", text: $camera)
                    TextField("Lens", text: $lens)
                }

                Section {
                    TextField("Film", text: $film)
                }

                Section {
                    Picker("Aperture", selection: $aperture) {
                        ForEach(apertureValues, id: \.self) {
                            Text($0)
                        }
                    }

                    Picker("Shutter Speed", selection: $shutterSpeed) {
                        ForEach(shutterSpeedValues, id: \.self) {
                            Text($0)
                        }
                    }

                    Picker("ISO", selection: $iso) {
                        ForEach(isoValues, id: \.self) {
                            Text($0)
                        }
                    }

                    TextField("Focus", text: $focus)
                }

                Section {
                    Toggle("Flash", isOn: $isFlashUsed)
                }

                Section {
                    TextField("Notes", text: $note)
                }
                .frame(height: 200, alignment: .topLeading)
            }
                .navigationTitle("New Shot")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(content: {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Done") {
                            // Save the data
                        }
                    }
                    ToolbarItem(placement: .topBarLeading) {
                        Button("Cancel") {
                            dismiss()
                        }
                    }
                })
        }
    }
}

#Preview {
    NewShotView()
}
