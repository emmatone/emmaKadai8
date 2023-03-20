//
//  SliderView.swift
//  emmaKadai8
//
//  Created by Emma
//

import SwiftUI

struct SliderView: View {
    //スライダーの値
    @Binding var sliderValue: Float
    //Tab画面ごとの値
    let tabLabel: String
    let tabHeaderColor: Color
    let tabBodyColor: Color

    var body: some View {
        NavigationStack{
            ZStack{
                //背景色
                Group{
                    tabHeaderColor
                        .ignoresSafeArea(edges: [.top, .horizontal])
                    tabBodyColor
                        .ignoresSafeArea(edges: [.horizontal, .bottom])
                }

                //tab view
                VStack(spacing: 30){
                    //Tab名
                    Text(tabLabel)
                        .font(.title)
                        .padding(.top, 50)
                    //スライダーの値
                    Text("\(sliderValue)")
                        .font(.title)
                        .padding(.top, 20)
                    //スライダー
                    Slider(
                        value: $sliderValue,
                        in: 0.0...1.0,
                        step: 0.000001,
                        label: {}
                    )
                    .tint(tabHeaderColor)
                    .padding(15)
                    .background(
                        Capsule()
                            .fill(tabHeaderColor)
                            .opacity(0.3)
                    )
                    .padding(20)
                    Spacer()
                    Divider()
                        .background(.ultraThinMaterial)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .principal){
                    VStack(alignment: .leading){
                        Text("課題8")
                            .font(.headline)
                        Text("2つの画面のスライダーが連動するアプリ")
                            .font(.subheadline)
                    }
                    .padding(.bottom)
                }
            }
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(
            sliderValue: Binding.constant(0),
            tabLabel: "画面1",
            tabHeaderColor: Color("Tab1HeaderColor"),
            tabBodyColor: Color("Tab1BodyColor")
        )
    }
}
