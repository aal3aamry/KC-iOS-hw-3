//
//  ContentView.swift
//  hw3
//
//  Created by عبدالرحمن العامري on 26/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    
    struct Expenses {
        var store: String
        var paid: Double
        var profileImage: String
        var purchase: String
    }
    
    @State var expensesArray = [Expenses(store: "gait", paid: 500.4, profileImage: "gait", purchase: "45")]
                         
    
    var body: some View {
        ZStack{
            VStack{
                Text("مصروفاتي")
                
                List(expensesArray, id:\.self) { i in
                        
                    HStack{
                        
                        Image(i)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        
                        Text(i)
                    }
                    .background(Color.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
