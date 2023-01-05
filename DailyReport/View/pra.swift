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

        VStack {
            Text(Date().displayFormat)
        }
        
    }
}

struct pra_Previews: PreviewProvider {
    static var previews: some View {
        pra()
    }
}

extension Date {
    var displayFormat: String {
        self.formatted(
            .dateTime
            .year()
            .month(.wide)
            .day()
        )
    }
}
