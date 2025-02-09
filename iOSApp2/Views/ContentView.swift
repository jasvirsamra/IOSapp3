//
//  ContentView.swift
//  iOSApp2
//
//  Created by Chris Goerk on 2025-02-05.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    WelcomeView()
  }
} // Contentview

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .environmentObject(CardStore(defaultData: true))
  }
} // ContentView_Previews
