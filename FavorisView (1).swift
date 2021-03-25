//
//  FavorisView.swift
//  EcoTrip2
//
//  Created by Mailys Larager on 16/03/2021.
//

import SwiftUI
struct FavorisView: View {
    @State var favoListe : [favoModel]
    //    @State  var users = tableauFav
    
    var body: some View {
        NavigationView {
            VStack {
                
                List{
                    ForEach(tableauFav, id: \.self) { users in
                        
                        HStack {
                            Image(users.icone.description)
                                .resizable()
                                .frame(width: 50, height: 50)
                            VStack(alignment: .leading){
                                Text(users.titre)
                                    .font(.system(size: 18))
                                    .bold()
                                Text(users.sousTitre)
                                    .font(.system(size: 15))
                                    .fontWeight(.light)
                            }
                            .padding()
                            
                        }
                    } .onDelete(perform: delete)
                }.listStyle(PlainListStyle())
                //            Spacer()
            }.navigationTitle("Mes favoris")
            
        }
    }
    
    func delete(at offsets: IndexSet) {
        tableauFav.remove(atOffsets: offsets)
    }
    
    //            HStack {
    //                Image("tente1")
    //                    .resizable()
    //                    .aspectRatio(contentMode: .fill)
    //                    .frame(width: 80, height: 80)
    //                    //                    .padding(.bottom, 5)
    //                    .cornerRadius(15)
    //
    //                VStack (alignment: .leading) {
    //                    Text("La Ferme de Monsieur Seguin")
    //                        .bold()
    //                    Text("Mornant (69)")
    //
    //                }
    //                //                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
    //                Spacer ()
    //            }
    //
    //            Divider()
    //
    //            HStack {
    //                Image("activite")
    //                    .resizable()
    //                    .aspectRatio(contentMode: .fill)
    //                    .frame(width: 80, height: 80)
    //                    //                    .padding(.bottom, 5)
    //                    .cornerRadius(15)
    //
    //                VStack (alignment: .leading) {
    //                    Text("Balade enchanteresque à Sherwood")
    //                        .bold()
    //                    Text("Grande-Rivière Château (39)")
    //                }
    //                //                .foregroundColor(.orange)
    //                Spacer ()
    //
    //            }
    //            Divider()
    //
    //            HStack {
    //                Image("activite")
    //                    .resizable()
    //                    .aspectRatio(contentMode: .fill)
    //                    .frame(width: 80, height: 80)
    //                    //                    .padding(.bottom, 5)
    //                    .cornerRadius(15)
    //
    //                VStack (alignment: .leading) {
    //                    Text("La découverte de la lavande")
    //                        .bold()
    //                    Text("Fontaine-de-Vaucluse (84)")
    //                }
    //                              .foregroundColor(.orange)
    //                Spacer ()
    //            }
    //            Divider()
    //
    //            HStack {
    //                Image("activite")
    //                    .resizable()
    //                    .aspectRatio(contentMode: .fill)
    //                    .frame(width: 80, height: 80)
    //                    //                    .padding(.bottom, 5)
    //                    .cornerRadius(15)
    //
    //                VStack (alignment: .leading) {
    //                    Text("Atteindre la Sainte-Victoire")
    //                        .bold()
    //                    Text("Aix-en-Provence (13)")
    //                }
    //                //                .foregroundColor(.green)
    //                Spacer ()
    //            }
    //            Divider()
    //
    //            Spacer()
    //
    //        }
    //    }
    
    
}

struct FavorisView_Previews: PreviewProvider {
    static var previews: some View {
        FavorisView(favoListe: tableauFav)
    }
}
