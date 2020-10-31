//
//  ContentView.swift
//  HackNews SwiftUI
//
//  Created by Анастасия Улитина on 31.10.2020.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }                }
                
            }
            .navigationBarTitle("HackNews")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Konichiva"),
//    Post(id: "3", title: "Privet")
//
//]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}
