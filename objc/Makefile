CC=gcc
FLAGS=-std=c99 -lobjc -framework Foundation -Wall
SOURCE=#source file #source file #source file #source file #source file goes here
all:
	cp $(SOURCE).m $(SOURCE).m.bkp
	$(CC) $(FLAGS) -o $(SOURCE) $(SOURCE).m 
	./$(SOURCE)
clean:
	rm $(SOURCE)
