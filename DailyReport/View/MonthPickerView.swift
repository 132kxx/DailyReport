//
//  MonthPicker.swift
//  DailyReport
//
//  Created by kxx: on 2022/12/26.
//

import SwiftUI

struct MonthPickerView: View {
    var body: some View {
        HStack {
            Button {
                //
            } label: {
                Text("December")
                    .font(.system(size: 40))
                    .padding(.leading, 20)
                    .foregroundColor(.black)
                    .fontWeight(.bold)
            }

            Spacer()
        }
    }
}

struct MonthPickerView_Previews: PreviewProvider {
    static var previews: some View {
        MonthPickerView()
    }
}
