//
//  EntryScreenView.swift
//  lovespace
//
//  Created by Hallucinate Labs on 28/06/24.
//

import SwiftUI

struct EntryScreenView: View {
    
    
    @State private var isAccountSheetOpen: Bool = false;
    
    var body: some View {
        
        ZStack{
            
            Image("EntryScreenViewBg")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                
            Rectangle()
                .ignoresSafeArea()
                .opacity(0.4)
            
            VStack{
                VStack(alignment:.leading, spacing: 0){
                    Text("For the love \nthat deserves \nto be shared.")
                        .font(Font.custom("PlayfairDisplay-Regular", size: 40))
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom)
                        .foregroundColor(.white)
                                       
                    Text("Celebrate the beauty of\ntogetherness.")
                        .font(Font.custom("PlayfairDisplay-Regular", size: 18))
                        .multilineTextAlignment(.leading)
                        .padding(.bottom)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                    
                    Button{
                        
                        // MARK: - OPENS SHEET - CREATE ACCOUNT OR LOGIN PAGE
                        
                        isAccountSheetOpen.toggle()
                        
                    }label: {
                        Text("Get Started")
                            .font(.custom("PlayfairDisplay-Regular", size: 20))
                            .bold()
                        Image(systemName: "heart")
                    }
                    .padding()
                    .frame(width: 200, height: 55)
                    .foregroundColor(.white)
                    .background(.pink)
                    .cornerRadius(8)
                    .sheet(isPresented: $isAccountSheetOpen, content: {
                        AccountCreationOrLogInViewView()
                            .presentationDragIndicator(.visible)
                    })
                    
                }
                .position(x: 210, y: 570)
                

            }
            
            
        }
        
        
    }
}

#Preview {
    EntryScreenView()
}
