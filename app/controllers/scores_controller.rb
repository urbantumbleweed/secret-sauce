class ScoresController < ApplicationController

  def create
    respond_to do |format|
      format.html {}
      format.json do
        page = Page.find_by_shortname( params[:page_shortname] )
        score = Score.find_by( user_id: params[:user_id], page_id: page.id ) 
        if score
          score.correct = params[:correct]
          score.save
        else
          score = Score.create(
            user_id: params[:user_id], 
            page_id: page.id, 
            correct: params[:correct],
            total:   params[:total]
          )
        end
        render :json => score.to_json
      end
    end

  end


end
