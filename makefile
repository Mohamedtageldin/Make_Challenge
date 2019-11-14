CC = gcc_S
OBJ = main.o LCD.o DIO.o code.o
CLEAN_TARGET = $(LINK_TARGET) $(OBJ)
clean:
	-rm $(CLEAN_TARGET)
app.exe : $(OBJ)
	$(CC) $^ -o $@
main.o : main.c main.h LCD.h DIO.h code.h
	$(CC) -c $< -o $@
LCD.o : LCD.c LCD.h DIO.h code.h
	$(CC) -c $< -o $@
DIO.o : DIO.c DIO.h code.h
	$(CC) -c $< -o $@