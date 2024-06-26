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
    var title: String
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
    var lens: String
    var camera: String
}
