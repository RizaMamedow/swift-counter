//
//  MainView.swift
//  SwiftCounter
//
//  Created by Riza Mamedov on 26.01.2024.
//

import SwiftUI

let navAppearance = UINavigationBarAppearance()


struct MainView: View {
    @State var count: Int = 0;

    var body: some View {
        NavigationView {
            VStack {
                Button{
                    count += 1
                } label: {
                    Text("\(count)")
                        .font(.counterTitle)
                        .frame(width: 200, height: 200)
                }
                .buttonStyle(.circleButton)
            }
            .navigationTitle("Swift Counter!")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button{
                        count = 0
                    } label: {
                        Image(systemName: "arrow.counterclockwise")
                            .foregroundColor(.black)
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .previewDevice("iPhone 11")
    }
}
