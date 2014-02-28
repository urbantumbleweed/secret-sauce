var quizApp = quizApp || {}

quizApp.AnswerView = Backbone.View.extend({ 
	
	tagName: 'ul',
	template: Handlebars.compile($("#answerTemplate").html()),
	
	render: function(){
		this.$el.append(this.template(this.model.toJSON()));
		return this;
	}

});