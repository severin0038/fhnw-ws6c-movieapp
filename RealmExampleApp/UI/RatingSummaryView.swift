//
//  RatingSummaryView.swift
//  RealmExampleApp
//
//  Created by Andi Meier on 02.05.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import SwiftUI

struct RatingSummaryView: View {
    
    @State var rating: Int
    
    var body: some View {
        HStack {
            Image(systemName: "star")
                .resizable()
                .frame(width: 16, height: 16)
                .foregroundColor(Color.yellow)
            Text(String(rating))
                .font(.system(size: 12))
                .foregroundColor(Color.yellow)
        }
    }
}

struct RatingSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSummaryView(rating: 3)
    }
}
