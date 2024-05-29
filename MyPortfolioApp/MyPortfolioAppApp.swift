//
//  MyPortfolioAppApp.swift
//  MyPortfolioApp
//
//  Created by Robert Caslin on 5/23/24.
//

import SwiftUI

@main
struct MyPortfolioAppApp: App {
    @StateObject var dataController: DataController = DataController()
    
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
