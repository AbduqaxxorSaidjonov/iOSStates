//
//  MainScreen.swift
//  iOSStates
//
//  Created by Abduqaxxor on 2/4/22.
//

import SwiftUI

struct MainScreen: View {
    
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("Email",text: $settings.email)
                    .frame(width: .infinity, height: 10)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.5).foregroundColor(.gray.opacity(0.8)))
                SecureField("Paswword",text: $settings.password)
                    .frame(width: .infinity, height: 10)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.5).foregroundColor(.gray.opacity(0.8)))
                NavigationLink(destination: SecondScreen(), label: {
                    Text("Show")
                        .frame(maxWidth: .infinity)
                        .frame(height: 10)
                        .padding()
                        .foregroundColor(.white)
                })
                    .background(.blue)
                    .cornerRadius(5)
            }
            .padding()
            .navigationBarTitle("Environment Object",displayMode: .inline)
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
