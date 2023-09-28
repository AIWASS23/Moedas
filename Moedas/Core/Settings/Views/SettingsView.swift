//
//  SettingsView.swift
//  Moedas
//
//  Created by Marcelo de Araújo on 02/07/2023.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    let defaultURL = URL(string: "https://www.google.com/")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    let figmaURL = URL(string: "https://www.figma.com/@marcelodearaujo")!
    let linkedInURL = URL(string: "https://www.linkedin.com/in/marcelodearaujo47")!
    let gitURL = URL(string: "https://github.com/AIWASS23")!
    
    var body: some View {
        NavigationView {
            ZStack {
                // background
                Color.theme.background.ignoresSafeArea()
                
                // content
                List {
                    marcelosection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    coinGeckoSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    developerSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    applicationSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                }
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(.grouped)
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton(dismiss: _dismiss)
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}

extension SettingsView {
    private var marcelosection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Text("It uses MVVM Architecture, Combine, and CoreData!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(.theme.accent)
            }
            .padding(.vertical)
            
            Link("Visit GitHub", destination: gitURL)
        } header: {
            Text("Moedas")
        }
    }
    
    private var coinGeckoSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Text("The cryptocurrency data that is used in this app comes from a free API from CoinGecko! Prices may be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(.theme.accent)
            }
            .padding(.vertical)
            
            Link("Visit CoinGecko", destination: coingeckoURL)
        } header: {
            Text("Coin Gecko")
        }
    }
    
    private var developerSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Text("This app was developed by Marcelo de Araújo. It uses SwiftUI and is written 100% in Swift. The project benefits from multi-threading, publishers/subscribers, and data persistence.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(.theme.accent)
            }
            .padding(.vertical)
            
            Link("Figma", destination: figmaURL)
            Link("LinkedIn", destination: linkedInURL)
            Link("GitHub", destination: gitURL)
        } header: {
            Text("Developer")
        }
    }
    
    private var applicationSection: some View {
        Section {
            Link("Terms of Service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Company Website", destination: defaultURL)
            Link("Learn Mover", destination: defaultURL)
        } header: {
            Text("Application")
        }
    }
}
