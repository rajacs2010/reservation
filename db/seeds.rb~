#################################################################################
#										#
#   File			: seeds.rb					#
#   Project			: Reservation System				#
#										#
#   Revision History								#
#										#
#   Created Date		: 20/03/2013					#
#   Modified Date		: 20/03/2013					#
#   By				: Muthukrishnan					#
#   Designation			: Tech-Project Trainee				#
#										#
#################################################################################


   HintQuestion.delete_all
   State.delete_all
   TrainType.delete_all
   Seat.delete_all
   Cost.delete_all

   Cost.create([{first_ac: 6.80, second_ac: 5.20, third_ac: 3.85, chair_car: 2.40, sleeper: 1.74, sitting: 0.95}])
   HintQuestion.create(
			[{hint_question: 'Birth Place'},
			{hint_question: 'Favourite Book'},
			{hint_question: 'Pet Animal'},
			{hint_question: 'Favourite Movie'},
			{hint_question: 'Pet Name'},
			{hint_question: 'Like to Go in future'}])
   State.create([
		{state: 'Andhra Pradesh'},
		{state: 'Andaman & Nicobar'},
		{state: 'Arunachal Pradesh'},
		{state: 'Assam'},
		{state: 'Bihar'},
		{state: 'Chandigarh'},
		{state: 'Chhatisgarh'},
		{state: 'Delhi'},
		{state: 'Goa'},
		{state: 'Gujarat'},
		{state: 'Haryana'},
		{state: 'Himachal Pradesh'},
		{state: 'Jammu & Kashmir'},
		{state: 'Jharkhand'},
		{state: 'Karnataka'},
		{state: 'Kerala'},
		{state: 'Madhya Pradesh'},
		{state: 'Maharashtra'},
		{state: 'Manipur'},
		{state: 'Meghalaya'},
		{state: 'Mizoram'},
		{state: 'Nagaland'},
		{state: 'Orissa'},
		{state: 'Pondicherry'},
		{state: 'Punjab'},
		{state: 'Rajasthan'},
		{state: 'Sikkim'},
		{state: 'Tamil Nadu'},
		{state: 'Tripura'},
		{state: 'Uttar Pradesh'},
		{state: 'Uttaranchal'},
		{state: 'West Bengal'}])

    TrainType.create([{train_type: 'Super Fast'},{train_type: 'Express'},{train_type: 'Mail'}])
    Seat.create([{FAC: 24, SAC: 48, TAC: 64, CC: 80, SL: 72, SS: 80}])
