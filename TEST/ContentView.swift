//
//  ContentView.swift
//  TEST
//
//  Created by asayel on 28/03/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var Includemilk: Bool = false
    @State private var Iced: Bool = true
    @State private var Sponeofsuger: Bool = false
    @State var stepperValue: Int = 0
    
    var body: some View {
        VStack {
            Text("coffee☕️")
                .font(.title)
                .multilineTextAlignment(.center)
            Toggle(isOn: $Includemilk){
                Text("Include milk🥛")
            }
            
            
            //test
            Toggle(isOn: $Iced){
                Text("Iced🧊")
            }
            Toggle(isOn: $Sponeofsuger){
                Text("Spone of suger")
            }
            Stepper("Quantity: \(stepperValue)" ,value: $stepperValue)
            Button("Order") {
                print("TR")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
