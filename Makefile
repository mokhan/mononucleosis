all : clean console/hello.exe winforms/hello.exe gtk

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

webforms/index :

webforms : webforms/index
	cd webforms && xsp4 --port 9000

gtk/hello.exe : gtk/hello.cs
	mcs gtk/hello.cs -pkg:gtk-sharp-2.0

gtk : gtk/hello.exe
	mono gtk/hello.exe
