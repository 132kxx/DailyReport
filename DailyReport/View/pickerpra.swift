//
//  pickerpra.swift
//  DailyReport
//
//  Created by kxx: on 2022/12/27.
//

import SwiftUI

struct pickerpra: View {
    
    @State var pickeddate = ""
    var body: some View {
        Picker("date", selection: $pickeddate) {
            ScrollView(.horizontal, showsIndicators: false) {
                    ForEach(0 ..< 30) { index in
                        Text("\(index)")
                }
            }
        }
        .pickerStyle(WheelPickerStyle())
        .labelsHidden()
        .frame(maxHeight: 100)
        .clipped()
    }
}

struct pickerpra_Previews: PreviewProvider {
    static var previews: some View {
        pickerpra()
    }
}
