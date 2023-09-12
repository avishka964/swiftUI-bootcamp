//
//  DatePickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-09-12.
//

import SwiftUI

struct DatePickerBootcamp: View {
    @State var selectDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("SELECTED DATE")
            Text(dateFormatter.string(from: selectDate)).font(.title)
            //        DatePicker("Select a Date", selection: $selectDate)
            DatePicker("Select a date", selection: $selectDate, displayedComponents: [.hourAndMinute])
                .accentColor(Color.red).datePickerStyle(
                    CompactDatePickerStyle()
                    //            GraphicalDatePickerStyle()
                    //            WheelDatePickerStyle()
                )
        }
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
