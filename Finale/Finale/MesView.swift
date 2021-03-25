//
//  MesView.swift
//  Solidarity
//
//  Created by  SABI Jean-Serge Abiola on 22/03/2021.
//

import SwiftUI



struct MesView: View {
    var messages:[mesType]
    var body: some View {
        NavigationView{
            List(messages) {
                message in
                NavigationLink(
                    destination: ConversationView(tableau: conversation),
                    label: {
                        HStack{
                            Image(message.pic).resizable().frame(width: 50, height: 50).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            VStack(alignment:.leading,spacing: 5){
                                Text(message.name)
                                Text(message.msg).lineLimit(1)
                            }
                            Spacer()
                            VStack(spacing:15){
                                Text(message.time)
                                Text(message.msgs).padding(8).background(Color.orange).foregroundColor(.white).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                Spacer()
                                
                            }
                        }
                    })
            }.padding(10)
            .navigationBarTitle(Text("Messages"))
            
        }
    }
}
struct MesView_Previews: PreviewProvider {
    static var previews: some View {
        MesView(messages: messages)
            .ignoresSafeArea()
            
    }
}
struct TopView : View{
    var title: String
    var body: some View{
        HStack(spacing:15){
            Text(title)
                .fontWeight(.heavy)
                .font(.system(size: 23))
            Spacer()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            Button(action: {
                
            }){
                Image(systemName: "magnifyingglass").resizable().frame(width: 20, height: 20)
                
            }
            Button(action:{
                
            }){
                
    
            }
        }
        .foregroundColor(Color.white)
        .padding()
        
        
    }
    
}


