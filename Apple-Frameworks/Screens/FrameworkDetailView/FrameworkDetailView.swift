//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by David Cardeña on 16/4/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button(action: {
                isShowingSafariView = true
            }, label: {
                //AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            })
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .tint(.red)
            
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
