CC = gcc
CFLAGS = -Wall -g3 -O2 -Iinclude
TARGET = bin/final

SRC = $(wildcard src/*.c)
OBJS = $(patsubst src/%.c, obj/%.o, $(SRC))

$(TARGET): $(OBJS)
	@mkdir -p bin # Ensure bin directory exists
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS) # Link object files to create the final executable

obj/%.o: src/%.c
	@mkdir -p obj # Ensure obj directory exists
	$(CC) $(CFLAGS) -c $< -o $@ # Compile source files to object files
	# $< is the first prerequisite (source file) .c files
	# $@ is the target (object file) .o files
	# -c tells the compiler to compile only, not link
	# -o specifies the output file

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)
