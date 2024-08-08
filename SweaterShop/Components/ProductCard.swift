//
//  ProductCard.swift
//  SweaterShop
//
//  Created by Hyun Seo Jung on 8/8/24.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManaver: CartManager
    var product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment: .leading, content: {
                    Text(product.name)
                        .bold()
                    
                    Text("\(product.price)$")
                        .font(.caption)
                })
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 3)
            
            Button {
                cartManaver.addToCart(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundStyle(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }

        }
    }
}

#Preview {
    ProductCard(product: productList[0])
        .environmentObject(CartManager())
}
