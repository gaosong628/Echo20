all:echoserver echoclient
echoserver:server.o wrap.o
  gcc $^ -o $@ -Wall
echoclient:client.o wrap.o
  gcc $^ -o $@ -Wall  
.PHONY:clean
