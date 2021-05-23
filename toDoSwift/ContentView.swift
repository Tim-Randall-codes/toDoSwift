//
//  ContentView.swift
//  toDoSwift
//
//  Created by Tim Randall on 23/5/21.
//

import SwiftUI

struct ContentView: View {
    @State var t1: String = ""
    @State var t1t: Bool = true
    @State var t2: String = ""
    @State var t2t: Bool = true
    @State var t3: String = ""
    @State var t3t: Bool = true
    @State var t4: String = ""
    @State var t4t: Bool = true
    @State var t5: String = ""
    @State var t5t: Bool = true
    @State var warning: String = ""
    @State var entry: String = ""
    @State var com1: String = ""
    @State var com2: String = ""
    @State var com3: String = ""
    @State var com4: String = ""
    @State var com5: String = ""
    var body: some View {
        VStack{
            Text("To Do: Enter five tasks🤠")
                .padding()
            Text(warning)
                .padding()
            TextField("Enter your task", text: $entry)
            HStack{
                Button("Clear tasks", action:{
                    t1 = ""
                    t2 = ""
                    t3 = ""
                    t4 = ""
                    t5 = ""
                    t1t = true
                    t2t = true
                    t3t = true
                    t4t = true
                    t5t = true
                    com1 = ""
                    com2 = ""
                    com3 = ""
                    com4 = ""
                    com5 = ""
                })
                Spacer()
                Button("Add task", action:{
                    if t1t {
                        t1 = entry
                        t1t = false
                    }
                    else if t2t {
                        t2 = entry
                        t2t = false
                    }
                    else if t3t {
                        t3 = entry
                        t3t = false
                    }
                    else if t4t {
                        t4 = entry
                        t4t = false
                    }
                    else if t5t {
                        t5 = entry
                        t5t = false
                    }
                    else {
                        warning = "Sorry lad, only five tasks"
                    }
                })
                }
            Spacer()
            HStack{
                Text(t1)
                    .padding()
                Spacer()
                Text(com1)
                Button("Complete", action:{
                    com1 = "☑️"
                })
                }
            HStack{
                Text(t2)
                    .padding()
                Spacer()
                Text(com2)
                Button("Complete", action:{
                    com2 = "☑️"
                })
            }
            HStack{
                Text(t3)
                    .padding()
                Spacer()
                Text(com3)
                Button("Complete", action:{
                    com3 = "☑️"
                    })
            }
            HStack{
                Text(t4)
                    .padding()
                Spacer()
                Text(com4)
                Button("Complete", action:{
                    com4 = "☑️"
                })
            }
            HStack{
                Text(t5)
                    .padding()
                Spacer()
                Text(com5)
                Button("Complete", action:{
                    com5 = "☑️"
                })
            }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
