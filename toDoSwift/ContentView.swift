//
//  ContentView.swift
//  toDoSwift
//
//  Created by Tim Randall on 23/5/21.
//

import SwiftUI

struct ContentView: View {
    @State var t1: String = ""
    @State var t2: String = ""
    @State var t3: String = ""
    @State var t4: String = ""
    @State var t5: String = ""
    @State var t6: String = ""
    @State var entry: String = ""
    var body: some View {
        VStack{
            Text("To Do: Enter six tasks")
                .padding()
            Spacer()
            HStack{
                Text(t1)
                    .padding()
                Spacer()
                Button("Complete", action:{
                    print("hello")
                })
                }
            HStack{
                Text(t2)
                    .padding()
                Spacer()
                Button("Complete", action:{
                    print("hello2")
                })
            }
            HStack{
                Text(t3)
                    .padding()
                Spacer()
                Button("Complete", action:{
                    print("hello3")
                    })
            }
            HStack{
                Text(t4)
                    .padding()
                Spacer()
                Button("Complete", action:{
                    print("hello4")
                })
            }
            HStack{
                Text(t5)
                    .padding()
                Spacer()
                Button("Complete", action:{
                    print("hello5")
                })
            }
            HStack{
                Text(t6)
                    .padding()
                Spacer()
                Button("Complete", action:{
                    print("hello6")
                })
            }
            TextField("Enter your task", text: $entry)
            HStack{
                Button("Clear tasks", action:{
                    print("Clear tasks")
                })
                Spacer()
                Button("Add task", action:{
                    print("add task")
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
