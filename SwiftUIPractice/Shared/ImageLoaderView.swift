//
//  ImageLoaderView.swift
//  SwiftUIPractice
//
//  Created by Agung Nawawi on 07/08/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoaderView: View {
    
    var urlString: String = Constants.randomImage
    
    var body: some View {
        WebImage(url : URL(string: urlString))
            .resizable()
            .indicator(.activity)
            .scaledToFill()
    }
}

#Preview {
    ImageLoaderView()
}
