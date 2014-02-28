var quizApp = quizApp || {}

quizApp.MultiQuestionView = Backbone.View.extend({
	tagName: 'div',
	template: Handlebars.compile($("#multiQuestionTemplate").html()),
	
	initialize: function(){
		
	},
	
	events: {
		'click .checkResults': 'checkResults',
		'click .nextQuestion': 'nextQuestion'
	},
	
	render: function(){
		console.log(this.model.toJSON())
		this.$el.append(this.template(this.model.toJSON()));
		return this;
	},
	
	checkResults: function(){
		var selected = this.$el.find('input:radio:checked').val();
		var score = (selected === this.model.get('answer') ? 1 : 0);
		this.model.set({
			score: score,
			possibleScore: 1
		});
		
		this.$el.find('.questionCtn').remove();
		this.$el.find('.status').html(score === 1 ? 'Correct!' : 'Incorrect!');
		this.$el.find('.answerCtn').fadeIn();
		
		this.$el.find('.buttons button').each(function(){
			$(this).toggle();
		});
	},
	
	nextQuestion: function(){
		this.trigger('nextQuestion');
	},
	
	//use instead of remove() because it empties $el instead of removing it.
	close: function(){
		this.unbind();
		this.undelegateEvents();
		this.stopListening();
		this.$el.empty();
	},
	
});