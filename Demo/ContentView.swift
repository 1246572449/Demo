//
//  ContentView.swift
//  Demo
//
//  Created by MSEDU_iOS on 2023/2/7.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        NavigationView {
            VStack {
                Image ("logo")
                    .resizable()
                    .scaledToFit ()
                    .frame(width: 200, height: 200)
                    .padding()
                TextField("Email", text: $email)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius (8.0)
                    .padding()
                SecureField("Password", text: $password)
                    .padding()
                    .background (Color.gray.opacity(0.2))
                    .cornerRadius(8.0)
                    .padding()
                
                Button(action: {
                    // Login button action
                }) {
                    Text ("Login")
                        .font (.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame (minWidth: 0, maxWidth: .infinity)
                        .background (Color.blue)
                        .cornerRadius (8.0)
                        .padding (.horizontal)
                        .padding(.top, 50)
                }
                Spacer()
            }
            .navigationBarTitle("Login")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
