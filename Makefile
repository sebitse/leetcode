# Compiler
CXX = g++

# Flags
CXXFLAGS = -std=c++11 -Wall

# Source code
SRCS = main.cpp algo.cpp

# Object files
OBJS = $(SRCS:.cpp=.o)

# Executable name
EXEC = output

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CXX) $(OBJS) -o $@ 

# Rule to make the object files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Rule to clean files
clean:
	rm -f $(OBJS) $(EXEC)
	