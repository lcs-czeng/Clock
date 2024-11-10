//
//  WorldClockStructure.swift
//  Clock
//
//  Created by 曾梓恒 on 2024/11/10.
//

import Foundation

import SwiftUI

struct WorldClockStructure: View {
    let offset: String
    let city: String
    let time: String
    let period: String

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Today, \(offset)")
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                    Text(city)
                        .font(.system(size: 30))
                }
                Spacer()
                HStack(alignment: .lastTextBaseline) {
                    Text(time)
                        .font(.system(size: 57, weight: .light))
                    Text(period)
                        .font(.system(size: 30))
                }
            }
            .padding(.top, 8)
            .padding(.horizontal)
            .border(Color.green)
        }
    }
}
