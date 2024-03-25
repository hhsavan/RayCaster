# Compiler
CC = g++

# Compiler flags for debugging and warnings
CFLAGS = -g -Wall -pedantic-errors -std=c++11	#c++20 de olabilir

# Source directory
SRC_DIR = src

# Object files (automatically generated based on source files)
OBJS := $(SRC_DIR)/*.o  # Pattern to match all .o files in src

# Main executable
TARGET = main

# Dependencies (source files)
DEPS = $(SRC_DIR)/main.cpp #$(SRC_DIR)/helper.cpp

# Build rule: compile source files into object files
$(OBJS): $(DEPS)
	$(CC) $(CFLAGS) -c $(DEPS) -o $@  # Compile each source file to its corresponding object file

# Link rule: create the final executable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@  # Link object files into the final executable

# Clean rule: remove the executable and object files
clean:
	rm -rf $(TARGET) $(OBJS)  # Remove both the executable and object files

# Phony target for "all"
all: $(TARGET)  # Build the executable
	./main  # Run the program after build	çalıştırmak için make all, compile için make