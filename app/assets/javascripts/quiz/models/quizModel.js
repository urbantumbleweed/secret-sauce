var quizApp = quizApp || {}

quizApp.Quiz = Backbone.Model.extend({
	
	defaults: {
		title: '',
		subtitle: '',
		questions: [],
		score: 0,
		possibleScore: 0,
		currentQuestion: 0, 
		message: function(){
			percent = this.score/this.possibleScore*100;
			if (percent > 70){
				return 'Nicely done.'
			} else if (percent > 50){
				return 'Alright. Study up, though.'
			} else {
				return 'WTF - try again.'
			}
		}
	},
	
	
	incrementScores: function(score, possibleScore){
		this.set('score', (this.get('score') + score ));
		this.set('possibleScore', (this.get('possibleScore') + possibleScore ));
		this.trigger('change');
	}
	
	
});