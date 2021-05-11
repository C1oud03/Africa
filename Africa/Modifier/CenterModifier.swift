//
//  CenterModifier.swift
//  Africa
//
//  Created by Семён Рытенков on 11.05.2021.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    
    // MARK: - BODY
    
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        } //: HSTACK
    } //: BODY
    
}
