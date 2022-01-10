//
//  CrashUtility.swift
//  Invoice
//
//  Created by bhavesh on 10/01/22.
//

import Foundation
import FirebaseCrashlytics

class CrashUtility {
    static let shared = CrashUtility()

    func log() {
        Crashlytics.crashlytics().log("This is my first Message to log")
    }

}
