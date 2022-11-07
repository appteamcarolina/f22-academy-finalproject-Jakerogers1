//
//  AddView.swift
//  PinterestUI
//
//  Created by jmanerr on 11/12/22.
//

import SwiftUI

struct AddView: View {
    @State private var ideaPin = false
    @State private var pin = false
    @State private var board = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                Spacer()
                Text("Start creating now")
                    .padding(.top)
                    .font(.subheadline)
                    .bold()
                HStack {
                    Spacer()
                    Button {
                        ideaPin = true
                    } label: {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.gray)
                            .frame(width: 50, height: 50)
                            .scaledToFit()
                            .overlay(
                                Image(systemName: "square.stack"))
                            .foregroundColor(.white)
                    }
                    .padding(.trailing)
                    Button {
                        pin = true
                    } label: {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.gray)
                            .frame(width: 50, height: 50)
                            .scaledToFit()
                            .overlay(
                                Image(systemName: "pin.fill"))
                            .foregroundColor(.white)
                    }
                    .padding(.trailing)
                    Button {
                        board = true
                    } label: {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.gray)
                            .frame(width: 50, height: 50)
                            .scaledToFit()
                            .overlay(
                                Image(systemName: "square.grid.2x2.fill"))
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
                .padding(.top)
                Text("Get inspired and add your take")
                    .padding(.top)
                    .font(.subheadline)
                    .bold()
                    .padding(.bottom)

                
                Image("addpic")
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .cornerRadius(10)
                    .shadow(color: Color.primary.opacity(0.3), radius: 1)
                    .overlay(
                        Image("Amber")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .padding(.top, 550)
                            .ignoresSafeArea()
                        )

            }
        }
        .navigationTitle("")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
