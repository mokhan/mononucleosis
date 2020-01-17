using Gtk;
using System;

class Hello
{
  static void Main()
  {
    Application.Init();
    Window window = new Window("Hello, world!");
    window.Show();
    Application.Run();
  }
}
