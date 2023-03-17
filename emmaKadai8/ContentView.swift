//
//  ContentView.swift
//  emmaKadai8
//
//  Created by Emma
//

import SwiftUI
//画面の要素
struct TabItems {
    let tabLabel: String
    let headerColor: String
    let bodyColor: String
    let tabIcon: String
}

struct ContentView: View {
    //スライダーの値
    @State var sliderValue: Float = 0
    //画面1の要素
    let tab1Item = TabItems(tabLabel: "画面1",
                            headerColor: "Tab1HeaderColor",
                            bodyColor: "Tab1BodyColor",
                            tabIcon: "sun.min.fill")
    //画面2の要素
    let tab2Item = TabItems(tabLabel: "画面2",
                            headerColor: "Tab2HeaderColor",
                            bodyColor: "Tab2BodyColor",
                            tabIcon: "moon.stars.fill")


    var body: some View {
        TabView {
            //画面1
            SliderView(sliderValue: $sliderValue,
                       tabLabel: tab1Item.tabLabel,
                       tabHeaderColor: Color(tab1Item.headerColor),
                       tabBodyColor: Color(tab1Item.bodyColor)
            )
            .tabItem{
                Image(systemName: tab1Item.tabIcon)
                Text(tab1Item.tabLabel)
            }
            //画面2
            SliderView(sliderValue: $sliderValue,
                       tabLabel: tab2Item.tabLabel,
                       tabHeaderColor: Color(tab2Item.headerColor),
                       tabBodyColor: Color(tab2Item.bodyColor)
                       )
            .tabItem{
                Image(systemName: tab2Item.tabIcon)
                Text(tab1Item.tabLabel)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
