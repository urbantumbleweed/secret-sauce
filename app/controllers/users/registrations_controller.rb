class Users::RegistrationsController < Devise::RegistrationsController

	def new
			@positions = Position.all 
			@schools = School.order("lower(name)").all
			super
	end

	def edit
			@positions = Position.all 
			@schools = School.order("lower(name)").all
			super
	end

	def create
		@positions = Position.all 
		@schools = School.order("lower(name)").all
		super
		Status.create(user: @user, position_id: params['position_id'])
	end

	def update
		@positions = Position.all 
		@schools = School.order("lower(name)").all
		super
		Status.create(user: @user, position_id: params['position_id'])
	end

  private

  def sign_up_params
    allow = [:email, :first_name, :last_name, :password, :password_confirmation, :phone_number, :school_id, :user_id, ]
    params.require(:user).permit(allow)
  end

end