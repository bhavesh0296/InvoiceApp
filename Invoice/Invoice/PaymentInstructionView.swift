//
//  PaymentInstructionView.swift
//  Invoice
//
//  Created by bhavesh on 09/01/22.
//

import SwiftUI

struct PaymentInstructionView: View {

    @State var adminText: String = "Payment Instructions"

    var body: some View {
        ScrollView {
            VStack {

                Text("")
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 2, maxHeight: 2)
                    .background(Color.gray)

                VStack (spacing: 20) {

                    VStack(alignment: .leading) {
                        Text("Payment Instructions")
                            .fontWeight(.medium)
                        HStack {
//                            Image(systemName: "envelope.fill")
//                                .resizable()
//                                .frame(width: 20.0, height: 20.0)
//                                .foregroundColor(ColorUtility.imageTintColor)

                            TextField("Payment Instructions", text: $adminText)
                                .font(.system(size: 14))
                        }

                    }.padding([.vertical, .horizontal], 6)
                        .background(RoundedRectangle(cornerRadius: 5)
                                        .stroke(ColorUtility.imageTintColor, lineWidth: 1))

                }.padding([.vertical, .horizontal], 16)
                    .background(RoundedRectangle(cornerRadius: 8)
                                    .fill(Color.white)
                                    .shadow(color: Color.black.opacity(0.1), radius: 6, x: 0, y: 0))
                    .padding()

                Button {

                } label: {

                    NavigationLink(destination: CreateInvoiceView()) {
                        HStack {
                            Text("Submit")
                                .font(.system(size: 22))
                                .bold()
                        }.foregroundColor(Color.white)
                            .padding([.vertical], 10)
                            .padding([.horizontal], 30)
                            .background(RoundedRectangle(cornerRadius: 10)
                                            .fill(ColorUtility.appThemeColor))
                    }

                }.padding(EdgeInsets(top: 10, leading: 20, bottom: 50, trailing: 20))
                Spacer()
            }
        }.navigationBarTitle("Payment Instructions", displayMode: .inline)
            .navigationBarItems(leading: Text(""),
                                trailing: Text("Skip"))
    }
}

