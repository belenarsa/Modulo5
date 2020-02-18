all: bin doc 

bin: main.o 
	gcc main.o -o bin/is_armstrong_number -lm 
main.o : main.c
	gcc -c main.c -o obj/main.o

clean: clean-doc clean-obj clean-bin
	rm -f obj/*.o bin/is_armstrong_number 
clean-obj:
	rm -f obj/*
clean-bin:
	rm -f bin/*
clean-doc:
	rm -rf html latex
doc: clean-doc
	doxygen	

