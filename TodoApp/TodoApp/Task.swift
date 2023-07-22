//
//  Task.swift
//  TodoApp
//
//  Created by Efe Koç on 6.07.2023.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
}
