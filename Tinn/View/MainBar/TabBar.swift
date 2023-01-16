//
//  TabBar.swift
//  Tinn
//
//  Created by Руслан Трищенков on 16.01.2023.
//

import SwiftUI

struct TabBar: View {
    @Binding var index: Int
    
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                HStack(spacing: 35) {
                    Button {
                        self.index = 0
                    } label: {
                        VStack(spacing: 5){
                            Image(self.index == 0 ? "Главная_выбрано" : "Главная")
                                .frame(width: 25, height: 25)
                        }
                    }
                    .offset(y: 15)
                    
                    Button {
                        self.index = 1
                    } label: {
                        VStack(spacing: 5){
                            Image(self.index == 1 ? "Популярное_выбрано" : "Популярное")
                                .frame(width: 25, height: 25)
                        }
                    }
                    .offset(y: 15)
                    
                    Button {
                        self.index = 2
                    } label: {
                        VStack(spacing: 5){
                            Image(self.index == 2 ? "Форум_выбрано" : "Форум")
                                .frame(width: 25, height: 25)
                        }
                    }
                    .offset(y: 15)
                    
                    Button {
                        self.index = 3
                    } label: {
                        VStack(spacing: 5){
                            Image(self.index == 3 ? "Мои заявки_выбрано" : "Мои заявки")
                                .frame(width: 25, height: 25)
                        }
                    }
                    .offset(y: 15)
                    
                    Button {
                        self.index = 4
                    } label: {
                        VStack(spacing: 5){
                            Image(self.index == 4 ? "Моя комната_выбрано" : "Моя комната")
                                .frame(width: 25, height: 25)
                        }
                    }
                    .offset(y: 15)
                    
                    Button {
                        self.index = 5
                    } label: {
                        VStack(spacing: 5){
                            Image(self.index == 5 ? "Маркетплейс_выбрано" : "Маркетплейс")
                                .frame(width: 25, height: 25)
                        }
                    }
                    .offset(y: 15)
                }//HStack
                .frame(width: 500, height: 40)
                .padding(.horizontal, 25)
            }//VStack
            .background(Color.white)
        }//ZStack
    }
}

