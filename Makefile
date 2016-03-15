#MACROS
DEBUG = -g
CC = gcc
CFLAGS = $(DEBUG)

AS = as
ASFLAGS = $(DEBUG)

LFLAGS = $(DEBUG)

RM = /bin/rm
RMFLAGS = -f

OBJS = 	main.c

EXE = battleship
BACKUPS = *~

#Rules
$(EXE): $(OBJS)
		$(CC) $(LFLAGS) -o $@ $(OBJS)

# Assemble any .c file into the object file
.c.o:
		$(CC) $(LFLAGS) -o $@ $<

zipfile:
		mkdir $(USER)
		cp *.s Makefile README $(USER)
		zip -r $(USER) $(USER)

clean: 
		$(RM) $(RMFLAGS) $(OBJS) $(EXE)

distclean:
		$(RM) $(RMFLAGS) $(OBJS) $(EXE) $(BACKUPS)

# make --> create entire new project
# make make.o --> create make.o from make.s
# make clean --> call clean target in Makefile
# make zipfile --> build zipfile
# make -n --> display all commands are going to execute, but would not execute them