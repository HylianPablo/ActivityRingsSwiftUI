//
//  ContentView.swift
//  ActivityRings
//
//  Created by Pablo Martinez Lopez on 22/5/22.
//

import SwiftUI

struct ContentView: View {
    @State var percentage1: Double = 0
    @State var percentage2: Double = 0
    @State var percentage3: Double = 0
    
    var body: some View {
        ZStack {
            Ring(lineWidth: 40,
                 backgroundColor: Color.blue.opacity(0.2),
                 foregroundColor: Color.blue,
                 percentage: percentage1)
                .frame(width: 200, height: 200)
                .onTapGesture {
                    self.percentage1 = 100
                }
            Ring(lineWidth: 40,
                 backgroundColor: Color.green.opacity(0.2),
                 foregroundColor: Color.green,
                 percentage: percentage2)
                .frame(width: 150, height: 150)
                .onTapGesture {
                    self.percentage2 = 100
                }
            Ring(lineWidth: 40,
                 backgroundColor: Color.red.opacity(0.2),
                 foregroundColor: Color.red,
                 percentage: percentage3)
                .frame(width: 100, height: 100)
                .onTapGesture {
                    self.percentage3 = 100
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
