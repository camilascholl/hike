//
//  CardView.swift
//  Hike
//
//  Created by Camila Scholl on 31/12/23.
//

import SwiftUI

struct CardView: View {
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    
    //FUNCOES
    
    func randomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
            
        } while randomNumber == imageNumber
        
        imageNumber = randomNumber
    }
    
    var body: some View {
        // MARK: - CARD
        ZStack {
            CustomBackgroundView()
                .ignoresSafeArea()

            VStack {
                // MARK: - HEADER
                VStack(alignment: .leading) {
                    HStack {
                        Text("Escalada")
                            .fontWeight(.black)
                            .font(.system(size: 40))
                            .foregroundStyle(
                                LinearGradient(colors:
                                                    [.customGrayLight,
                                                     .customGreenMedium],
                                               startPoint: .top,
                                               endPoint: .bottom)
                            )

                        Spacer()

                        Button {
                            // ACTION: Show a Sheet
                            print("O botao foi clicado.")
                            isShowingSheet.toggle()
                        } label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet) {
                            SettingsView()
                        }
                    
                    }
                
                    Text("Aproveite atividade na natureza se divertindo com familia e amigos.")
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.customGrayMedium)
                } //: HEADER
                
                .padding(.horizontal, 30)
                
                
                // MARK: - MAIN
                ZStack {
                   CustomCircleView()

                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }

                // MARK: - FOOTER
                Button(action: {
                    print("O botao foi apertado")
                    randomImage()
                }) {
                    Text("Explore o mundo!")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors:
                                                [.customGreenLight,
                                                 .customGreenDark],
                                           startPoint: .top,
                                           endPoint: .bottom)
                        )
                }
                .shadow(color: .black.opacity(0.25),
                        radius: 0.25,
                        x: 1,
                        y: 2)
                .buttonStyle(GradientButton())
                .padding(.bottom, 20)
            }
        }
        .frame(width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
