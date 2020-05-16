//
//  QuizView.swift
//  Simple Quiz Game
//
//  Created by Alberto Panzera on 16/05/2020.
//  Copyright © 2020 Alberto Panzera. All rights reserved.
//


import SwiftUI


//view for the quiz game
struct Quiz1 : View {
    
    //number of question
    @State var i : Int = 0
    
    //var for the score
    @State var score = 0
    
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            
            //if i < of questions --> play question
            if(self.i < myQuiz1.count){
                
                
                //image of the question
                Image(myQuiz1[self.i].img!)
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal)
                
                //text of the question
                Text(myQuiz1[self.i].text!)
                
                
                //answer 0
                Button(action:{
                    self.buttonAction(n: 0)
                },label: {
                    Text(myQuiz1[self.i].answer[0])
                })
                
                
                //answer 1
                Button(action:{
                    self.buttonAction(n: 1)
                },label: {
                    Text(myQuiz1[self.i].answer[1])
                })
                
                
                //answer 2
                Button(action:{
                    self.buttonAction(n: 2)
                },label: {
                    Text(myQuiz1[self.i].answer[2])
                })
                
                //answer 3
                Button(action:{
                    self.buttonAction(n: 3)
                },label: {
                    Text(myQuiz1[self.i].answer[3])
                })

            }
                
                
            //after last question --> show final view with score
            else{
                FinalView(score : self.score)
            }
            
            
        }
    }
    
    
    //action of the buttons
    //n = answer [0,1,2,3]
    func buttonAction( n : Int){
        //if answer is correct increment score
        if(myQuiz1[self.i].correct == n){
            self.score = self.score + 1
        }
        //GO TO NEXT QUESTION
        self.i = self.i + 1
    }
    
    
}
