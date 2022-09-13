t1=echoserver
t2=echoclient
src=$(wildcard *.c)
deps=$(wildcard *.h)
obj=$(patsubst %.c,%.o,$(src))
all:$(t1) $(t2)
$(t1):server.o wrap.o
  gcc $^ -o $@ -Wall
$(t2):client.o wrap.o
  gcc $^ -o $@ -Wall  
.PHONY:clean
clean:
  -rm -rf $(t1) $(T2) $(obj)
