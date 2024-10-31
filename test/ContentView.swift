//
//  ContentView.swift
//  test
//
//  Created by Admin on 25/10/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var isAnimating = false
    var body: some View {
        VStack(alignment: .trailing,content: {
          
            GeometryReader{
                geometry in
                VStack{
                    Image(systemName: "car.side.fill").resizable().frame(width: 70,height: 70)
                        .offset(x: isAnimating ? geometry.size.width
                                - geometry.size.width / 5.3
                                : 3)
                        .onTapGesture {
                            withAnimation {
                                isAnimating.toggle() // Animates the state change
                            }
                        }
                }.frame(maxHeight: .infinity,alignment: .center).background()
               
            }.frame(height: .infinity).background(.blue)
          
        })
     
    }
}

#Preview {
    ContentView()
}
