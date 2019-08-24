class EmailValidator < ActiveModel::Validator
	# validate the value to be an email pattern
	# https://guides.rubyonrails.org/active_record_validations.html

	def validate_each(record, attribute, value)
    	unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    		record.errors[attribute] << (options[:message] || "is not an email")
    	end
  	end
end