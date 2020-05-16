//
//  FinalView.swift
//  Simple Quiz Game
//
//  Created by Alberto Panzera on 16/05/2020.
//  Copyright © 2020 Alberto Panzera. All rights reserved.
//


import SwiftUI


struct FinalView : View {
    
    var score : Int
    var body: some View {
        
        VStack{
            
            Text("Final Score : \(score)")
            .onAppear(){
                SaveScore(quiz: "myQuiz1", score: self.score)
            }
            
            
        }
        
    }
    
    
}
