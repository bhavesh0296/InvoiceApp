//
//  UploadSignatureView.swift
//  Invoice
//
//  Created by bhavesh on 09/01/22.
//

import SwiftUI
import PencilKit

struct UploadSignatureView: View {

    @Environment(\.undoManager) private var undoManager
    @State private var canvasView = PKCanvasView()

    var body: some View {
//        ScrollView {
            VStack {
//                Text("")
//                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 2, maxHeight: 2)
//                    .background(Color.gray)
//                Spacer()
//                    .frame(width: 60, height: 60)

                HStack {
                    Text("Upload Signature")
                        .font(.title2)
                    Spacer()
                }.padding()

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


                HStack {
                    ZStack {
                        HStack {
                            Text("Draw Signature")
                                .font(.title2)
                            Spacer()
                        }

                        HStack {
                            Spacer()
                            Text("or")
                            Spacer()
                        }

                    }
                }.padding()




                VStack(alignment: .center, spacing: 20) {

                    ZStack {
                        MyCanvas(canvasView: $canvasView)
                            .background(Color.white)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 140, maxHeight: 140)

                        Button {
                            Logger.log(logLevel: .verbose,
                                       "Get Started Button Clicked")

                            canvasView.drawing = PKDrawing()
                        } label: {

                            VStack {
                                Spacer()
                                HStack(alignment: .bottom) {
                                    Spacer()
                                    Image(systemName: "trash.circle.fill")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color.red)
//                                        .padding()
//                                        .background(Color.gray)
//                                        .clipShape(Circle())

                                }
                            }
                        }
                    }

                }
                .padding([.vertical], 10)
                .frame(minWidth: 0, maxWidth: .infinity)
//                .background(Color.yellow.opacity(0.1))
                .background(RoundedRectangle(cornerRadius: 10)
//                                .background(Color.yellow)
                                .stroke(style: StrokeStyle(lineWidth: 1, dash: [9,5]))
                )
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
//        }.navigationBarTitle("Signature", displayMode: .inline)
//            .navigationBarItems(leading: Text(""),
//                                trailing: Text("Skip"))
    }
}


//struct PencilKitRepresentable : UIViewRepresentable {
//    let canvas = PKCanvasView(frame: .init(x: 0, y: 0, width: 400, height: 80))
//    func makeUIView(context: Context) -> PKCanvasView {
//        return canvas
//    }
//    func updateUIView(_ uiView: PKCanvasView, context: Context) { }
//}
//
//struct SignatureUI: View {
//    let canvasView = PencilKitRepresentable()
//    let imgRect = CGRect(x: 0, y: 0, width: 400.0, height: 100.0)
//
//
//
//    var body: some View {
//      VStack {
//          Text ("Sign here:")
//          canvasView.frame(height: 100.0)
//              .border(Color.gray, width: 5)
//          Button(action: {
//              self.saveSignature()
//          }) {
//              Text("Save Signature")
//          }
//      }
//  }
//
//func saveSignature() {
//    let image = canvasView.canvas.drawing.image(from: imgRect, scale: 1.0)
////    ...
//
//    }
//
//}
//

struct MyCanvas: UIViewRepresentable {
    @Binding var canvasView: PKCanvasView

    func makeUIView(context: Context) -> PKCanvasView {
        canvasView.drawingPolicy = .anyInput
        canvasView.tool = PKInkingTool(.pen, color: .black, width: 10)
        return canvasView
    }

    func updateUIView(_ canvasView: PKCanvasView, context: Context) { }
}

struct Writer: View {
    @Environment(\.undoManager) private var undoManager
    @State private var canvasView = PKCanvasView()

    var body: some View {
        VStack(spacing: 10) {
            Button("Clear") {
                canvasView.drawing = PKDrawing()
            }
            Button("Undo") {
                undoManager?.undo()
            }
            Button("Redo") {
                undoManager?.redo()
            }
            MyCanvas(canvasView: $canvasView)
        }
    }
}
