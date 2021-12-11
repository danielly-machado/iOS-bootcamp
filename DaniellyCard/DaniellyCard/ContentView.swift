//
//  ContentView.swift
//  DaniellyCard
//
//  Created by Lidiomar Fernando dos Santos Machado on 10/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		ZStack {
			Color(red: 0.33, green: 0.52, blue: 0.67, opacity: 1.00)
				.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
			VStack {
				
				Image("Danielly")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 150, height: 150)
					.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
					.overlay(
						Circle().stroke(Color.white, lineWidth: 5)
					)

				Text("Danielly Machado")
					.font(Font.custom("Pacifico-Regular", size: 40))
					.bold()
					.foregroundColor(.white)
				Text("iOS Developer")
					.foregroundColor(.white)
					.font(Font.custom("Monteserrat-Regular", size: 25))
				Divider()
				InfoView(text: "+55 47 9 9698-6587", imageName: "phone.fill")
				InfoView(text: "danielly.machado@gmail.com", imageName: "mail.fill")
			}
			

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
	
}


