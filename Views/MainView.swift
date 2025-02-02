//
//  ContentView.swift
//  ArtApp
//
//  Created by Ylyas Abdywahytow on 1/26/25.
//


import SwiftUI

struct MainView: View {
    @State private var searchText: String = ""
    var titleText = "Artists"
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    HStack {
                        Text(titleText)
                            .font(.custom(ArtAppFonts.t1.name, size: 24).weight(.semibold))
                            .padding(.leading, 25)
                        Spacer()
                        Button(action: {}) {
                            Image(buttonOption.add.rawValue)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                        }
                        .padding(.trailing, 45)
                    }
                    .padding(.top, 20)

                    HStack {
                        Button(action: {}) {
                            Image(buttonOption.search.rawValue)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                                .padding(.leading, 16)
                        }

                        TextField("Search", text: $searchText)
                            .font(.custom(ArtAppFonts.s2.name, size: ArtAppFonts.s2.size).weight(.medium))
                            .padding(.leading, 24)
                    }
                    .frame(width: 336, height: 56)
                    .background(.search)
                    .foregroundColor(.mainGray)
                    .cornerRadius(12)
                    .shadow(radius: 0.5)
                    .padding(.top, 15)
                    .padding(.trailing,20)

                    ScrollView(showsIndicators: false) {
                        VStack(spacing: 16){
                            ForEach(ArtistSearchHelper.search(artists: Author.all.artists, searchText: searchText), id: \.name) { author in
                                NavigationLink(destination: AuthorDetailView(artist: author)) {
                                    HStack {
                                        Image(author.image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 96, height: 96)
                                            .cornerRadius(12)
                                            .clipped()

                                        VStack(alignment: .leading) {
                                            Text(author.name)
                                                .font(.custom(ArtAppFonts.s1.name, size: ArtAppFonts.s1.size))
                                                .foregroundColor(.mainGray)
                                                .frame(width: 224, alignment: .leading)
                                                .padding(.bottom, 10)

                                            Text(author.bio)
                                                .font(.custom(ArtAppFonts.s1.name, size: 16).weight(.semibold))
                                                .foregroundColor(.black)
                                                .frame(width: 223, height: 48, alignment: .leading)
                                                .offset(y:-12)
                                        }
                                        
                                    }
                                    .padding(.trailing,30)
                                }
                            }
                        }
                        .padding(.top, 20)
                    }
                }
            }
        }
    }
    
}

#Preview {
    MainView()
}

