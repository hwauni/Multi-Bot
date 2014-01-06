CC= cc
CTAGS= -Wall
TARGET=multi_bot

all:$(TARGET) 

$(TARGET): attack.c
	$(CC) $(CTAGS) $< -o $@

clean:
	rm -rf $(TARGET)
