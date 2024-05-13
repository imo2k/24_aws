//
//  ContentView.swift
//  PetInformationApp
//
//  Created by o2k on 4/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            ProfileView()
            likesView()
            SkillView()
            PhotoViews()
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
