//
//  SettingsView.swift
//  Hike
//
//  Created by Camila Scholl on 31/12/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // MARK - SECTION: HEADER
            
            Section {
            
            HStack {
                
                Spacer()
            
            Image(systemName: "laurel.leading")
                .font(.system(size: 80, weight: .black))
                
                VStack(spacing: -10){
            
            Text("Escalada")
                .font(.system(size: 46, weight: .black))
                 
                    Text("Escolha dos Editores")
                        .fontWeight(.medium)
                    
                    
                }
            
            Image(systemName: "laurel.trailing")
                .font(.system(size: 80, weight: .black))
                
                Spacer()
            }
            
            .foregroundStyle(LinearGradient(colors: [.customGreenLight, .customGreenMedium, .customGreenDark], startPoint: .top, endPoint: .bottom
                                           )
            )
            .padding(.top, 8)
                
                VStack(spacing: 8){
            Text("Onde você pode encontrar \nótimas escaladas?")
                .font(.title2)
                .fontWeight(.heavy)
            
            
            
            Text("A escalada parece linda nas fotos mas é mais linda ainda quando você está lá. A escalada é algo que você espera fazer de novo algum dia. \nEncontre o melhor dia para se fazer uma escalada no app.")
                .font(.footnote)
                .italic()
                    
                    
                    
                    Text("Tire a poeira das botas! É hora de dar uma volta.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                    
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            } //: HEADER
            .listRowSeparator(.hidden)
            
            
            // MARK: SECTION: ICONS
            
            // MARK: SECTION: ABOUT
            
        } //: LIST
        }
    
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
