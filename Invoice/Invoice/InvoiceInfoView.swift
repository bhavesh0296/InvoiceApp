//
//  InvoiceInfoView.swift
//  Invoice
//
//  Created by bhavesh on 09/01/22.
//

import SwiftUI

struct InvoiceInfoView: View {

    @State var adminText: String = "123456"

    var body: some View {
        ScrollView {
            VStack {

                Text("")
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 2, maxHeight: 2)
                    .background(Color.gray)

                VStack (spacing: 20) {

                    VStack(alignment: .leading) {
                        Text("Invoice No")
                            .fontWeight(.medium)
                        HStack {
                            Image(systemName: "person.fill")
                                .resizable()
                                .frame(width: 20.0, height: 20.0)
                                .foregroundColor(ColorUtility.imageTintColor)

                            TextField("Admin", text: $adminText)
                                .font(.system(size: 18))
                        }

                    }.padding([.vertical, .horizontal], 6)
                        .background(RoundedRectangle(cornerRadius: 5)
                                        .stroke(ColorUtility.imageTintColor, lineWidth: 1))

                    VStack(alignment: .leading) {
                        Text("Invoice Date")
                            .fontWeight(.medium)
                        HStack {

                            TextField("2021/08/11", text: $adminText)
                                .font(.system(size: 18))

                            Spacer()

                            Image(systemName: "calendar")
                                .resizable()
                                .frame(width: 20.0, height: 20.0)
                                .foregroundColor(ColorUtility.imageTintColor)

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
        }.navigationBarTitle("Invoice Info", displayMode: .inline)
            .navigationBarItems(leading: Text(""),
                                trailing: Text("Skip"))
    }
}
