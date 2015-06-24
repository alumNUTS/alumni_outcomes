class Survey < ActiveRecord::Base

	def web_dev_type_sym
		case self[:web_dev_type]
			when 1 then :full_stack
			when 2 then :front_end
			when 3 then :back_end
		end
	end

	def position_type_sym
		case self[:position_type]
			when 1 then :full_time
			when 2 then :temp_to_perm
			when 3 then :freelance
		end	
	end

	def enough_preparation_sym
		case self[:enough_preparation]
			when 1 then :disagree
			when 2 then :somewhat_disagree
			when 3 then :neutral
			when 4 then :somewhat_agree
			when 5 then :agree
		end	
	end

	def officer_effectiveness_sym
		case self[:officer_effectiveness]
			when 1 then :ineffective
			when 2 then :somewhat_ineffective
			when 3 then :stellar
		end	
	end

end
