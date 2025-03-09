//
//  LogFoodCardView.swift
//  Dabali
//
//  Created by stephane.boguhe on 07.03.25.
//

import SwiftUI

struct LogFoodCardView: View {
    
    @Binding var vm: FoodEntry
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            
            // MARK: - Card Hearder
            
            HStack {
                Text(vm.foodName)
                    .font(.system(.title3, weight: .bold))
                    .foregroundStyle(.black)
                Spacer()
                Button {
                    print("delete food")
                } label: {
                    Image(systemName: "xmark")
                        .font(.callout.bold())
                        .foregroundStyle(.gray)
                        .opacity(0.25)
                }
            }
            
            // MARK: - Card Core Data
            
            HStack {
                Text("\(vm.foodType.typeIcon) \(vm.foodType.title)")
                    .font(.system(.subheadline, weight: .light))
                    .foregroundStyle(.deepGray)
            }
            
            // MARK: - Card Metadata
            
            HStack {
                Text("émotion \(vm.feeling.feelingIcon)")
                    .font(.system(.subheadline, weight: .light))
                    .foregroundStyle(.deepGray)
                Divider()
                    .frame(width: 1, height: 15)
                    .background(.gray)
                Text("satisfaisant?")
                    .font(.system(.subheadline, weight: .light))
                    .foregroundStyle(.deepGray)
                Text("\(vm.isWorthIt ? "Yes" : "Non")")
                    .font(.system(.caption, weight: .bold))
                    .foregroundStyle(vm.isWorthIt ? .fgGreen : .fgRed)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 8)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(vm.isWorthIt ? .bgGreen : .bgRed)
                    )
            }
            
            // MARK: - Take A Breath
            
            Divider()
                .background(.borderLight)
            
            // MARK: - Card Footer
            
            Text("\(String(describing: vm.notes ?? ""))")
                .font(.system(.subheadline, weight: .medium))
                .foregroundStyle(.deepGray)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 18)
                .fill(.white)
                .stroke(.borderLight.opacity(0.15), lineWidth: 1)
        )
        .padding(.horizontal)
    }
}

#Preview {
    ZStack {
        Color(.bgPrimary)
            .ignoresSafeArea()
        LogFoodCardView(vm: .constant(FoodEntry(id: "550e8400-e29b-41d4-a716-446655440000", timestamp: "2025-03-09", foodName: "Omelette", foodType: .breakfast, feeling: .bad, isWorthIt: true, notes: "Très salé")))
    }
    
}
