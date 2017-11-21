@songs = []
@artists = []

def intro
	#introduction
	puts "Welcome to Song Search 101!"
	puts "You can add or delete songs or artists from your library."
end

def q_one
	#decide your fate ㅋㅋㅋ
	puts "Your Songs: #{@songs}||Your Artists: #{@artists}"
	puts "Want to edit your song list or artist list? (y/n)"
	choice = gets.chomp
	if choice == "y"
		decision
	else
		exit
	end
end

def decision
	puts "Type song or artist"
	@decision = gets.chomp
	decide
end

def decide
	#TODO: if else for adding or deleting artists or songs in the arrays
	if @decision == "song"
		song
	else
		artist
	end
end

def song
	#TODO: pushes song array, asks to edit
	puts "Your Songs: #{@songs}"
	puts "Would you like to add or delete?"
	a_d = gets.chomp
	if a_d == "add"
		add_s
	else
		delete_s
	end
end

def add_s
	#TODO: asks to specifically add song
	puts "What songs would you like to add?"
	add = gets.chomp
	@songs.push add
	puts "Your Songs: #{@songs}"
	edit_more_s
end

def delete_s
	#TODO: asks to specifically add song
	puts "What songs would you like to delete?"
	delete = gets.chomp
	@songs.delete delete
	puts "Your Songs: #{@songs}"
	edit_more_s
end

def edit_more_s
	puts "Would you like to edit more? (y/n)"
	edit = gets.chomp
	if edit == "y"
		song
	else
		q_one
	end
end

def artist
	puts "Your Artists: #{@artists}"
	puts "Would you like to add or delete?"
	a_d = gets.chomp
	if a_d == "add"
		add_a
	else
		delete_a
	end
end

def add_a
	#TODO: asks to specifically add song
	puts "What artists would you like to add?"
	add = gets.chomp
	@artists.push add
	puts "Your Artists: #{@artists}"
	edit_more_a
end

def delete_a
	#TODO: asks to specifically add song
	puts "What artists would you like to delete?"
	delete = gets.chomp
	@artists.delete delete
	puts "Your Artists: #{@songs}"
	edit_more_a
end

def edit_more_a
	puts "Would you like to edit more? (y/n)"
	edit = gets.chomp
	if edit == "y"
		artist
	else
		q_one
	end
end