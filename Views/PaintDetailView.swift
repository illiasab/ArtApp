//
//  PaintDetail.swift
//  ArtApp
//
//  Created by Ylyas Abdywahytow on 1/29/25.
//

import SwiftUI

import SwiftUI

struct PaintDetailView: View {
    let work: Work
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack{
        VStack {
            VStack {
                Image(work.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 450, height:380)
                    .clipped()
                
                    .overlay {
                        Button(action: {
                            dismiss()
                        }) {
                            Image(buttonOption.back.rawValue)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                        }
                        .padding(.bottom, 200)
                        .padding(.trailing, 320)
                    }
                ScrollView(showsIndicators: false){
                    VStack(alignment: .leading) {
                        HStack {
                            Text(work.title)
                                .frame(width:335, height:28)
                                .font(.custom(ArtAppFonts.i1.name, size: 20).weight(.bold))
                            
                        }
                        .padding(.top, 20)
                        
                        
                        HStack {
                            Text(work.info)
                                .font(.custom(ArtAppFonts.i1.name, size: 16))
                                .foregroundColor(.darkerGray)
                                .lineLimit(9)
                        }
                        .padding(.top, 10)
                        .padding(.horizontal,10)
                        
                        NavigationLink(destination: PaintVisionView(work: work)) {
//                            Button(action:{
                               
                                
//                            })
//                            {
                                HStack{
                                    Text("Развернуть")
                                        .foregroundColor(.white)
                                }
                                .frame(width:335, height:46)
                                .background(.black)
                                .padding(.leading,30)
                                .padding(.top,180)
                                
//                            }
                        }
                    }
                    Spacer()
                }
                
            }
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarBackButtonHidden(true)
    }
    }
}

#Preview {
    PaintDetailView(work: Work(title: "Work Title", image: "Leonardo3", info: "Vincent van Gogh was a Dutch post-impressionist painter, renowned for his bold, expressive brushwork and vibrant use of color. Born on March 30, 1853, in the Netherlands, he produced over 2,100 artworks, including around 860 oil paintings, during his lifetime. His most famous works, such as Starry Night and Sunflowers, showcase his emotional intensity and unique style. Van Gogh's life was marked by mental illness, and he spent time in psychiatric hospitals, where he painted some of his most iconic pieces. Despite struggling with poverty and lack of recognition during his lifetime, his work has since become among the most influential in Western art. He passed away on July 29, 1890, at the age of 37, but his legacy continues to inspire artists and art lovers worldwide."))
}



struct PaintVisionView: View{
    let work: Work
    @Environment(\.dismiss) var dismiss
    var body: some View{
        VStack{
            Image(work.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 543,height: 373.58)
                .rotationEffect(Angle(degrees: -90))
            
            
            Button(action:{
                dismiss()
            })
            {
                Image(buttonOption.close.rawValue)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .padding(.top,27 * 10)
                    .padding(.leading,30 * 10)
            }
        }
        .navigationBarBackButtonHidden(true)
        
    }
}
