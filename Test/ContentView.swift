//
//  ContentView.swift
//  Test
//
//  Created by Felipe on 6/5/22.
//

import SwiftUI

struct ContentView: View {
    @State var str: String? = "Hello WWDC"
    
    var body: some View {
        VStack(alignment: .center, spacing: 12) {
 
            Text(str ?? "hello is nil")
                .font(.largeTitle)
                .padding()
            
            Button("Swift Optional") {
                str = "Hello WWDC"
                printSwift(str)
            }
            Button("Swift Force Unwrap") {
                NSLog("Swift: \(str!)") //Remove all Force Unwraps
                str = "Hello WWDC!"
            }
            Button("Make Hello Nil") {
                NSLog("hello is now nil")
                str = nil
            }
            Button("ObjC pass") {
                printObjC(str)
            }
        }
    }
    
    func printSwift(_ str: String?) {
        guard let newStr = str else {
            NSLog("Swift: Defensive Coding works!")
            return
        }
        NSLog("Swift: \(newStr)")
    }
    
    func printObjC(_ str: String?) {
        TestString.test(str)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
