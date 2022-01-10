//
//  AddBusinessView.swift
//  Invoice
//
//  Created by bhavesh on 09/01/22.
//

import SwiftUI

struct AddBusinessView: View {

    @State var adminText: String = "123456"
    @State var placeholderText: String = "Address"
    @State var textEditorText: String = "Address"

    var body: some View {
        ScrollView {
            VStack {

//                Text("")
//                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 2, maxHeight: 2)
//                    .background(Color.gray)

                VStack (spacing: 20) {

                    VStack(alignment: .leading) {
                        Text("Email")
                            .fontWeight(.medium)
                        HStack {
                            Image(systemName: "envelope.fill")
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
                        Text("Phone")
                            .fontWeight(.medium)
                        HStack {
                            Image(systemName: "phone.fill")
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
                        Text("Address")
                            .fontWeight(.medium)
                        HStack(alignment: .top) {
                            Image(systemName: "mappin.circle.fill")
                                .resizable()
                                .frame(width: 20.0, height: 20.0)
                                .foregroundColor(ColorUtility.imageTintColor)
                                .padding([.top], 10)

                            ZStack {
                                if self.textEditorText.isEmpty {
                                    TextEditor(text:$placeholderText)
                                        .foregroundColor(.gray.opacity(0.7))
                                        .frame(height: 60.0)
                                        .disabled(true)
                                }
                                TextEditor(text:$textEditorText)
                                    .opacity(self.textEditorText.isEmpty ? 0.1 : 1)
                                    .frame(height: 60.0)
                            }
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
        }.navigationBarTitle("Add Business", displayMode: .inline)
            .navigationBarItems(leading: Text(""),
                                trailing: Text("Skip"))
    }
}

