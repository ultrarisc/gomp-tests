test: 
	for f in *.out ; do ./"$$f" > /dev/null && echo "PASS $$f" || echo "FAILED: $$f"; done

clean:
	rm -rf *.out

build:
	find *.c -exec gcc -fopenmp {} -o {}.out \;
	rm pr*.out
