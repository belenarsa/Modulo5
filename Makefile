all: bin doc cppcheck

bin: main.o 
	gcc main.o -o is_armstrong_number -lm 
main.o : main.c
	gcc -c main.c -o main.o
clean: clean-doc clean-obj clean-bin
	rm -f obj/*.o bin/is_armstrong_number 
clean-obj:
	rm -f *.o 
clean-bin:
	rm -f is_armstrong_number 
clean-doc:
	rm -rf html latex
doc: clean-doc
	doxygen	

cppcheck:
	cppcheck --enable=all --inconclusive --error-exitcode=1 --xml --xml-version=2 . 2>cppcheck.xml 

