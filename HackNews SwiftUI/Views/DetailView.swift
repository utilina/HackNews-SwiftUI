//
//  DetailView.swift
//  HackNews SwiftUI
//
//  Created by Анастасия Улитина on 31.10.2020.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com").previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}


