//
//  ContentView.swift
//  SwiftUIBuesinessCard
//
//  Created by Kokichi Takahashi on 2022/09/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.45, green: 0.73, blue: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("roger")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Roger Federer")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("Thank you Roger.")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "He holds most Grand Slam singles Championships", imageName: "crown.fill")
                InfoView(text: "Has won a record 33 ATP World Tour Awards including ATP No. 1", imageName: "crown.fill")
                InfoView(text: "Has spent record of 302 weeks at No. 1", imageName: "crown.fill")
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


