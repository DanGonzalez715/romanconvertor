def fromRoman(romanNumber)
    if romanNumber != romanNumber.upcase
		raise TypeError
	end
	nums = romanNumber.split('')
	result = 0
	numI = 1
	numIV = 4
	numV = 5
	numIX = 9
	numX = 10
	numXL = 40
	numL = 50
	numXC = 90
	numC = 100
	numCD = 400
	numD = 500
	numCM = 900
	numM = 1000

	i = 0
	while i < nums.length
		if nums[i] == 'I'
			if nums[i+1] == 'V'
				result += numIV
				i += 2
			elsif nums[i+1] == 'X'
				result += numIX
				i += 2
			else
				result += numI
				i += 1
			end
		elsif nums[i] == 'V'
			result += numV
			i += 1
		elsif nums[i] == 'X'
			if nums[i+1] == 'L'
				result += numXL
				i += 2
			elsif nums[i+1] == 'C'
				result += numXC
				i += 2
			else
				result += numX
				i += 1
			end
		elsif nums[i] == 'L'
			result += numL
			i += 1
		elsif nums[i] == 'C'
			if nums[i+1] == 'D'
				result += numCD
				i += 2
			elsif nums[i+1] == 'M'
				result += numCM
				i += 2
			else
				result += numC
				i += 1
			end
		elsif nums[i] == 'D'
			result += numD
			i += 1
		elsif nums[i] == 'M'
			result += numM
			i += 1
		end
	end

	return result

    raise NotImplementedError
end

def toRoman(arabicNumber)
    if arabicNumber <= 0 or arabicNumber >= 4000
		raise RangeError
	end

	romanNum = ''

	while arabicNumber > 0
		if arabicNumber >= 1000
			romanNum << 'M'
			arabicNumber = arabicNumber - 1000
		elsif arabicNumber >= 900
			romanNum << 'CM'
			arabicNumber = arabicNumber - 900
		elsif arabicNumber >= 500
			romanNum << 'D'
			arabicNumber = arabicNumber - 500
		elsif arabicNumber >= 400
			romanNum << 'CD'
			arabicNumber = arabicNumber - 400
		elsif arabicNumber >= 100
			romanNum << 'C'
			arabicNumber = arabicNumber - 100
		elsif arabicNumber >= 90
			romanNum << 'XC'
			arabicNumber = arabicNumber - 90
		elsif arabicNumber >= 50
			romanNum << 'L'
			arabicNumber = arabicNumber - 50
		elsif arabicNumber >= 40
			romanNum << 'XL'
			arabicNumber = arabicNumber - 40
		elsif arabicNumber >= 10
			romanNum << 'X'
			arabicNumber = arabicNumber - 10
		elsif arabicNumber >= 9
			romanNum << 'IX'
			arabicNumber = arabicNumber - 9
		elsif arabicNumber >= 5
			romanNum << 'V'
			arabicNumber = arabicNumber - 5
		elsif arabicNumber >= 4
			romanNum << 'IV'
			arabicNumber = arabicNumber - 4
		elsif arabicNumber >= 1
			romanNum << 'I'
			arabicNumber = arabicNumber - 1
		end
	end

	return romanNum
    raise NotImplementedError
end