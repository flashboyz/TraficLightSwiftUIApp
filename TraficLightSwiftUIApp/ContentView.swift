//
//  ContentView.swift
//  TraficLightSwiftUIApp
//
//  Created by Константин Прокофьев on 07.09.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
        Color.black.edgesIgnoringSafeArea(.all)
        VStack {
            VStack{
                ColorCircle(color: .red, opacity: 0.2)
                ColorCircle(color: .yellow, opacity: 0.2)
                ColorCircle(color: .green, opacity: 0.2)
            }
            Spacer()
            Button
        }
        }
    }
    
    private var Button: some View {
        SwiftUI.Button("Start"
                       , action: {
                        
                       })
            .font(.headline)
            .foregroundColor(.white)
            .background(Color.blue)
            .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
