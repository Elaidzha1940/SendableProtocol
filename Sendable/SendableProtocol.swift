//  /*
//
//  Project: SendableProtocol
//  File: Sendable.swift
//  Created by: Elaidzha Shchukin
//  Date: 07.01.2024
//
//  */ 

import SwiftUI

actor CurrentUserManager {
    
    func updateDatbase(userInfo: MyUserInfo) {
        
    }
}

struct MyUserInfo {
    let name: String
}

class SendablePViewModel: ObservableObject {
    
    let manager = CurrentUserManager()
    
    func updtaeCurrentUserInfo() async {
        let info = MyUserInfo(name: "info")
        
        await manager.updateDatbase(userInfo: info)
    }
}

struct SendableProtocol: View {
    @StateObject private var viewModel = SendablePViewModel()
    
    var body: some View {
        
        VStack {
          Text("Hooo")
        }
        .task {
            
        }
    }
}

#Preview {
    SendableProtocol()
}
