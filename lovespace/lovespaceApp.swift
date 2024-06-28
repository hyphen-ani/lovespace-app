//
//  lovespaceApp.swift
//  lovespace
//
//  Created by Hallucinate Labs on 28/06/24.
//

import SwiftUI

@main
struct lovespaceApp: App {
    
    init() {
        printFonts()
    }
    
    func printFonts(){
        let fontFamilyNames = UIFont.familyNames
        
        for familyName in fontFamilyNames {
            print("------------------")
            print("Font Family Name -> [\(familyName)]")
            let names = UIFont.fontNames(forFamilyName: familyName)
            print("Font Names -> [\(names)]")
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
