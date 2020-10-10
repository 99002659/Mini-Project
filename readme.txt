Question
Badminton Academy Problem
Gopichand academy recently started allowing a group of 3 people to play badminton at
their courts. The group should consist of 2 players who play against each other and a
referee to manage the match. Whenever a new player/referee enters the academy,
he/she waits until he/she gets a chance to meet the organizer. Whenever the organizer
is free, he waits until a group of 2 players and a referee can be formed among the
unassigned people he met and then the newly formed group enters the court. Then the
players warm up for the game and in the meantime referee adjusts the equipment
necessary to manage the game. Once all the three are ready, the game is started by
the referee. Organizer waits till the game is started and once it is started he is free and
again starts meeting new players/referees entering the academy.
● Players invoke the following functions in order: enterAcademy, meetOrganizer,
enterCourt, warmUp
● Referees invoke the following functions in order: enterAcademy,
meetOrganizer, enterCourt, adjustEquipment, startGame
Write code that enforces the above with appropriate print statements for each of the
above actions.
Input: an integer n indicating 2*n players and n referees will arrive at the academy in
total. Use sleep(1) for warmUp and sleep(0.5) for adjustEquipment actions. Make the
new person arrive with a random, modulo 3 second delay and probability that he is a
player/referee depends on the remaining number of players/referees that will be coming
and each person is a thread




Running the code:
gcc -lpthread task1.c
Then input one number:n
2*n players will be totally picked
n referees

1) I have assumed that if a player has a probability > 0.5 of being picked then I pick a player else a referee.
2) I have also assumed that the number of courts are infinity.
3) I have changed it from 0.5 sleep time to 1 because I had difficulty in compiling it.
Use of mutexes

I have 3 mutexes. One for the count of the referees yet to meet the organiser. One for the count of the players yet to meet the organiser.
One for the organiser himself.
The players and referees enter. Until a group is formed, the organiser is not bothered. Once a group is formed we check if the
organiser is free or not (determined by the organiser mutex).We wait till the organiser is free. Once the organiser is free the group takes that
organiser(locks the organiser mutex) and enters the court. The players warmUp (player thread is now created) and referee adjusts the equipment.
Once this is done (find out using thread_join) you leave the organiser (unlock mutex) and start the game.
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/f53ddc857dce40709617f1048dc8999b)](https://www.codacy.com/gh/99002659/Mini-Project/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=99002659/Mini-Project&amp;utm_campaign=Badge_Grade)
