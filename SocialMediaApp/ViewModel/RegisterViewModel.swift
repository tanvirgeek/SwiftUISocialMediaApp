//
//  RegisterViewModel.swift
//  SocialMediaApp
//
//  Created by MD Tanvir Alam on 20/11/20.
//

import Foundation
import SwiftUI
import Firebase

class RegisterViewModel:ObservableObject{
    @Published var name = ""
    @Published var bio = ""
    @Published var image_Data = Data(count: 0)
    @Published var picker = false
    
    func register(){
        
    }
}
