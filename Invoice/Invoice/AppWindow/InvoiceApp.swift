//
//  InvoiceApp.swift
//  Invoice
//
//  Created by bhavesh on 25/11/21.
//

import SwiftUI
import FirebaseCore


@main
struct InvoiceApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
//            InvoiceListView()

                .onAppear() {
                    FirebaseApp.configure()
                }


//            BusinessView()

//            BusinessLogo()
//            AllSetView()
//            CreateInvoice()
//            InvoiceInfoView()
//            AddBusinessView()
//            AddItemsView()
//            PaymentInstructionView()
//            UploadSignatureView()
        }
    }
}
