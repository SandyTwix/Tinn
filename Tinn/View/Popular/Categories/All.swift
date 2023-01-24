//
//  First.swift
//  Tinn
//
//  Created by Руслан Трищенков on 18.01.2023.
//

import SwiftUI

struct All: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 0){
                VideoCard()
                VideoCard()
                VideoCard()
                VideoCard()
                VideoCard()
                VideoCard()
                VideoCard()
                VideoCard()
            }
        }
    }
}

struct All_Previews: PreviewProvider {
    static var previews: some View {
        All()
    }
}
