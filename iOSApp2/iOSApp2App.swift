//
//  iOSApp2App.swift
//  iOSApp2
//
//  Created by Jasvir Singh on 2025-02-05.
//

import SwiftUI

@main
struct iOSApp2App: App {
  @StateObject var store = CardStore(defaultData: true)

  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(store)
    }
  }
}
