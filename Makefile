TARGET=main

all: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET).o $(TARGET)

main: $(TARGET).o
	g++ -o $(TARGET) $(TARGET).o

%.o: %.cpp
	g++ -c $< -o $@
