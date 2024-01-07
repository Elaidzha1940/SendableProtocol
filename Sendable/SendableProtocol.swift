//  /*
//
//  Project: SendableProtocol
//  File: Sendable.swift
//  Created by: Elaidzha Shchukin
//  Date: 07.01.2024
//
//  */ 

import SwiftUI

class SendableP: ObservableObject {
    
}

struct SendableProtocol: View {
    @StateObject private var viewModel = SendableP()
    
    var body: some View {
        
        VStack {
          
        }
    }
}

#Preview {
    SendableProtocol()
}
