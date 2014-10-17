class Complex

	attr_reader :Re, :Im
	def initialize(Re, Im)
		@Re, @Im = Re, Im
	end
	def to_s
		"(#{@Re}+#{@Im}i)"
	end
	def + (complejo)

		Complex.new(complejo.Re + @Re , complejo.Im + @Im)
	end
	def * (complejo)

		Complex.new(complejo.Re * @Re - complejo.Im * @Im , complejo.Re * @Im + complejo.Im * @Re)
	end
	def / (complejo)

		Complex.new((complejo.Re * @Re + complejo.Im * @Im) / (@Im**2 + @Re**2) , (complejo.Im * @Re + complejo.Re * @Im) / (@Im**2 + @Re**2))
	end
	def *(num)

		Complex.new( num * @Re , num * @Im)

	end
end
		



		