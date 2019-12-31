
all: main
	./main

clean:
	rm -f main.o main

main: main.o
	g++ -o main main.o

main.o: main.cpp
	g++ -c main.cpp
