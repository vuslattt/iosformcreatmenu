//
//  ContentView.swift
//  createmenu
//
//  Created by vuslat coşkun on 6.04.2023.
//

import SwiftUI

final class IdentificableGenericForm: Identifiable , ObservableObject{
    @Published var id = UUID()
    @Published  var name : String
    @Published  var price: String
    @Published  var currencyunit: String
    @Published var description : String
    @Published var genericForms : [IdentificableGenericForm]

    
    init(id: UUID = UUID(), name: String, price: String, currencyunit: String, description: String) {
        self.id = id
        self.name = name
        self.price = price
        self.currencyunit = currencyunit
        self.description = description
        self.genericForms = [IdentificableGenericForm(name: "", price: "", currencyunit: "", description: "")]
    }
    
}
struct ContentView: View {
    
    @State private var name: String = ""
    @State private var price: String = ""
    @State private var currencyunit: String = ""
    @State private var description: String = ""
    
    init(name: String, price: String, currencyunit: String, description: String) {
        self.name = name
        self.price = price
        self.currencyunit = currencyunit
        self.description = description
    }
    
    var body: some View {
    
            VStack {
                Text("Menü Oluştur")
                    .font(.title)
                TextField(
                    "Menü Adı",
                    text: $name
                )
                .disableAutocorrection(true)
                TextField(
                    "Fiyatı",
                    text: $price
                )
                .disableAutocorrection(true)
                TextField(
                    "Para Birimi",
                    text: $currencyunit
                )
                .disableAutocorrection(true)
                TextField(
                    "Açıklama",
                    text: $description
                )
                Spacer()
                    .disableAutocorrection(true)
            }
            .textFieldStyle(.roundedBorder)
            
       
            
            
            HStack(spacing: 20) {
                Button(action: {
                }) {
                    Text("Kaydet")
                }
                .buttonStyle(MyActionButtonStyle())
                
                Button(action: {
                }) {
                    Text("Yeni Ekle")
                }
                .buttonStyle(MyActionButtonStyle())
            }
            
            .padding(.horizontal, 20)
        }
    
    
}
    
    struct MyActionButtonStyle: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .font(.headline.bold())
                .foregroundColor(.white)
                .frame(height: 38)
                .frame(maxWidth: .infinity)
                .background(Color.green)
                .cornerRadius(9)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(name: "", price: "", currencyunit: "", description: "")
        }
    }

