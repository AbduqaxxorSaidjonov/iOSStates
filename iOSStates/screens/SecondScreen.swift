//
//  SecondScreen.swift
//  iOSStates
//
//  Created by Abduqaxxor on 2/4/22.
//

import SwiftUI

struct SecondScreen: View {
    
    //@State var count = 0
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        VStack{
            Text("Email: \(settings.email)")
                .padding()
            Text("Password: \(settings.password)")
        }
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen()
    }
}
