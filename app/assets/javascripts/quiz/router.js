var quizApp = quizApp || {} 
quizApp.Router = Backbone.Router.extend({

  routes: {
    "photo/:position/:quiz_name"     :  "quiz",
    "editorial/:position/:quiz_name" :  "quiz",
    "" : "test"
  },

  quiz: function(position, quiz_name) {
    var quizData = quizApp.quizzes[quiz_name]
    var quiz = new quizApp.Quiz(quizData);
    var quizView = new quizApp.QuizView({model: quiz, el:$('#quiz')}); 
    quizView.render();
  }

});