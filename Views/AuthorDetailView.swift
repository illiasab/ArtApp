//
//  AuthorDetailView.swift
//  ArtApp
//
//  Created by Ylyas Abdywahytow on 1/28/25.
//

import SwiftUI
import SwiftUI

struct AuthorDetailView: View {
    let artist: Artist
    var paintAuthor = "Author"
    var biography = "Biography"
    var paintWork = "Works"
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                ZStack(alignment: .topLeading) {
                    Image(artist.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 420, height: 390)
                        .clipped()
                        .overlay(
                            VStack {
                                HStack {
                                    Button(action: {
                                        dismiss()
                                    }) {
                                        Image(buttonOption.back.rawValue)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 28, height: 28)
                                    }
                                    Spacer()
                                        .padding(.top, 80)
                                }
                                .padding([.top, .leading], 10)

                                Spacer()

                                VStack(spacing: 5) {
                                    Text(artist.name)
                                        .font(.custom(ArtAppFonts.s2.name, size: 16).weight(.semibold))
                                        .foregroundColor(.white)

                                    Text(paintAuthor)
                                        .font(.custom(ArtAppFonts.s1.name, size: 14))
                                        .foregroundColor(.grayLight)
                                        .padding(.trailing, 70)
                                }
                                .padding(.bottom, 45)
                                .padding(.trailing, 250)
                            }
                            .padding()
                        )
                }

                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text(biography)
                            .font(.custom(ArtAppFonts.s2.name, size: ArtAppFonts.s2.size))
                            .foregroundColor(.primaryBlack)
            

                        Text(artist.bio)
                            .font(.custom(ArtAppFonts.s2.name, size: 16))
                            .foregroundColor(.darkerGray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(16)

                    HStack {
                        Text(paintWork)
                            .font(.custom(ArtAppFonts.sf.name, size: 18).weight(.bold))
                            .padding(.trailing, 31 * 10)
                    }

                    
                    ForEach(artist.works, id: \.title) { work in
                        VStack {
                           
                            NavigationLink(destination: PaintDetailView(work: work)) {
                                HStack{
                                    Image(work.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(maxWidth: 360, minHeight: 150, maxHeight: 150, alignment: .topLeading)
                                        .cornerRadius(11)
                                        .clipped()
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 11)
                                                .inset(by: -4)
                                                .stroke(Color.detailGreen, lineWidth: 1)
                                            
                                        )
                                    
                                    
                                }
                                
                                
                            }
                            
                            Text(work.title)
                                .font(.custom(ArtAppFonts.sf.name, size: 16))
                                .padding(.top, 3)
                                .padding(.trailing, 200)
                        }
                        .padding(.top, 20)
                    }
                }
            }
            .edgesIgnoringSafeArea(.top)
            .navigationBarBackButtonHidden(true)
        }
    }
}


#Preview {
    AuthorDetailView(artist: Author.all.artists[3])
}
