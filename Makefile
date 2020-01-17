all : clean console/hello.exe winforms/hello.exe server

clean:
	rm -f **/*.exe

console/hello.exe : console/hello.cs
	mcs console/hello.cs

console : console/hello.exe
	mono console/hello.exe

winforms/hello.exe : winforms/hello.cs
	mcs winforms/hello.cs -r:System.Windows.Forms.dll

winforms : winforms/hello.exe
	mono winforms/hello.exe

server : webforms/index.aspx
	cd webforms && xsp4 --port 9000
