//
//  FriendList.swift
//  TableView
//
//  Created by Raja Rahul on 28/05/20.
//  Copyright © 2020 None. All rights reserved.
//

import SwiftUI

struct FriendList: View {
    
    var friendsList : [Friend];
    
    var body: some View {
            NavigationView{
                List(friendsList){
                    friend in RowView(friend: friend)
                }.navigationBarTitle(Text("Friends"))
            }
    }
}

struct RowView:View {
    var friend: Friend
    var body: some View {
        HStack{
            Text(friend.name)
            Spacer()
            Image("img-1")
            .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 40)
        }
        
    }
}

var friends = [
    Friend(id: 1, name: "Joseph"),
    Friend(id: 2, name: "John"),
    Friend(id: 3, name: "Jack"),
    Friend(id: 4, name: "Jake"),
    Friend(id: 5, name: "Justin")
]

struct FriendList_Previews: PreviewProvider {
    static var previews: some View {
        FriendList(friendsList: friends)
    }
}
