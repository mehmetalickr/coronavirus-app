//
//  SearchView.swift
//  CoronavirusApp
//
//  Created by Mehmet Ali ÇAKIR on 21.09.2021.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        
        HStack {
            
            TextField("Country...", text: $searchText)
                .padding()
        }
        .frame(height: 50)
        .background(Color("cardBackgroundGray"))
    }
}
