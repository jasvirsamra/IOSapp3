//
//  CardDetailView.swift
//  iOSApp2
//
//  Created by Chris Goerk on 2025-02-05.
//

import SwiftUI

struct CardDetailView: View {
  @EnvironmentObject var store: CardStore
  @Binding var card: Card

  var body: some View {
    ZStack {
      card.backgroundColor
      ForEach($card.elements, id: \.id) { $element in
        CardElementView(element: element)
      }
    }
  } // body
} // CardDetailView

struct CardDetailView_Previews: PreviewProvider {
  struct CardDetailPreview: View {
    @EnvironmentObject var store: CardStore
    var body: some View {
      CardDetailView(card: $store.cards[0])
    }
  }

  static var previews: some View {
    CardDetailPreview()
      .environmentObject(CardStore(defaultData: true))
  }
} // CardDetailView_Previews
