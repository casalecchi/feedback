//
//  FeedbackAppApp.swift
//  FeedbackApp
//
//  Created by Felipe Casalecchi on 12/01/25.
//

import SwiftUI

@main
struct FeedbackApp: App {
    @StateObject var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            NavigationSplitView {
                SidebarView()
            } content: {
                ContentView()
            } detail: {
                DetailView()
            }
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
