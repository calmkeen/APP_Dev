//
//  SettingsView.swift
//  FruitCard
//
//  Created by calmkeen on 2023/05/02.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - Properties
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    //MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators:  false) {
                VStack(spacing: 20) {
                    //MARK: - section1
                    
                    GroupBox(
                        label:
                            settingsLabelView(labelText: "Fruits", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical,4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80,height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    //MARK: - section2
                    
                    GroupBox (
                    label: settingsLabelView(labelText: "Customizatino", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restartted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style:  .continuous)))
                    }
                    //MARK: - section3
                    GroupBox(
                        label: settingsLabelView(labelText: "application", labelImage: "apps.iphone")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        SettingsRowView(name: "developer",content: "jone/Jane")
                        SettingsRowView(name: "Designer",content: "Rober petras")
                        SettingsRowView(name: "Compatiblity",content: "IOS 14")
                        SettingsRowView(name: "Website",linkLabel: "@robert", linkDestination: "twitter.com")
                        
                        

                    }
                    
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                })
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
