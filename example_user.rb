class User
	attr_accessor :name, :email

	def init(atri = {})
		@name = atri[:name]
		@email = atri[:email]
	end

	def formatted_email
		"#{@name} <#{@email}>"
	end

end

