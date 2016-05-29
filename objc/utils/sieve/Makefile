CC=gcc
FLAGS=-std=c99 -lobjc -framework Foundation -Wall
SOURCE=sieve
all:
	cp $(SOURCE).m $(SOURCE).m.bkp
	$(CC) $(FLAGS) -o $(SOURCE) $(SOURCE).m 
	./$(SOURCE) -limit 1000
clean:
	rm $(SOURCE)
