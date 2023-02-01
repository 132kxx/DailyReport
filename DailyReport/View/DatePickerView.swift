//
//  DatePickerView.swift
//  DailyReport
//
//  Created by kxx: on 2022/12/26.
//

import SwiftUI

struct DatePickerView: View {
    
    let screenWidth = UIScreen.main.bounds.width
    let calendar = Calendar.current
    
//    var prerange : Range<Int> {
//        get {
//            return calendar.range(of: .day, in: .month, for: Date(timeIntervalSinceNow: -10.00)! //
//        }
//    }
    
    var range : Range<Int> {
        get {
            return calendar.range(of: .day, in: .month, for: Date())! //
        }
    }
    
    var body: some View {
        VStack {
            
            // month, year indicator
            HStack() {
                Text(Date().toString("MMMM"))
                        .font(.system(size: 40))
                        .padding(.leading, 20)
                        .fontWeight(.bold)
                
                    Text(Date().toString("YYYY"))
                    .foregroundColor(.secondary)


                Spacer()
            }
            
            //wheel picker
            ScrollViewReader {proxy in
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 30) {
                        Rectangle()
                            .frame(width: (screenWidth / 2) - 35, height: 0)
                
                        ForEach(range, id: \.self) {index in
                            Button {
                                withAnimation {
                                    proxy.scrollTo(index, anchor: .center)
                                }
                            } label: {
                                Text("\(index)")
//                                    .id(monthInt+index)
                                    .foregroundColor(.black)
                                    
                            }
                        }
                        
                        Rectangle()
                            .frame(width: (screenWidth / 2) - 38, height: 0)
                        
                    }
                    .frame(height: 40)
                }
                .onAppear {
                    let today = calendar.component(.day, from: Date())
                    proxy.scrollTo(today, anchor: .center)
                    }
            }
            
            // today indicator
            HStack(spacing: 0) {
                Circle()
                    .frame(width: 5, height: 5)
                    .foregroundColor(.red)
                }
            
        }
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Date {
    func toString(_ format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}
