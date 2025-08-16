EXEC = myfirst_C_program

CC = gcc

CFLAGS = -Wall -Wextra -pedantic

SRCS = myfirst_C_program.c

OBJS = $(SRCS:.c=.o)

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -O $(EXEC)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(EXEC)

clean-obj:
	rm -f $(OBJS)