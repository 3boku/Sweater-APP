//
//  ProductRow.swift
//  SweaterShop
//
//  Created by Hyun Seo Jung on 8/8/24.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        HStack (spacing: 20, content: {
            Image(product.image)
                .resizable()
                .frame(width: 50, height: 90)
                .cornerRadius(10)
            
            VStack (alignment: .leading, spacing: 10) {
                Text(product.name)
                    .bold()
                
                Text("$\(product.price)")
            }
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }

        })
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    ProductRow(product: productList[3])
        .environmentObject(CartManager())
}
