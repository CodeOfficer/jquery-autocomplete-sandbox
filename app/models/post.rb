class Post < ActiveRecord::Base

	JSON_ATTRS = ['title', 'body']

	def as_json(options = nil)
		attributes.slice(*JSON_ATTRS).merge(:label => title, :value => id)
	end

end
