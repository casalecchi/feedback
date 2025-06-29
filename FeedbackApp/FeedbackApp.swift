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
    @Environment(\.scenePhase) var scenePhase
    
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
            // dessa forma nos protegemos para caso o usuário fehce a aplicação repentinamente, os dados são salvos
            .onChange(of: scenePhase) { _, phase in
                if phase != .active {
                    dataController.save()
                }
            }
        }
    }
}
