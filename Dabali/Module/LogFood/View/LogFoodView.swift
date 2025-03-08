//
//  LogFoodView.swift
//  Dabali
//
//  Created by stephane.boguhe on 06.03.25.
//

import SwiftUI

struct LogFoodView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        ZStack {
            Color(.bgPrimary)
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Spacer()
                LogFoodHeaderView(searchInput: $searchText)
            }
        }
        .ignoresSafeArea()
    }
    
}

#Preview {
    LogFoodView()
}
