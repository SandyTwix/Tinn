//
//  Notifications.swift
//  Tinn
//
//  Created by Руслан Трищенков on 20.01.2023.
//

import SwiftUI

struct Notifications: View {
    @State var soundNotifications = false
    @State var showTextMessages = false
    @State var showLikes = false
    @State var showComments = false
    @State var achivements = false
    var body: some View {
        NavigationView {
            Form{
                Section(header: Text("Уведомления на сайте")
                    .font(.custom("Nunito", size: 16))
                    .foregroundColor(.black)) {
                        
                        HStack {
                            
                            Text("Звук в уведомлениях")
                                .font(.custom("Nunito", size: 13))
                            
                            Spacer()
                            CustomSwitch(show: $soundNotifications)
                        }
                        
                        HStack {
                            Text("Показывать текст сообщений")
                                .font(.custom("Nunito", size: 13))
                            Spacer()
                            CustomSwitch(show: $showTextMessages)
                        }
                    }
                
                Section(header: Text("Обратная связь")
                    .font(.custom("Nunito", size: 16))
                    .foregroundColor(.black)) {
                        
                        HStack {
                            VStack(alignment: .leading){
                                Text("Отметки ''Нравится''")
                                    .font(.custom("Nunito", size: 13))
                                Text("Уведомления об отметках ''Нравится'' к комментариям.")
                                    .frame(width: 200)
                                    .font(.custom("Nunito", size: 11))
                            }
                            Spacer()
                            CustomSwitch(show: $showLikes)
                        }
                        
                        HStack {
                            VStack(alignment: .leading){
                                Text("Комментарии")
                                    .font(.custom("Nunito", size: 13))
                                Text("Ваше видео или комментарий прокомментировали.")
                                    .frame(width: 155)
                                    .font(.custom("Nunito", size: 11))
                            }
                            Spacer()
                            CustomSwitch(show: $showComments)
                        }
                    }
                
                Section(header: Text("Другое")
                    .font(.custom("Nunito", size: 16))
                    .foregroundColor(.black)) {
                        HStack{
                            VStack(alignment: .leading){
                                Text("Новое видео")
                                    .font(.custom("Nunito", size: 13))
                                Text("Если вы подписались на уведомления о новых видео в сообществе или на странице пользователя.")
                                    .frame(width: 195)
                                    .font(.custom("Nunito", size: 11))
                            }
                            Spacer()
                            Button {
                                
                            } label: {
                                Text("Отключено")
                                    .font(.custom("Nunito", size: 13))
                            }
                        }

                        
                        HStack{
                            VStack(alignment: .leading){
                                Text("Достижения")
                                    .font(.custom("Nunito", size: 13))
                                Text("Сообщить о новых достижениях.")
                                    .font(.custom("Nunito", size: 11))
                                
                            }
                            Spacer()
                            CustomSwitch(show: $achivements)
                        }
                        
                        
                    }
            }
        }
        .background(Color(red: 0.98, green: 0.988, blue: 1).edgesIgnoringSafeArea(.all))
    }
}

struct Notifications_Previews: PreviewProvider {
    static var previews: some View {
        Notifications()
    }
}


struct CustomSwitch: View{
    @Binding var show: Bool
    var body: some View{
        ZStack{
            Capsule()
                .fill(Color(red: 0.851, green: 0.851, blue: 0.851))
                .frame(width: 28, height: 12)
            HStack{
                if show{
                    Spacer()
                }
                ZStack{
                    
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 18, height: 18)
                        .padding(.leading, show ? -35 : 30)
                }.onTapGesture {
                    self.show.toggle()
                }
                
                if !show{
                    Spacer()
                }
            }.frame(width: 28, height: 12)
        }

        
    }
}
