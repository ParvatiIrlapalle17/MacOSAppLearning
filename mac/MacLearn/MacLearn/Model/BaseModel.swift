
import Foundation
import CoreData

protocol BaseModel {
    static var viewContext: NSManagedObjectContext { get }
    func save() throws
    
}
extension BaseModel {
    static var viewContext: NSManagedObjectContext {
        PersistenceController.shared.container.viewContext
        
    }
    func save() throws {
        try Self.viewContext.save()
    }
}
