all: is_armstrong_number doc

is_armstrong_number : main.o 
	gcc main.o -o bin/is_armstrong_number -lm 
main.o : main.c
	gcc -c main.c
clean:
	rm -f obj/*.o bin/is_armstrong_number 
clean-doc:
	rm -rf html latex
doc: clean-doc
	doxygen	

