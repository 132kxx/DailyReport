//
//  AddView.swift
//  DailyReport
//
//  Created by kxx: on 2023/03/06.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State var textFieldText: String = ""
    
    var body: some View {
            VStack(spacing: 20) {
                
                // dismiss btn
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(.black)
                        .padding()
                        .background() {
                            Circle()
                                .stroke()
                                .foregroundColor(.black)
                        }
                }
                
                Spacer()

                Text("9")
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("hello", text: $textFieldText)
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke()
                    }
                   
                
                Button {
                    
                } label: {
                    Text("Submit".uppercased())
                        .bold()
                        .foregroundColor(.black)
                        .padding(8)
                        .background {
                            Capsule()
                                .stroke()
                                .foregroundColor(.black)
                                
                        }
                }

                Spacer()

            }
            .padding(.horizontal, 30)
    }
    

}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
