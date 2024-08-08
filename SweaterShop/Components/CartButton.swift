//
//  CartButton.swift
//  SweaterShop
//
//  Created by Hyun Seo Jung on 8/8/24.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts: Int
    var body: some View {
        ZStack (alignment: .topTrailing) {
            Image(systemName: "cart")
                .padding(.top, 5)
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2).bold()
                    .foregroundStyle(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(.red))
                    .cornerRadius(50)
            }
        }
    }
}

#Preview {
    CartButton(numberOfProducts: 1)
}
