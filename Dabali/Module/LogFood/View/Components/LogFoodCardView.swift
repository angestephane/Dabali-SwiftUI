//
//  LogFoodCardView.swift
//  Dabali
//
//  Created by stephane.boguhe on 07.03.25.
//

import SwiftUI

struct LogFoodCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            
            // MARK: - Card Hearder
            
            HStack {
                Text("Omelette")
                    .font(.system(.title3, weight: .bold))
                    .foregroundStyle(.black)
                Spacer()
                Button {
                    print("delete food")
                } label: {
                    Image(systemName: "xmark")
                        .font(.title3.bold())
                        .foregroundStyle(.gray)
                }
            }
            
            // MARK: - Card Core Data
            
            HStack {
                Text("🍳 Petit Déjeuner")
                    .font(.system(.subheadline, weight: .light))
                    .foregroundStyle(.deepGray)
            }
            
            // MARK: - Card Metadata
            
            HStack {
                Text("émotion 😢")
                    .font(.system(.subheadline, weight: .light))
                    .foregroundStyle(.deepGray)
                Divider()
                    .frame(width: 1, height: 15)
                    .background(.gray)
                Text("satisfaisant?")
                    .font(.system(.subheadline, weight: .light))
                    .foregroundStyle(.deepGray)
                Text("Non")
                    .font(.system(.subheadline, weight: .bold))
                    .foregroundStyle(.fgRed)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.bgRed)
                    )
            }
            
            // MARK: - Take A Breath
            
            Divider()
                .background(.borderLight)
            
            // MARK: - Card Footer
            
            Text("J'aurai du éviter de manger cette merde.")
                .font(.system(.subheadline, weight: .medium))
                .foregroundStyle(.deepGray)
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 18)
                .fill(.white)
                .stroke(.borderLight.opacity(0.15), lineWidth: 1)
        )
        .padding()
    }
}

#Preview {
    ZStack {
        Color(.bgPrimary)
            .ignoresSafeArea()
        LogFoodCardView()
    }
    
}
