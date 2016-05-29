CC=gcc
FLAGS=-std=c99 -lobjc -framework Foundation -Wall
SOURCE=P3_naive
all:
	cp $(SOURCE).m $(SOURCE).m.bkp
	$(CC) $(FLAGS) -o $(SOURCE) $(SOURCE).m 
	./$(SOURCE) -limit 10
clean:
	rm $(SOURCE)
