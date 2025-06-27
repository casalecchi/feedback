//
//  NoIssueView.swift
//  FeedbackApp
//
//  Created by Felipe Casalecchi on 27/06/25.
//

import SwiftUI

struct NoIssueView: View {
    @EnvironmentObject var dataController: DataController
    
    var body: some View {
        Text("No Issue Selected")
            .font(.title)
            .foregroundStyle(.secondary)
        
        Button("New Issue") {
            // criar nova issue
        }
    }
}

#Preview {
    NoIssueView()
}
