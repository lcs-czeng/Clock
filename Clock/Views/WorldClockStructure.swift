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
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 1) {
                    Text("Today, \(offset)")
                        .font(.system(size: 13))
                        .foregroundColor(.gray)
                    Text(city)
                        .font(.system(size: 28, weight: .medium))
                }
                Spacer()
                HStack(alignment: .lastTextBaseline, spacing: 2) {
                    Text(time)
                        .font(.system(size: 56, weight: .thin))
                    Text(period)
                        .font(.system(size: 28))
                }
            }
            .padding(.vertical, 8)
            Divider()
                .padding(.vertical, 4)
        }
        .padding(.horizontal)
    }
}
