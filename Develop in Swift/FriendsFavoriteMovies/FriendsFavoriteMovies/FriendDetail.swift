//
//  FriendDetail.swift
//  FriendsFavoriteMovies
//
//  Created by hh on 06/03/2026.
//

import SwiftUI

struct FriendDetail: View {
    @Bindable var friend: Friend
    
    var body: some View {
        
        Form {
            TextField("Name", text: $friend.name)
                .autocorrectionDisabled()
        }
    }
}

#Preview {
    FriendDetail(friend: SamepleData.shared.friend)
}
