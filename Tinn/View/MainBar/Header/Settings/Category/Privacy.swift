//
//  Privacy.swift
//  Tinn
//
//  Created by Руслан Трищенков on 20.01.2023.
//

import SwiftUI

struct Privacy: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(Color.white)
                    .shadow(color: .gray.opacity(0.4), radius: 4)
                    .frame(height: 200)
                    .padding(.bottom, 20)
                    .padding(.horizontal, 10)
                    .padding(.top, 20)
                
                ScrollView{
                    VStack{
                        HStack{
                            Text("Тип профиля")
                                .font(.custom("Nunito", size: 13))
                                .padding(EdgeInsets(top: 35, leading: 30, bottom: 5, trailing: 0))
                            Spacer()
                            
                            VStack{
                                Menu{
                                    Button {
                                        
                                    } label: {
                                        Text("Открытый")
                                    }
                                    
                                    Button {
                                        
                                    } label: {
                                        Text("Закрытый")
                                    }
                                    
                                } label: {
                                    Text("Открытый")
                                        .font(.custom("Nunito", size: 13))
                                        .padding(EdgeInsets(top: 35, leading: 30, bottom: 5, trailing: 35))
                                }
                                .underline()
                                    
                            }

                        }
                        Divider().padding(.horizontal, 20)
                    }
                    
                    VStack{
                        HStack{
                            Text("Кто видит мои подписки")
                                .font(.custom("Nunito", size: 13))
                                .padding(EdgeInsets(top: 10, leading: 30, bottom: 5, trailing: 0))
                            Spacer()
                            
                            VStack{
                                Menu{
                                    Button {
                                        
                                    } label: {
                                        Text("Все")
                                    }
                                    
                                    Button {
                                        
                                    } label: {
                                        Text("Подписчики")
                                    }
                                    
                                    Button {
                                        
                                    } label: {
                                        Text("Никто")
                                    }
                                    
                                } label: {
                                    Text("Все")
                                        .font(.custom("Nunito", size: 13))
                                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 5, trailing: 35))
                                }
                                .underline()
                                    
                            }

                        }
                        Divider().padding(.horizontal, 20)
                    }
                    
                    VStack{
                        HStack{
                            Text("Кто видит мои плейлисты")
                                .font(.custom("Nunito", size: 13))
                                .padding(EdgeInsets(top: 10, leading: 30, bottom: 5, trailing: 0))
                            Spacer()
                            
                            VStack{
                                Menu{
                                    Button {
                                        
                                    } label: {
                                        Text("Все")
                                    }
                                    
                                    Button {
                                        
                                    } label: {
                                        Text("Подписчики")
                                    }
                                    
                                    Button {
                                        
                                    } label: {
                                        Text("Никто")
                                    }
                                    
                                } label: {
                                    Text("Все")
                                        .font(.custom("Nunito", size: 13))
                                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 5, trailing: 35))
                                }
                                .underline()
                                    
                            }

                        }
                        Divider().padding(.horizontal, 20)
                    }
                    
                    
                    VStack{
                        HStack{
                            Text("Кто видит мои достижения")
                                .font(.custom("Nunito", size: 13))
                                .padding(EdgeInsets(top: 10, leading: 30, bottom: 5, trailing: 0))
                            Spacer()
                            
                            VStack{
                                Menu{
                                    Button {
                                        
                                    } label: {
                                        Text("Все")
                                    }
                                    
                                    Button {
                                        
                                    } label: {
                                        Text("Подписчики")
                                    }
                                    
                                    Button {
                                        
                                    } label: {
                                        Text("Никто")
                                    }
                                    
                                } label: {
                                    Text("Все")
                                        .font(.custom("Nunito", size: 13))
                                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 5, trailing: 35))
                                }
                                .underline()
                                    
                            }

                        }
                    }
                    
                }
            }
        }
        .background(Color(red: 0.98, green: 0.988, blue: 1).edgesIgnoringSafeArea(.all))
    }
}

struct Privacy_Previews: PreviewProvider {
    static var previews: some View {
        Privacy()
    }
}
