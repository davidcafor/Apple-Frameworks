//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by David Cardeña on 16/4/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
      
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
}
