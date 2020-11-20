//
//  RegisterView.swift
//  SocialMediaApp
//
//  Created by MD Tanvir Alam on 20/11/20.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var registerVM = RegisterViewModel()
    var body: some View {
        VStack(){
            HStack(){
                Text("Register")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                Spacer(minLength: 0)
            }.padding()
            .padding(.top, 30)
            
            Image(systemName: "person")
                .font(.system(size:85))
                .foregroundColor(.black)
                .frame(width: 115, height: 115)
                .background(Color.white)
                .clipShape(Circle())
                .padding(.top)
                .onTapGesture {
                    registerVM.picker.toggle()
                }
            
            HStack(spacing: 15){
                TextField("Name", text: $registerVM.name)
                    .padding()
                    .keyboardType(.numberPad)
                    .background(Color.white.opacity(0.06))
                    .cornerRadius(15)
            }
            .padding()
            
            HStack(spacing: 15){
                TextField("bio", text: $registerVM.bio)
                    .padding()
                    .keyboardType(.numberPad)
                    .background(Color.white.opacity(0.06))
                    .cornerRadius(15)
            }
            .padding()
            .padding(.top,15)
            
            Button(action: {registerVM.register()}, label: {
                Text("Register")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width:UIScreen.main.bounds.width - 100)
                    .background(Color.blue)
                    .clipShape(Capsule())
            })
            .disabled(registerVM.image_Data.count == 0 || registerVM.name == "" || registerVM.bio == "" ? true : false)
            .opacity(registerVM.image_Data.count == 0 || registerVM.name == "" || registerVM.bio == "" ? 0.3 : 1)
            Spacer(minLength: 0)
        }.background(Color(#colorLiteral(red: 0.1556647718, green: 0.2962875068, blue: 0.3227478862, alpha: 1))).ignoresSafeArea(.all,edges: .all)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
