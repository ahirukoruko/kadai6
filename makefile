# makefile
.PHONY : clean

kadai6.out : kadai6.c
	gcc -o kadai6.out kadai6.c
	
do :
	./kadai6.out
	
clean :
	rm kadai6.out
