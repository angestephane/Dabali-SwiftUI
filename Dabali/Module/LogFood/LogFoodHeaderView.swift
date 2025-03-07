//
//  LogFoodHeaderView.swift
//  Dabali
//
//  Created by stephane.boguhe on 06.03.25.
//

import SwiftUI

struct LogFoodHeaderView: View {
    
    @Binding var searchInput: String
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                HStack {
                    HStack {
                        Image(systemName: "carrot.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.fgGreen)
                        Text("dabali")
                            .font(.system(.title2, weight: .bold))
                            .foregroundStyle(.fgPrimary)
                    }
                    Spacer()
                    Button {
                        print("Hello from logFood home screen")
                    } label: {
                        HStack {
                            Text("Nouveau Repas")
                                .font(.system(.subheadline, design: .rounded, weight: .bold))
                                .foregroundStyle(.fgGreen)
                        }
                    }
                    .buttonStyle(OutlinePlusIconButton())
                }
                SearchTextFiledView(searchString: $searchInput)
            }
            
            Spacer()
        }
        .padding(20)
    }
}


#Preview {
    LogFoodHeaderView(searchInput: .constant("Texte recherchez"))
}
