//
//  LoginViewModel.swift
//  SocialMediaApp
//
//  Created by MD Tanvir Alam on 13/11/20.
//

import Foundation

class LoginViewModel:ObservableObject{
    @Published var code = ""
    @Published var number = ""
    @Published var errorMessage = ""
    @Published var error = false
    
    func verifyUser(){
        
    }
}
