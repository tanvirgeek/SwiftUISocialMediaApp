//
//  LoginView.swift
//  SocialMediaApp
//
//  Created by MD Tanvir Alam on 13/11/20.
//

import SwiftUI

struct LoginView: View {
    @StateObject var loginVM = LoginViewModel()
    var body: some View {
        VStack(){
            HStack(){
                Text("Login")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                Spacer(minLength: 0)
            }.padding()
            .padding(.top, 30)
            
            HStack(spacing: 15){
                TextField("1", text: $loginVM.code)
                    .padding()
                    .keyboardType(.numberPad)
                    .frame(width:45)
                    .background(Color.white.opacity(0.06))
                    .cornerRadius(15)
                TextField("123456", text: $loginVM.number)
                    .padding()
                    .keyboardType(.numberPad)
                    .background(Color.white.opacity(0.06))
                    .cornerRadius(15)
            }
            .padding()
            .padding(.top,15)
            
            Button(action: {loginVM.verifyUser()}, label: {
                Text("Verify")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width:UIScreen.main.bounds.width - 100)
                    .background(Color.blue)
                    .clipShape(Capsule())
            })
            .disabled(loginVM.number == "" || loginVM.code == "" ? true : false)
            .opacity(loginVM.number == "" || loginVM.code == "" ? 0.3 : 1)
            Spacer(minLength: 0)
        }.background(Color(#colorLiteral(red: 0.1556647718, green: 0.2962875068, blue: 0.3227478862, alpha: 1))).ignoresSafeArea(.all,edges: .all)
        .alert(isPresented: $loginVM.error) {
            Alert(title: Text("Error"), message: Text(loginVM.errorMessage), dismissButton: .destructive(Text("OK")))
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
