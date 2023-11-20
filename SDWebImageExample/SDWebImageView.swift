//
//  SDWebImageView.swift
//  SDWebImageExample
//
//  Created by Fatih Durmaz on 20.11.2023.
//

import SwiftUI
import SDWebImageSwiftUI

struct SDWebImageView: View {
    @State var url: String
    var body: some View {
        WebImage(url: URL(string: url))
            .onSuccess { image, data, cacheType in
                print("Başarıyla yüklendi!")
            }
            .onFailure{ error in
                print("Hata: \(error.localizedDescription)")
            }
            .resizable()
            .placeholder{
                Rectangle().foregroundStyle(.gray.opacity(0.5))
            }
            .indicator(.activity)
            .transition(.fade(duration: 0.5))
            .scaledToFit()
            .cornerRadius(8)
            .shadow(radius: 10)
    }
}

#Preview {
    SDWebImageView(url: "")
}
