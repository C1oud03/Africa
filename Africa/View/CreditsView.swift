//
//  CreditsView.swift
//  Africa
//
//  Created by Семён Рытенков on 11.05.2021.
//

import SwiftUI

struct CreditsView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
    Copyright © Semen Rytenkov
    All right reserved
    Better Apps ♡ Less Code
    """)
                .font(.footnote)
                .multilineTextAlignment(.center)
        } //: VSTACK
        .padding()
        .opacity(0.4)
    } //: BODY
}

// MARK: - PREVIEW

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
