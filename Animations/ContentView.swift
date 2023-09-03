//
//  ContentView.swift
//  Animations
//
//  Created by Muhammad Fahmi on 01/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var dragAmount = CGSize.zero
    @State private var colorChange = true
    @State private var myName = Array("Drag me Fahmi!")
    
    var body: some View {
        HStack(spacing: 0){
            ForEach(0..<myName.count, id: \.self){ num in
                Text(String(myName[num]))
                    .font(.title)
                    .frame(width: 25, height: 50)
                    .background(colorChange ? .indigo : .pink)
//                    .overlay(
//                        Rectangle()
//                            .stroke(.white)
//                        )
                        //                    .background(in: Rectangle()
                        //                        .stroke(.black)
                        //                    )
                            .foregroundStyle(.white)
                            .offset(dragAmount)
                            .animation(.default.delay(Double(num) / 20), value: dragAmount)
                        
                        //                    .animation(.default, value: myName)
                        }
                        }
                            .gesture(
                                DragGesture()
                                    .onChanged{
                                        dragAmount = $0.translation }
                                    .onEnded{ _ in
                                        withAnimation(){
                                            colorChange.toggle()
                                            dragAmount = .zero
                                        }
                                    }
                            )
                        
                        
                        //        LinearGradient(colors: [.red, .indigo], startPoint: .topLeading, endPoint: .bottom)
                        //            .frame(width: 250, height: 150)
                        //            .clipShape(RoundedRectangle(cornerRadius: 15))
                        //            .offset(dragAmount)
                        //            .gesture(
                        //                DragGesture()
                        //                    .onChanged{ dragAmount = $0.translation }
                        //                    .onEnded { _ in
                        //                        withAnimation(.spring()){
                        //                            dragAmount = .zero
                        //                        }
                        //                    }
                        //            )
                        //            .animation(.default, value: dragAmount)
                        }
                        }
                        
                        struct ContentView_Previews: PreviewProvider {
                            static var previews: some View {
                                ContentView()
                            }
                        }
