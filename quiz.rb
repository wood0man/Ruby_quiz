questions={"Q1" => "What's my name?","Q2" => "What's my hight" , "Q3" => "What's my favourite food?", "Q4" => "Where do I live?"}
answers={"Q1" => "Ziad", "Q2" => "174" , "Q3" =>"Pizza", "Q4" =>"Madinah"}

selectedQuestions=[]
selectedAnswers=[]
i=0
while i<2
index=rand(1..questions.length)
    check=questions["Q#{index}"]
    if(selectedQuestions.include?(check))
        next
    else
        selectedQuestions.push(check)
        selectedAnswers.push(answers["Q#{index}"])
    i+=1
    end 
end
score=0
selectedQuestions.each_with_index{|question, i|
    puts(question)
    print("What's your answer?  => ")
    answer=gets().chomp()
    if answer== selectedAnswers[i]
        score+=1;
    end
    
    }

    puts("your score is #{score} out of 2")