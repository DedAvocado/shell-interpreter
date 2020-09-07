MKDIR   := md
RMDIR   := rm
CC      := gcc
BIN     := ./bin
OBJ     := ./obj
SRC     := ./interpreter
SRCS    := $(wildcard $(SRC)/*.c)
OBJS    := $(patsubst $(SRC)/%.c,$(OBJ)/%.o,$(SRCS))
OUT     := $(BIN)/interpreter
CFLAGS  := -Wall

all: $(OUT)

$(OUT): $(OBJS) | $(BIN)
	$(CC) $^ -o $@

$(OBJ)/%.o: $(SRC)/%.c | $(OBJ)
	$(CC) $(CFLAGS) -c $< -o $@

$(BIN) $(OBJ):
	$(MKDIR) $@

run: $(OUT)
	$<

clean:
	$(RMDIR) $(OBJ)/* $(BIN)/*
