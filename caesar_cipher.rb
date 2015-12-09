
def caesar_cipher(string="", shift=3)
	encoded = ""
		string.each_byte { |x|
			if x.between?('A'.ord, 'Z'.ord)
				encoded += ((x - 'A'.ord + shift) % 26 + 'A'.ord).chr
			elsif x.between?('a'.ord, 'z'.ord)
				encoded += ((x - 'a'.ord + shift) % 26 + 'a'.ord).chr
			else
				encoded += x.chr
			end
		}
	puts encoded
end

puts "enter phrase pls: "
text = gets.chomp

puts "enter shift factor (default=3): "
shift = gets.chomp

caesar_cipher(text, shift.to_i)