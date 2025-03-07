//
//  SearchTextFiledView.swift
//  Dabali
//
//  Created by stephane.boguhe on 06.03.25.
//

import SwiftUI

struct SearchTextFiledView: View {
    
    @Binding var searchString: String
    var textFieldPlaceholder: String = "Rechercher parmis vos repas.."
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .font(.title3.bold())
                .foregroundStyle(.gray)
            TextField(textFieldPlaceholder, text: $searchString)
                .onSubmit {
                    print(searchString)
                }
            Spacer()
            Image(systemName: "line.3.horizontal.decrease")
                .font(.body.bold())
                .foregroundStyle(.darkGreen)
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 20)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.gray, lineWidth: 1)
        )
    }
}

#Preview {
    SearchTextFiledView(searchString: .constant("ma recherche"))
}
