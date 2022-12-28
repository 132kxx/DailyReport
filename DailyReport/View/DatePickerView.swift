//
//  DatePickerView.swift
//  DailyReport
//
//  Created by kxx: on 2022/12/26.
//

import SwiftUI

struct DatePickerView: View {

    @State var selectedIndex: Int = 0
    var drag: some Gesture {
        DragGesture()
            .onChanged { value in
                selectedIndex += 1
            }
    }
    
    var body: some View {
        VStack {
            ScrollViewReader {proxy in
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 30) {
                            ForEach(1 ..< 32) {index in
                                Text("\(index)")
                                    .id(index)
                            }
                    }
                    .frame(height: 50)
                    
                }



            }
            Circle()
                .frame(width: 5, height: 5)
                .foregroundColor(.red)

            }
        }
    }

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
