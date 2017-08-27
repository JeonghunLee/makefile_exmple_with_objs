include Rule.make

## for CROSS COMPILE 
DEF_INC := $(shell $(CROSS_COMPILE)gcc  -print-file-name=include)

## now Sub directory 
DEF_INC_PATH = -I. -Isub1 -Isub2 


TARGET = MainTest

CFLAGS += $(DEF_INC) $(DEF_INC_PATH) 

####
#### define All of the Sources 

SUB1SRC= 	sub1/sub1_1.c\
		sub1/sub1_2.c

SUB1OBJ=  $(SUB1SRC:.c=.o)

SUB2SRC=	sub2/sub2_1.c\
		sub2/sub2_2.c

SUB2OBJ=  $(SUB2SRC:.c=.o)

TSTSRC=		tst1.c\
		tst2.c

TSTOBJ=  $(TSTSRC:.c=.o)

MAINSRC= MainTest.c
MAINOBJ= $(MAINSRC:.c=.o)


####
#### define ALLSRCS/ALLOBJS 

ALLSRCS=  $(SUB1SRC) $(SUB2SRC) $(TSTSRC) $(MAINSRC)

ALLOBJS=  $(SUB1OBJ) $(SUB2OBJ) $(TSTOBJ) $(MAINOBJ)

##
## define Pattern 
			
.c.o:
	$(CC) $(CFLAGS) $(LDFLAGS) -c $< -o $@
	

all: $(TARGET)


$(TARGET): $(ALLOBJS)
	$(CC) $(LDFLAGS) $(ALLOBJS)  -o $@	


install: $(TARGET)
	install -d $(DESTDIR)
	install $(TARGET) $(DESTDIR)


clean: 
	@echo "Cleaning up.!!! OBJS.."
	@rm -rf $(ALLOBJS)
	@rm -rf $(TARGET)



