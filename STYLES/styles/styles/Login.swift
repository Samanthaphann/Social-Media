//
//  Login.swift
//  styles
//
//  Created by StudentAM on 5/10/24.
//

import SwiftUI

struct Login: View {
    @State var username: String
    @State var password: String
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 243/255, green: 237/255, blue: 225/255)
                    .ignoresSafeArea()
                VStack {
                    Text("Log in to STYLES")
                        .font(.custom("AbrilFatface-Regular", size: 40))
                        .foregroundColor(Color(red: 183/255, green: 65/255, blue: 64/255))
                    
                    Text("Enter username:")
                        .frame(maxWidth: 360, alignment: .leading)
                        .padding()
                    //text field for the username
                    TextField("Enter username", text: $username)
                        .frame(width: 360,height: 40)
                        .border(Color(red: 188/255, green: 137/255, blue: 136/255))
                        .background(Color(red: 188/255, green: 137/255, blue: 136/255))
                    
                    Text("Enter password:")
                        .frame(maxWidth: 360, alignment: .leading)
                        .padding()
                    //text field for password
                    TextField("Enter password", text: $password)
                        .frame(width: 360,height: 40)
                        .border(Color(red: 239/255, green: 211/255, blue: 219/255))
                        .background(Color(red: 239/255, green: 211/255, blue: 219/255))
                    
                    HStack{
                        Text("Not on STYLES yet?")
                            .frame(alignment: .leading)
                        NavigationLink {
                            //a link to register if they don't have a account
                            Register(inputUsername: "", inputPassword: "", email: "", country: "").navigationBarBackButtonHidden()
                        } label: {
                            Text("Sign up here!")
                                .foregroundColor(Color(red: 183/255, green: 65/255, blue: 64/255))
                        }
                    }
                    .frame(maxWidth: 360,alignment: .leading)
                    Spacer()
                    VStack{
                        //a button that is shaped like a bow
                        //Navigates to home page
                        NavigationLink(destination: Home().navigationBarBackButtonHidden()) {
                            Image("bow3")
                                .frame(width: 200,height: 200)
                        }
                    }
                    
                }
            }
        }
    }
}

#Preview {
    Login(username: "", password: "")
}
