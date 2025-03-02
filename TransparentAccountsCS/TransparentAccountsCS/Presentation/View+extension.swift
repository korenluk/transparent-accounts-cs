//
//  View+extension.swift
//  TransparentAccountsCS
//
//  Created by Lukas Korinek on 02.03.2025.
//

import SwiftUI

extension View {
    
    func asViewController() -> UIHostingController<some View> {        
        return UIHostingController(rootView: self)
    }
}
