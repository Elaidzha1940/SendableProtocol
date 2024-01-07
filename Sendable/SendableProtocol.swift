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
    
    func updateDatbase(userInfo: MyClassUserInfo) {
        
    }
}

struct MyUserInfo: Sendable {
    var name: String
}

// Not recomanded to do this:
final class MyClassUserInfo: @unchecked Sendable {
    private var name: String
    let queue = DispatchQueue(label: "com.MyApp.MyClassUserInfo")
    
    init(name: String) {
        self.name = name
    }
    
    func updateName(ame: String) {
        queue.async {
            self.name = self.name
        }
    } 
}

class SendablePViewModel: ObservableObject {
    
    let manager = CurrentUserManager()
    
    func updtaeCurrentUserInfo() async {
        let info = MyClassUserInfo(name: "info")
        
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
