//
//  LogFoodView.swift
//  Dabali
//
//  Created by stephane.boguhe on 06.03.25.
//

import SwiftUI

struct LogFoodView: View {
    
    @StateObject var foodLogs = FoodLogsViewModel(factory: FoodLogsViewModelComposer())
    @State var searchText: String = ""
    
    var body: some View {
        ZStack {
            Color(.bgPrimary)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                LogFoodHeaderView(searchInput: $searchText)
                    .frame(height: 150)
                    .padding(.top, 50)
                
                if let errorMessage = foodLogs.errorMessage,
                   !errorMessage.isEmpty {
                    Spacer()
                    Text(errorMessage)
                        .foregroundStyle(.errorRed)
                    Spacer()
                } else {
                    ZStack {
                        if foodLogs.isLoading {
                            ProgressView()
                        } else if foodLogs.foodLogsEntry.isEmpty {
                            Text("Aucune Entrée")
                                .foregroundStyle(.deepGray)
                                .transition(.opacity)
                        } else {
                            ScrollView {
                                LazyVStack(spacing: 10) {
                                    ForEach(0..<foodLogs.foodLogsEntry.count, id: \.self) { index in
                                        LogFoodCardView(vm: $foodLogs.foodLogsEntry[index])
                                            .transition(.opacity.combined(with: .move(edge: .bottom)))
                                    }
                                }
                                .padding()
                            }
                            .transition(.opacity)
                        }
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .animation(.easeInOut(duration: 0.5), value: foodLogs.foodLogsEntry.count)
                    
                }
                
                
            }
        }
        .ignoresSafeArea()
        .onAppear {
            foodLogs.getFoodLogs()
        }
    }
}

#Preview {
    LogFoodView()
}
