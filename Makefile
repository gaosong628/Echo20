all:echoserver.o echoclient.o
  gcc echoserver.o echoclient.o -o all
echoserver.o:echoserver.c
  gcc -c echoserver.c
echoclient.o:echoclient.c
  gcc -c echoclient.c
