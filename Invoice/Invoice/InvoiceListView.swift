//
//  InvoiceListView.swift
//  Invoice
//
//  Created by bhavesh on 10/01/22.
//

import SwiftUI

struct InvoiceListView: View {
    @State var itemRowCount: Int = 0
    
    var body: some View {
        ZStack{
            ScrollView {
                VStack {

//                    Text("")
//                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 2, maxHeight: 2)
//                        .background(Color.gray)

                    Spacer().frame(width: 10, height: abs(16))

                    ForEach(0..<itemRowCount, id: \.self) {index in


                        NavigationLink(destination: InvoiceInfoView())  {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("INV0001")
                                        .font(.title3)
                                        .bold()
                                        .foregroundColor(Color.black)

                                    Group {
                                        Text("Created on 2021/08/11")
                                        Text("Due on 2021/08/11")
                                    }.font(.subheadline)
                                        .foregroundColor(ColorUtility.textGrayColor)
                                }
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .resizable()
                                    .frame(width: 10, height: 20)
                                    .foregroundColor(ColorUtility.textGrayColor)
                            }.padding()
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .background(RoundedRectangle(cornerRadius: 5)
                                                .fill(Color.white)
                                                .shadow(color: Color.black.opacity(0.1), radius: 2, x: 0, y: 0))
                            //                                .padding()

                            Spacer().frame(width: 10, height: abs(16))
                        }
                    }


                    Spacer()
                }.padding()
            }

            if itemRowCount < 1 {

                VStack {
                    Text("Lets Create a invoice by clicking below button")
//                    Image(systemName: "arrow.down")
//                        .foregroundColor(ColorUtility.appThemeColor)
//                        .frame(width: 10, height: 40)
//                        .animation(Animation.interactiveSpring().repeatForever(autoreverses: true))
                }
            }

            VStack {

                Spacer()
                NavigationLink(destination: CreateInvoiceView()) {
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
            }
        }.navigationBarTitle("Invoice List", displayMode: .inline)
            .navigationBarItems(leading: Text(""),
                                trailing: Menu {
                Button("Order Now", action: placeOrder)
                Button("Adjust Order", action: adjustOrder)
            } label: {
                Image(systemName: "ellipsis")
                    .rotationEffect(Angle(degrees: 90))
                    .foregroundColor(ColorUtility.appThemeColor)
            }
            )
    }

    func placeOrder() { }
    func adjustOrder() { }
}

