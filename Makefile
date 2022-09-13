CC=gcc
CFALGS= -c -Wall
OBJ=func
echoall: $(OBJ)
$(OBJ): echoserver.o echoclient.o
  $(CC) echoserver.o echoclient.o -o $(OBJ)
echoserver.o: echoserver.c
  $(CC) $(CFLAGS) echoserver.c
echoclient.o: echoclient.c
  $(CC) $(CFLAGS) echoclient.c
exec:
  ./func
clean:
  rm -fr *.o echoclient echoserver
