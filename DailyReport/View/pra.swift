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
    @State var sampleText: String = "hello world"
    
    func getDaysSimple(for month: Date) -> [Date] {
        //get the current Calendar for our calculations
        let cal = Calendar.current
        //get the days in the month as a range, e.g. 1..<32 for March
        let monthRange = cal.range(of: .day, in: .month, for: month)!
        //get first day of the month
        let comps = cal.dateComponents([.year, .month], from: month)
        //start with the first day
        //building a date from just a year and a month gets us day 1
        var date = cal.date(from: comps)!

        //somewhere to store our output
        var dates: [Date] = []
        //loop thru the days of the month
        for _ in monthRange {
            //add to our output array...
            dates.append(date)
            //and increment the day
            date = cal.date(byAdding: .day, value: 1, to: date)!
        }
        return dates
    }
    
    var body: some View {
        let days = getDaysSimple(for: .now)
        VStack {
        ForEach(days, id: \.self) { dayy in
            Text("\(dayy)")
            }
        }
        
    }
}

struct pra_Previews: PreviewProvider {
    static var previews: some View {
        pra()
    }
}
