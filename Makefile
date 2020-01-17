all : clean console/hello.exe

clean:
	rm -f console/*.exe

console/hello.exe : console/hello.cs
	mcs console/hello.cs

console : console/hello.exe
	mono console/hello.exe
