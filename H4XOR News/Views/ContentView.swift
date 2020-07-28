//
//  ContentView.swift
//  H4XOR News
//
//  Created by Himanshu Gupta on 21/06/20.
//  Copyright © 2020 mine. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    //listener (someone who has paid for the subscripton)
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(destination: Details(url: post.url)) {
            //provides the clickabla arrow to take us to the next view.
                    HStack {
                        Text("\(post.points)")
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("H4XOR NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//let posts = [ Post(id: "1", title: "hello"),
//              Post(id: "2", title: "Bonjour"),
//              Post(id: "3", title: "Hola")
//]
