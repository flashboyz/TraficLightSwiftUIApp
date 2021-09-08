//
//  ContentView.swift
//  TraficLightSwiftUIApp
//
//  Created by Константин Прокофьев on 07.09.2021.
//

import SwiftUI

struct ContentView: View {
    @State var redOpacity =  0.2
    @State var yellowOpacity = 0.2
    @State var greenOpacity = 0.2
    
    @State var redLightIsOn = false
    @State var yellowLightIsOn = false
    @State var greenLightIsOn = false
    
    @State var buttonText = "START"
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                VStack{
                    ColorCircle(color: .red, opacity: redOpacity)
                    ColorCircle(color: .yellow, opacity: yellowOpacity)
                    ColorCircle(color: .green, opacity: greenOpacity)
                    Spacer()
                    Button(action: {
                        buttonText = "NEXT"
                        if yellowLightIsOn {
                            yellowOpacity = 1
                            redOpacity = 0.2
                            yellowLightIsOn = false
                            greenLightIsOn = true
                        } else if greenLightIsOn {
                            greenOpacity = 1
                            yellowOpacity = 0.2
                            redLightIsOn = true
                            greenLightIsOn = false
                        } else {
                            redOpacity = 1
                            greenOpacity = 0.2
                            yellowLightIsOn = true
                            redLightIsOn = false
                        }
                        
                    }, label: {
                        Text(buttonText)
                    })
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .font(.title)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 2))
                    .shadow(radius: 5)
                    .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.blue))
                    .foregroundColor(.white)
                
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

