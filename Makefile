CC = g++
CFLAGS = -Wall -g
LIB_NAME = libcalculator.a
EXE_NAME = calculator_app

all: $(EXE_NAME)

$(EXE_NAME): main.o $(LIB_NAME)
	$(CC) $(CFLAGS) -o $@ $^

$(LIB_NAME): calculator.o
	ar rcs $@ $^

%.o: %.cpp
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f *.o $(LIB_NAME) $(EXE_NAME)
