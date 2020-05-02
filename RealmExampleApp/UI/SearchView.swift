//
//  SearchView.swift
//  RealmExampleApp
//
//  Created by Andi Meier on 02.05.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Search")
            }.navigationBarTitle(Text("Search"))
        }    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
