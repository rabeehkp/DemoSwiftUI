//
//  EditingView.swift
//  addToModelDemo
//
//  Created by Ashok on 24/09/19.
//  Copyright © 2019 rabeeh. All rights reserved.
//

import SwiftUI

struct EditingView: View {
    @Environment(\.presentationMode) var presentation
    @Binding var person:Person
    var body: some View {
        Form{
            Section(header: Text("Add how many you want")) {
                Image(uiImage: UIImage(named: person.image)!)
                    .resizable()
                    .frame(height:300,alignment:.bottomTrailing)
//                    .frame(width: 200, height: 100, alignment: .bottomTrailing)
//                    TextField("type something...",text:$person.name)
                    Stepper(value: $person.itemCount, in: 0...100) {
                    Text("Total Count: \(person.itemCount)")
                    }
                
            }
            
//            Section{
//                Button("save"){
//                    self.presentation.wrappedValue.dismiss()
//                }
//            }
        }.navigationBarTitle(person.name)
    }
}

//struct EditingView_Previews: PreviewProvider {
//    static var previews: some View {
//        EditingView()
//    }
//}
