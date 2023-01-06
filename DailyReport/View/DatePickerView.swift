//
//  DatePickerView.swift
//  DailyReport
//
//  Created by kxx: on 2022/12/26.
//

import SwiftUI

struct DatePickerView: View {
    var years: [String] = ["2023"]
    var months: [String] = ["January", "Febuary", "March", "April", "May", "June", "July", "August", "September",
    "October", "November", "December"]
    
    @State var presentYear: String = "2013"
    @State var presentMonth: String = "January"
    @State var presentDate: String = "2013January22"
    
   
    
    var body: some View {
        VStack {
            HStack() {
                    Text(presentMonth)
                        .font(.system(size: 40))
                        .padding(.leading, 20)
                        .fontWeight(.bold)
                
                    Text(presentYear)
                    .foregroundColor(.secondary)
                

                Spacer()
            }
            
            ScrollViewReader {proxy in
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 30) {
                        ForEach(years, id: \.self) { year in
                            ForEach(months, id: \.self){month in
                                ForEach(1 ..< 31) {index in
                                    let presentDate = year+month+String("\(index)")
                                    Button {
                                        withAnimation {
                                            proxy.scrollTo(presentDate, anchor: .center)
                                            presentYear = year
                                            presentMonth = month
                                        }
                                    } label: {
                                        Text("\(index)")
                                            .id(presentDate)
                                            .foregroundColor(.black)
                                    }

                                }
                            }
                        }
                    }
                    .frame(height: 50)
                    .padding(.horizontal, 20)
                }.onAppear{
                    proxy.scrollTo(presentDate, anchor: .center)
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

