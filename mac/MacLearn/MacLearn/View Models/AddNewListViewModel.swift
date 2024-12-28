
import Foundation
import CoreData
import SwiftUI
class AddNewListViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var color: Color = .blue
    var context: NSManagedObjectContext
    init(context: NSManagedObjectContext) {
        self.context = context
    }
    func save() {
        do {
            let MyList = MyList(context: context)
            MyList.name = name
            MyList.color = NSColor(color)
            try MyList.save()
        } catch {
            print("error=\(error)")
        }
    }
}
