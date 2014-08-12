##
# Part 1:
# Using a max number of 1 inch bricks (max_1_inch_bricks) and a max number of 5 
# inch bricks (max_5_inch_bricks), can you make a row of bricks that is so many 
# inches long (row_length)? You may use any number of 1 inch and 5 inch bricks,
# but no more than you are given. 
#
# Define: make_row?(max_1_inch_bricks, max_5_inch_bricks, row_length)
#
# Example:
# > make_row?(3, 1, 8)
# True
# > make_row?(3, 1, 9)
# False
# > make_row?(3, 2, 10)
# True
# > make_row?(3, 2, 11)
# True
#
# Part 2:
# Print the number of 2 inch and 5 inch bricks it takes to make a row of 
# bricks that is a given length. Use as many 5 inch bricks as possible. 
# If the length of the row is not possible to make, say "Not possible." 
#
# Define: how_many_bricks (row_length)
#
# Example:
# > how_many_bricks(12) 
# "It takes 1, 2 inch brick(s) and 2, 5 inch brick(s) to make a row 12 inch(es) long."
# > how_many_bricks(13) 
# "It takes 4, 2 inch brick(s) and 1, 5 inch brick(s) to make a row 13 inch(es) long."
# > how_many_bricks(3)
# "Not possible." 
##

def make_row?
	# Get all variables
	puts 'Max number of 1 inch bricks?'
	# TODO: Make sure user types a number
	max_1_inch_bricks = gets.chomp.to_i
	puts 'Max number of 5 inch bricks?'
	max_5_inch_bricks = gets.chomp.to_i
	puts 'Row length?'
	row_length = gets.chomp.to_i

	if max_5_inch_bricks * 5 >= row_length
		if (row_length % 5) <= max_1_inch_bricks
			puts 'true'
		else
			puts 'false'
		end
	elsif max_5_inch_bricks * 5 < row_length
		if max_5_inch_bricks * 5 + max_1_inch_bricks >= row_length
			puts "true"
		else
			puts "false"
		end
	else
		puts "May not be true"
	end

end

# make_row?

def how_many_bricks
	puts 'Row length?'
	# TODO: make sure user types a number
	row_length = gets.chomp.to_i
	# If row length is an odd number we need an odd number of 5 inch bricks
	if row_length % 2 == 0 
		if row_length % 5 == 0
			max_5_inch_bricks = row_length / 5
			max_2_inch_bricks = 0
		else
			max_5_inch_bricks = (row_length - (row_length % 5)) / 5
			max_2_inch_bricks = (row_length % 5) / 2
		end
	# If row length is an even number we need max 5 inch bricks
	else
		if row_length % 5 == 0
			max_5_inch_bricks = row_length / 5
			max_2_inch_bricks = 0
		elsif (row_length % 5) % 2 == 0
			max_5_inch_bricks = (row_length - (row_length % 5)) / 5
			max_2_inch_bricks = (row_length % 5) / 2
		else 
			max_5_inch_bricks = (row_length - (row_length % 5) - 5) / 5
			max_2_inch_bricks = ((row_length % 5) + 5) / 2
		end
	end

	puts "It takes #{max_2_inch_bricks}, 2 inch brick(s) and " +
				"#{max_5_inch_bricks}, 5 inch brick(s) to make a row " +
				"#{row_length} inch(es) long."
end

how_many_bricks