target=main
src=$(wildcard *.c)
ds=$(wildcard *.h)
obj=$(patsubst %.c,%.o,$(src))
$(target):$(obj)
  gcc $^ -o $@ -Wall
%.o:%.c $(ds)
  gcc -c $< -o $@ -Wall
.PHONY:clean
clean:
  rm -rf $(target) $(obj)
