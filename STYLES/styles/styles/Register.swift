//
//  Register.swift
//  styles
//
//  Created by StudentAM on 5/14/24.
//

import SwiftUI

struct Register: View {
    @State var inputUsername: String 
    @State var inputPassword: String
    @State var email: String
    @State var country: String
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 243/255, green: 237/255, blue: 225/255)
                    .ignoresSafeArea()
                VStack {
                    Text("Sign up for STYLES")
                        .font(.custom("AbrilFatface-Regular", size: 40))
                        .foregroundColor(Color(red: 183/255, green: 65/255, blue: 64/255))
                    Text("Enter username")
                        .frame(maxWidth: 360, alignment: .leading)
                        .padding()
                    TextField("", text: $inputUsername)
                        .frame(width: 360,height: 40)
                        .border(Color(red: 188/255, green: 137/255, blue: 136/255))
                        .background(Color(red: 188/255, green: 137/255, blue: 136/255))
                    Text("Enter password")
                        .frame(maxWidth: 360, alignment: .leading)
                        .padding()
                    SecureField("", text: $inputPassword)
                        .frame(width: 360,height: 40)
                        .border(Color(red: 239/255, green: 211/255, blue: 219/255))
                        .background(Color(red: 239/255, green: 211/255, blue: 219/255))
                    Text("Enter email")
                        .frame(maxWidth: 360, alignment: .leading)
                        .padding()
                    TextField(" ", text: $email)
                        .frame(width: 360,height: 40)
                        .border(Color(red: 183/255, green: 65/255, blue: 64/255))
                        .background(Color(red: 183/255, green: 65/255, blue: 64/255))
                    Text("Country you reside in:")
                        .frame(maxWidth: 360, alignment: .leading)
                        .padding()
                    
                    TextField(" ", text: $country)
                        .frame(width: 360,height: 40)
                        .border(Color(red: 215/255, green: 200/255, blue: 180/255))
                        .background(Color(red: 215/255, green: 200/255, blue: 180/255))
                    NavigationLink(destination: Login(username: "", password: "").navigationBarBackButtonHidden()) {
                        Image("bow2")
                            .frame(width: 200,height: 50)
                            .padding(75)
                    }
                    
                    
                }
            }
        }
    }
}

#Preview {
    Register(inputUsername: "", inputPassword: "", email: "", country: "")
}
