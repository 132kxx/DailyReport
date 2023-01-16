//
//  DatePickerView.swift
//  DailyReport
//
//  Created by kxx: on 2022/12/26.
//

import SwiftUI

struct DatePickerView: View {
    
    
    let now = Date()
    let calendar = Calendar.current
    let monthInt = Calendar.current.component(.month, from: Date())
    let yearInt = String(Calendar.current.component(.year, from: Date()))
    var monthStr : String {
        get  {
            return Calendar.current.monthSymbols[monthInt-1]
        }
    }
    
    var range : Range<Int> {
        get {
            return calendar.range(of: .day, in: .month, for: Date())! //
        }
    }
    
    var body: some View {
        VStack {
            // month, year stack
            HStack() {
                Text(Date().toString("MMMM"))
                        .font(.system(size: 40))
                        .padding(.leading, 20)
                        .fontWeight(.bold)
                
                    Text(Date().toString("YYYY"))
                    .foregroundColor(.secondary)
                

                Spacer()
            }
            
            ScrollViewReader {proxy in
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 30) {
                                ForEach(range, id: \.self) {index in
                                    Button {
                                        withAnimation {
                                            let today = index
                                            proxy.scrollTo(today, anchor: .center)
                                        }
                                    } label: {
                                        Text("\(index)")
                                            .id(monthInt+index)
                                            .foregroundColor(.black)
                                    }
                                }
                    }
                    .frame(height: 50)
                    .padding(.horizontal, 20)
                }.onAppear{
                    let today = calendar.component(.day, from: Date())
                    proxy.scrollTo(monthInt+today, anchor: .center)
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

extension Date {
    func toString(_ format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}
