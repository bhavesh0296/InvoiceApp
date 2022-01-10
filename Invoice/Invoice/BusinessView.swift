//
//  BusinessView.swift
//  Invoice
//
//  Created by bhavesh on 07/01/22.
//

import SwiftUI

struct BusinessView: View {

    @State var adminText: String = ""

    var body: some View {
        ScrollView {
            VStack {
//                Text("")
//                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 2, maxHeight: 2)
//                    .background(Color.gray)

                VStack(alignment: .leading) {
                    Text("Business Name")
                        .fontWeight(.medium)
                    HStack {
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 20.0, height: 20.0)
                            .foregroundColor(ColorUtility.imageTintColor)

                        TextField("Admin", text: $adminText)
                            .font(.system(size: 18))
                    }.padding()
                        .background(RoundedRectangle(cornerRadius: 2)
                                        .stroke(ColorUtility.boxBorderColor, lineWidth: 1))
                }

                Spacer().frame(width: 20, height: abs(30))
                VStack(alignment: .leading) {
                    Text("Email")
                        .fontWeight(.medium)
                    HStack {
                        Image(systemName: "envelope.fill")
                            .resizable()
                            .frame(width: 20.0, height: 20.0)
                            .foregroundColor(ColorUtility.imageTintColor)

                        TextField("admin@gmail.com", text: $adminText)
                            .font(.system(size: 18))
                    }.padding()
                        .background(RoundedRectangle(cornerRadius: 2)
                                        .stroke(ColorUtility.boxBorderColor, lineWidth: 1))
                }
                Spacer().frame(width: 20, height: 30)
                VStack(alignment: .leading) {
                    Text("Phone")
                        .fontWeight(.medium)
                    HStack {
                        Image(systemName: "phone.fill")
                            .resizable()
                            .frame(width: 20.0, height: 20.0)
                            .foregroundColor(ColorUtility.imageTintColor)

                        TextField("1593574862 971+", text: $adminText)
                            .font(.system(size: 18))
                    }.padding()
                        .background(RoundedRectangle(cornerRadius: 2)
                                        .stroke(ColorUtility.boxBorderColor, lineWidth: 1))
                }
                Spacer().frame(width: 20, height: 30)
                VStack(alignment: .leading) {
                    Text("Address")
                        .fontWeight(.medium)
                    HStack {
                        Image(systemName: "mappin.circle.fill")
                            .resizable()
                            .frame(width: 20.0, height: 20.0)
                            .foregroundColor(ColorUtility.imageTintColor)

                        TextField("Address", text: $adminText)
                            .font(.system(size: 18))
                    }.padding()
                        .background(RoundedRectangle(cornerRadius: 2)
                                        .stroke(ColorUtility.boxBorderColor, lineWidth: 1))
                }
                Spacer().frame(width: 20, height: 30)
                Button {

                } label: {

                    NavigationLink(destination: BusinessLogoView()) {
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

                }


                Spacer()
            }.padding(EdgeInsets(top: 40, leading: 20, bottom: 50, trailing: 20))
        }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarItems(leading: Text(""),
                            trailing: Text("Skip"))


    }
}

struct BusinessView_Previews: PreviewProvider {
    static var previews: some View {
        BusinessView()
    }
}
