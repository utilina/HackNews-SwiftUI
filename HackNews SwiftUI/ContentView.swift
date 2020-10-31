//
//  ContentView.swift
//  HackNews SwiftUI
//
//  Created by Анастасия Улитина on 31.10.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("HackNews")
        }
    }
}

struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Konichiva"),
    Post(id: "3", title: "Privet")
    
]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}
