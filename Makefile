#**************************************
#dman vulnerable imageReader
#Author: hardik shah
#email: hardik05@gmail.com
#website: http://hardik05.wordpress.com
#**************************************
 
 CC=gcc
 CFLAGS=-g
 AFLCC=afl-gcc  #compiler
 TARGET=imgRead #target output name
 FILE=imgRead.c #target input name
  
uninst:
	   $(CC) $(CFLAGS) -fsanitize=address -fno-omit-frame-pointer -fsanitize=undefined $(FILE) -o $(TARGET)
afl:
	   AFL_HARDEN=1 $(AFLCC) -fsanitize=address -fno-omit-frame-pointer -fsanitize=undefined $(FILE) -o $(TARGET)
	     
clean:
	    rm $(TARGET)
