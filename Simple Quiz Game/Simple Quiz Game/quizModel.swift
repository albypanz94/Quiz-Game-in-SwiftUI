//
//  quizModel.swift
//  Simple Quiz Game
//
//  Created by Alberto Panzera on 16/05/2020.
//  Copyright © 2020 Alberto Panzera. All rights reserved.
//

import Foundation


//structure of single quiz
struct QuizModel  {
    var img : String?
    var text : String?
    var answer : [String]
    //specify what is the correct answer
    var correct : Int?
}

//NOTE : answer is an array , array start from 0, not from 1
   //if correct is the first answer , set --> correct = 0
   // if correct is the second answer , set --> correct = 1
   //...




//final quiz is an array of quizmodel
var myQuiz1 : [QuizModel] = [

    QuizModel(img: "img",
    text: "which of these is not an American city?",
    answer: ["New York","London","Boston","Washington"],
    correct: 1),
    
    QuizModel(img: "img",
    text: "what is the result of (2 + 6) * 3 ?",
    answer: ["24","11","20","3"],
    correct: 0),
    
    QuizModel(img: "img",
    text: "what is the first planet of solar system?",
    answer: ["mars","Hearth","Venus","Mercury"],
    correct: 3),
    
    QuizModel(img: "img",
    text: "this quiz app is developed in..",
    answer: ["Phyton","SwiftUI","C++","Java"],
    correct: 1),
    
    QuizModel(img: "img",
    text: "this si the last question.. ",
    answer: ["Answer 1","Answer 2","Answer 3","Answer 4"],
    correct: 1),

]



func SaveScore(quiz : String , score : Int){
    UserDefaults.standard.set(score, forKey: quiz)
}

func LoadScore (quiz : String) -> Int{
    return UserDefaults.standard.integer(forKey: quiz)
}
