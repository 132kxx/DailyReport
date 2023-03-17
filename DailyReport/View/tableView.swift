//
//  TableView.swift
//  DailyReport
//
//  Created by kxx: on 2022/12/26.
//

import SwiftUI

struct TableView: View {
    let screenWidth = UIScreen.main.bounds.width
    let screenHidth = UIScreen.main.bounds.height

    @StateObject var viewmodel = ViewModel()
    
    // for sheet
    @State var showSheet: Bool = false
    
    //for textfield
    @State var presentText: String = ""

    var body: some View {
        NavigationStack {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 60) {
                        ForEach(0..<3) { _ in
                            cardView
                        }
                    }
                    .padding(.horizontal, 48)
                }
            }
            .padding(.vertical, 50)
        }
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(ViewModel())
    }
}


extension TableView {
    // MARK: COMPONENT
    var addItemBtn: some View {
        VStack {
            Button {
                    showSheet.toggle()
            } label: {
                Text("Add Item".uppercased())
                    .bold()
                    .foregroundColor(.black)
                    .padding(8)
                    .background {
                        Capsule()
                            .stroke()
                            .foregroundColor(.black)
                    }
            }
        }
    }
    
    var cardView: some View {
        RoundedRectangle(cornerRadius: 30).stroke()
            .frame(width: 300, height: 450)
            .cornerRadius(10)
        
        .overlay {
            VStack {
                addItemBtn
            }
        }
    }
    
    // MARK: FUNCTION
    
}

