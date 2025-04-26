//
//  ContentView.swift
//  tasbih
//
//  Created by Sarvar Boltaboyev on 26/04/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var startIndex = 1
    @State private var endIndex = 9
    @State private var empty = 5
    @State private var empty2 = 6
//    @State private var beads = Array(1...33)
//    @State private var currentIndex = 0
    
    var body: some View {
        VStack() {
            ZStack {
                Rectangle()
                    .fill(.gray)
                    .frame(maxWidth: .infinity)
                    .frame(height: 3)
                HStack(spacing: 0) {
                    ForEach(startIndex...endIndex, id: \.self) { index in
                        switch index {
                        case empty, empty2:
                            Image("circle")
                                
                                .resizable()
                                .frame(width: 45, height: 45)
                                .opacity(0)
                            
                        default:
                            Image("circle")
                                .resizable()
                                .frame(width: 45, height: 45)
                        }
                        
                        
                    }
                }
//                .offset(x: CGFloat(currentIndex *  50))
                .animation(.easeInOut(duration: 0.3), value: startIndex)
            }
            Button {
               
                empty2 -= 1
                empty -= 1
                
                startIndex -= 2
                
            } label: {
                ZStack {
                    Circle()
                        .fill(.gray).opacity(0.3)
                        .frame(width: 128, height: 128)
                    Text("+")
                        .font(.system(size: 48))
                        .tint(.black)
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
