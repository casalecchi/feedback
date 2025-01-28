//
//  ContentView.swift
//  FeedbackApp
//
//  Created by Felipe Casalecchi on 12/01/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var dataController: DataController
    
    var body: some View {
        Text(dataController.selectedFilter?.name ?? "None")
    }
}

#Preview {
    ContentView()
}
