class PageController < ApplicationController

	def home
		@languages = ProgrammingLanguage.all
		@tasks = ProgrammingTask.order('created_at DESC').limit(5)
		@leaders = User.joins(:programs).group(:user_id).select('users.*, COUNT(*) as submissions').limit(5)
	end

	def about
	end

	def contact
	end

end
