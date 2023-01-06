///
///
///
///
///
///
///
///
///
import SwiftUI

struct pra: View {
    
    var body: some View {

        HStack(spacing: 0) {
            ForEach(Calendar.current.currentWeek){weekDay in
                VStack(spacing: 6) {
                    Text(weekDay.string.prefix(3))
                }
                .frame(maxWidth: .infinity, alignment: .center)
            }
        }
        .padding(.horizontal, -10)
    }
}

struct pra_Previews: PreviewProvider {
    static var previews: some View {
        pra()
    }
}

extension Date {
    func toString(_ format: String)-> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}

extension Calendar {
    var currentWeek: [WeekDay] {
        guard let firstWeekDay = self.dateInterval(of: .weekOfMonth, for: Date())?.start
            else { return [] }
        var week: [WeekDay] = []
        for index in 0 ..< 7 {
            if let day = self.date(byAdding: .day, value: index, to: firstWeekDay) {
                let weekDaySymbol: String = day.toString("EEEE")
                let isToday = self.isDateInToday(day)
                week.append(.init(string: weekDaySymbol, date: day))
            }
        }
        
        return week
    }
    
    struct WeekDay: Identifiable {
        var id: UUID = .init()
        var string: String
        var date: Date
        var isToday: Bool = false
    }
}
