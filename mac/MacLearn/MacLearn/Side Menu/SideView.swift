//
//  SeideView.swift
//  MacLearn
//
//  Created by Apple on 28/12/24.
//

import SwiftUI

struct SideView: View {
    var body: some View {
        VStack(alignment:.leading) {
            Text("All item count 10" )
            List(1...5,id: \.self) { index in
                Text("List  \(index)")
            }
            Spacer()
            Button("Add List") {
                
            }
        }
    }
}

#Preview {
    SideView()
}
