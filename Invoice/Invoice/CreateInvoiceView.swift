//
//  CreateInvoiceView.swift
//  Invoice
//
//  Created by bhavesh on 09/01/22.
//

import SwiftUI

struct CreateInvoiceView: View {
    @State var adminText: String = ""

    var body: some View {
        ScrollView {
            VStack {

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

                    Spacer().frame(width: 10, height: abs(16))
                }

                NavigationLink(destination: AddBusinessView())  {
                    HStack {
                        Image(systemName: "doc.plaintext")
                            .resizable()
                            .frame(width: 18, height: 18)
                            .padding([.horizontal, .vertical], 12)
                            .foregroundColor(ColorUtility.screenBackgroundColor5)
                            .background(ColorUtility.screenBackgroundColor2)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text("Form")
                                .font(.title3)
                                .bold()
                                .foregroundColor(Color.black)

                            Group {
                                Text("Add Business")
                                //                            Text("Due on 2021/08/11")
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



                    Spacer().frame(width: 10, height: abs(16))
                }

                Group {

                    HStack {
                        Image(systemName: "pencil")
                            .resizable()
                            .frame(width: 18, height: 18)
                            .padding([.horizontal, .vertical], 12)
                            .foregroundColor(ColorUtility.screenBackgroundColor4)
                            .background(ColorUtility.screenBackgroundColor3)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text("Bill To")
                                .font(.title3)
                                .bold()
                                .foregroundColor(Color.black)

                            Group {
                                Text("Add Client")
                                //                            Text("Due on 2021/08/11")
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

                    Spacer().frame(width: 10, height: abs(16))

                }

                NavigationLink(destination: AddItemsView()) {

                    HStack {
                        Image(systemName: "tray.and.arrow.down")
                            .resizable()
                            .frame(width: 18, height: 18)
                            .padding([.horizontal, .vertical], 12)
                            .foregroundColor(ColorUtility.screenBackgroundColor7)
                            .background(ColorUtility.screenBackgroundColor6)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text("Items")
                                .font(.title3)
                                .bold()
                                .foregroundColor(Color.black)

                            Group {
                                Text("Add Items")
                                //                            Text("Due on 2021/08/11")
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

                    Spacer().frame(width: 10, height: abs(16))

                }

                NavigationLink(destination: PaymentInstructionView()) {
                    HStack {
                        Image(systemName: "tray.and.arrow.down")
                            .resizable()
                            .frame(width: 18, height: 18)
                            .padding([.horizontal, .vertical], 12)
                            .foregroundColor(ColorUtility.screenBackgroundColor5)
                            .background(ColorUtility.screenBackgroundColor2)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text("Payment Instructions")
                                .font(.title3)
                                .bold()
                                .foregroundColor(Color.black)

                            Group {
                                Text("Add Payment Instructions")
                                //                            Text("Due on 2021/08/11")
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


                    Spacer().frame(width: 10, height: abs(16))
                }

                NavigationLink(destination: UploadSignatureView()) {

                    HStack {
                        Image(systemName: "pencil.and.outline")
                            .resizable()
                            .frame(width: 18, height: 18)
                            .padding([.horizontal, .vertical], 12)
                            .foregroundColor(ColorUtility.screenBackgroundColor4)
                            .background(ColorUtility.screenBackgroundColor3)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text("Signature")
                                .font(.title3)
                                .bold()
                                .foregroundColor(Color.black)

                            Group {
                                Text("Add Signature")
                                //                            Text("Due on 2021/08/11")
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

                    Spacer().frame(width: 10, height: abs(16))
                }

                Group {

                    HStack {
                        Image(systemName: "square.and.arrow.down.fill")
                            .resizable()
                            .frame(width: 18, height: 18)
                            .padding([.horizontal, .vertical], 12)
                            .foregroundColor(ColorUtility.screenBackgroundColor7)
                            .background(ColorUtility.screenBackgroundColor6)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text("Complete download invoice")
                                .font(.title3)
                                .bold()
                                .foregroundColor(Color.black)

                            Group {
                                Text("Complete Download")
                                //                            Text("Due on 2021/08/11")
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

                    Spacer().frame(width: 10, height: abs(16))
                }

                Spacer()
            }.padding(EdgeInsets(top: 40, leading: 20, bottom: 50, trailing: 20))
        }
        .background(ColorUtility.screenBackgroundColor)
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarTitle("Create Invoice", displayMode: .inline)
        .navigationBarItems(leading: Text(""),
                            trailing: NavigationLink(destination: InvoiceListView()) {
            HStack {
                Text("Invoice List")
                    .font(.system(size: 18))
                    .bold()
            }.foregroundColor(Color.white)
                .padding([.vertical], 20)
                .padding([.horizontal], 30)
                .background(RoundedRectangle(cornerRadius: 10)
                                .fill(ColorUtility.appThemeColor))
        })


    }
}
