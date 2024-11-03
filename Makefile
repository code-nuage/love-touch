FLAGS = -r
TARGET = love-touch
SRCS = .

all: clean
	zip $(FLAGS) $(TARGET) $(SRCS)
	mv $(TARGET).zip $(TARGET).love

clean:
	rm -f $(TARGET).love

re: clean all