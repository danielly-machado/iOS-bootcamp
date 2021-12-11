//
//  InfoView.swift
//  DaniellyCard
//
//  Created by Danielly Alves Ribeiro Machado on 11/12/21.
//

import SwiftUI

struct InfoView: View {
	
	let text: String
	let imageName: String
	
	var body: some View {
		RoundedRectangle(cornerRadius: 25)
			.fill(Color.white)
			.frame(height: 50)
			.overlay(HStack {
				Image(systemName: imageName)
					.foregroundColor(Color(red: 0.33, green: 0.52, blue: 0.67, opacity: 1.00))
				Text(text)
					.font(Font.custom("Montserrat-Regular", size: 20))
					.foregroundColor(Color(red: 0.33, green: 0.52, blue: 0.67, opacity: 1.00))
			})
			.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
			
	}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
			.previewLayout(.sizeThatFits)
    }
}

}
