
var quizApp = quizApp || {}

quizApp.QuizView = Backbone.View.extend({
	
	tagName: 'div',
	template: Handlebars.compile($("#quizTemplate").html()),
	questionIndex: 0,
	questionCount: 0,
	
	events: {
		'click .startQuiz': 'startQuiz'
	},
	
	initialize: function(){
		
		
		//make 'this' available to _.each  iterator below
		var parent = this;
		
		// create a question collection.
		// get the questions array, and loop through it
		// assign the question's array index as its id
		// and add it to the collection
		// this.questions = new quizApp.QuestionCollection();
		// _.each(this.model.get('questions'), function(question, index){
		// 	question.id = index;
		// 	parent.questions.add(question);
		// 	parent.questionCount += 1;
		// });
		
		
	},
	
	render: function(){
		this.$el.append(this.template(this.model.toJSON()));	
		return this;
	},
	
	renderQuestion: function(){
		var questionData = this.model.get('questions')[this.questionIndex];
		var question = new quizApp.Question(questionData);
		this.currentQuestion = new quizApp.MultiQuestionView({
			model: question,
			el: this.$el.find('.question'),
		});	
		// this.currentQuestion.model.set('parentView', this);
		// this.currentQuestion.model.set('parentModel', this.model);
		this.currentQuestion.render();
		this.listenTo(this.currentQuestion.model, 'change', this.updateScore);
		this.listenTo(this.currentQuestion, 'nextQuestion', this.nextQuestion);
	},
	
	renderFinalScore: function(){
		this.$el.find('.scores').remove();
		var tmpl = Handlebars.compile($('#finalScoreTemplate').html());
		this.$el.find('.question').html(tmpl(this.model.toJSON()));
	},

	startQuiz: function(){
		this.$el.find('.intro').remove();
		this.renderQuestion();
	},
	
	updateScore: function(){
		this.model.incrementScores(
			this.currentQuestion.model.get('score'), 
			this.currentQuestion.model.get('possibleScore')
		);
		this.$el.find('#score').html(this.model.get('score'));
		this.$el.find('#possibleScore').html(this.model.get('possibleScore'));
	},
	
	nextQuestion: function(){
		this.questionIndex += 1;
		this.currentQuestion.close();
		if (this.questionIndex >= this.model.get('questions').length) {
			this.sync();
			this.renderFinalScore();
		} else {
			this.renderQuestion();
		}
		
	},

	sync: function(){
		var data = {}
		data['correct'] = this.model.get('score');
		data['total'] =	this.model.get('possibleScore');
		data['user_id'] = current_user.id;
		data['page_shortname'] = window.location.pathname.split('/')[3];

    $.ajax({
        url: '/scores',
        dataType: 'json',
        method: 'post',
        data: data
    })
    .success(function(data){
        console.log('quiz score has been synced');
    });
  }
	
});



