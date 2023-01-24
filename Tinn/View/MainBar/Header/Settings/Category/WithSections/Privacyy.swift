//
//  Privacyy.swift
//  Tinn
//
//  Created by Руслан Трищенков on 24.01.2023.
//

import SwiftUI

struct Privacyy: View {
    var body: some View {
        NavigationView {
            Form{
                HStack{
                    Text("Тип профиля")
                        .font(.custom("Nunito", size: 13))
                    
                    Spacer()
                    
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
                    }
                    
                }
                
                HStack{
                    Text("Кто видит мои подписки")
                        .font(.custom("Nunito", size: 13))
                    
                    Spacer()
                    
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
                    
                }
                
                HStack{
                    Text("Кто видит мои плейлисты")
                        .font(.custom("Nunito", size: 13))
                    
                    Spacer()
                    
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
                    
                }
                
                HStack{
                    Text("Кто видит мои достижения")
                        .font(.custom("Nunito", size: 13))
                    
                    Spacer()
                    
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
                    
                }
                
            }
        }
    }
}

struct Privacyy_Previews: PreviewProvider {
    static var previews: some View {
        Privacyy()
    }
}
