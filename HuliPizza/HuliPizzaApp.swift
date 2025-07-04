//
//  HuliPizzaApp.swift
//  HuliPizza
//
//  Created by Manyuchi, Carrington C on 2025/06/25.
//

import SwiftUI

@main
struct HuliPizzaApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(menu: MenuModel().menu)
        }
    }
}
