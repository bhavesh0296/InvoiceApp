//
//  AllSetView.swift
//  Invoice
//
//  Created by bhavesh on 07/01/22.
//

import SwiftUI

struct AllSetView: View {

    var body: some View {
        ScrollView {
            VStack {

                Spacer()
                    .frame(width: 60, height: 60)

                Image("allSet")
                    .resizable()
                    .foregroundColor(ColorUtility.blueColor)
                    .frame(width: 340, height: 360)
                    .aspectRatio(contentMode: .fit)

                Text("You’r all set")
                    .bold()


                Button {

                } label: {
                    NavigationLink(destination: CreateInvoiceView()) {
//                    NavigationLink(destination: InvoiceListView()) {

                        HStack {
                            Text("Create a invoice")
                                .font(.system(size: 18))
                                .bold()
                        }.foregroundColor(Color.white)
                            .padding([.vertical], 20)
                            .padding([.horizontal], 30)
                            .background(RoundedRectangle(cornerRadius: 10)
                                            .fill(ColorUtility.appThemeColor))
                    }

                }.padding(EdgeInsets(top: 20, leading: 20, bottom: 50, trailing: 20))
                Spacer()
            }
        }.navigationBarTitle("", displayMode: .inline)
            .navigationBarItems(leading: Text(""),
                                trailing: Text("Skip")

            )
    }
}


