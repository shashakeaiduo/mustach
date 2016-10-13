
mustach: mustach-tool.c  mustach.c  mustach.h  mustach-json-c.c  mustach-json-c.h
	$(CC) -o mustach mustach-tool.c  mustach.c  mustach-json-c.c -ljson-c

.PHONY: test clean

test: mustach
	@make -C test1 test

clean:
	rm -f mustach
	@make -C test1 clean


