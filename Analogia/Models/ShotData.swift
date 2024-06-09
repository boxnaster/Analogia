//
//  ShotData.swift
//  Analogia
//
//  Created by Анастасия Тимофеева on 09.06.2024.
//

import Foundation
import SwiftUI

struct Shot: Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    var name: String
    var date: Date
    var image: Image
    var location: String
    var film: String
    var aperture: Float
    var shutterSpeed: String
    var iso: Int
    var focus: Float
    var note: String
    var flashIsUsed: Bool
}
