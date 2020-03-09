TARGET=hello
SRCS=main.cpp
OBJS=$(patsubst %.cpp,%.o,$(SRCS))

all: $(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)

$(TARGET): $(OBJS)
	g++ -o $@ $<

%.o: %.cpp
	g++ -c $< -o $@
