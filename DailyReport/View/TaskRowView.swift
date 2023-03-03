//
//  TaskRowView.swift
//  DailyReport
//
//  Created by kxx: on 2023/03/03.
//

import SwiftUI

struct TaskRowView: View {
    
    //for size
    let screenWidth = UIScreen.main.bounds.width
    let screenHidth = UIScreen.main.bounds.height
    
    @EnvironmentObject var viewModel: ViewModel
    
    @Binding var showSheet: Bool
    var hour: String
    var content: String
    
    var body: some View {
        HStack {
            //time line
            Text(hour)
                .frame(width: screenWidth / 7, height: screenWidth / 8)
            
            //content line
            Button {
                showSheet.toggle()
            } label: {
                Text(content.isEmpty ? "내용을 입력해주세요" : content)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.black)
                    
            }
        }
    }
    
struct TableRowView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(ViewModel())
    }
}

}
