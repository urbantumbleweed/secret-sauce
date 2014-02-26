require 'roo'
require 'open-uri'
require 'json'


  xls = Roo::Spreadsheet.open("./quiz1.xlsx")

  quiz_data = {}
  quiz_data['title'] =  xls.cell(1,'B')
  quiz_data['subtitle'] =  xls.cell(2,'B')
  quiz_data['introText'] =  xls.cell(3,'B')


  # Questions Hash
  quiz_data['questions'] = []

  keys = ['question', 'answer', 'options']

  6.upto(xls.last_row) do |index|
    
    row = xls.row(index)

    options_array = []
    options_array.push( row[2] )
    options_array.push( row[3] )
    options_array.push( row[4] )
    options_array.push( row[5] )

    answer_letter = row[1]

    case answer_letter
    when 'A'
      answer = row[2]
    when 'B'
      answer = row[3]
    when 'C'
      answer = row[4]
    when 'D'
      answer = row[5]
    end

    row_hash = {
      'question' => row[0],
      'answer' => answer,
      'options' => options_array
    }

    quiz_data['questions'] << row_hash
  end


  File.open("quiz_data_1.js", 'w') { |file| file.write(
    "var quizApp = quizApp || {} \nvar fullQuizMulti = " + quiz_data.to_json + 
    "\nvar quiz = new quizApp.Quiz(fullQuizMulti);\nvar quizView = new quizApp.QuizView({model: quiz, el:$('#quiz')}); \nquizView.render();" 

  )}


