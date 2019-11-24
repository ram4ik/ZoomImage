//
//  ContentView.swift
//  ZoomImage
//
//  Created by Ramill Ibragimov on 24.11.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var show = false
    
    var body: some View {
        VStack {
            Image(uiImage: UIImage(named: "Garfield")!)
                .resizable()
                .scaledToFit()
                .frame(width: show ? 40 : 250, height: show ? 100: 750)
                .onTapGesture {
                    withAnimation {
                        self.show.toggle()
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
