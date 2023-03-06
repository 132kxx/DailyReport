//
//  AddView.swift
//  DailyReport
//
//  Created by kxx: on 2023/03/06.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    var hour: String
    
    var body: some View {
            VStack(spacing: 20) {
                Text(hour)
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("hello", text: $textFieldText)
                    .padding()
                    .background{Color(UIColor.secondarySystemBackground)}
                    .cornerRadius(10)
                
                Button {
                    
                } label: {
                    Text("Submit")
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 8)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.horizontal, 50)
                }


            }
            .padding(.horizontal, 30)
    }
    

}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
