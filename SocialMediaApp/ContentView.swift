//
//  ContentView.swift
//  SocialMediaApp
//
//  Created by MD Tanvir Alam on 13/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            LoginView()
                .navigationBarHidden(true)
                .preferredColorScheme(.dark)
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
