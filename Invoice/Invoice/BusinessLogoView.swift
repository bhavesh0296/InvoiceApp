//
//  BusinessLogoView.swift
//  Invoice
//
//  Created by bhavesh on 07/01/22.
//

import SwiftUI

struct BusinessLogoView: View {
    var body: some View {
        ScrollView {
            VStack {
//                Text("")
//                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 2, maxHeight: 2)
//                    .background(Color.gray)
                Spacer()
                    .frame(width: 60, height: 60)

                VStack(alignment: .center, spacing: 20) {


                    Image(systemName: "icloud.and.arrow.up")
                        .resizable()
                        .foregroundColor(ColorUtility.blueColor)
                        .frame(width: 120.0, height: 80.0)
                        .aspectRatio(contentMode: .fit)

                    Text("drag and drop to upload file")
                        .bold()

                    Text("or")



                    Button {
                        Logger.log(logLevel: .verbose,
                                   "Get Started Button Clicked")
                    } label: {

                        Text(" Choose file")
                            .font(.system(size: 18))
                            .bold()
                            .foregroundColor(Color.white)
                            .padding()

                            .background(RoundedRectangle(cornerRadius: 10)
                                            .fill(ColorUtility.appThemeColor))
                    }


                }
//                .padding(EdgeInsets(top: 30, leading: 30, bottom: 30, trailing: 30))
                .padding([.vertical], 30)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 10)
                                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [9,5])))
                    .padding([.horizontal], 30)

                Button {

                } label: {

                    NavigationLink(destination: AllSetView()) {
                        HStack {
                            Text("Next")
                                .font(.system(size: 18))
                                .bold()

                            Image(systemName: "chevron.right")
                        }.foregroundColor(Color.white)
                            .padding([.vertical], 20)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .background(RoundedRectangle(cornerRadius: 10)
                                            .fill(ColorUtility.appThemeColor))
                    }

                }.padding(EdgeInsets(top: 40, leading: 20, bottom: 50, trailing: 20))

                Spacer()
            }
        }.navigationBarTitle("Add Busniess Logo", displayMode: .inline)
            .navigationBarItems(leading: Text(""),
                                trailing: Text("Skip"))
    }
}
