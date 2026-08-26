[_NoStd]



using System.Runtime.InteropServices;
using System.Text;

namespace FunLang.StdLib {
  public static class IO {
    public enum FileDescriptor
    {
        STDIN = 0,
        STDOUT = 1,
        STDERR = 2
    }

    public static fun Print() => Print('');
    @override
    public static function Print(string str) => Print(FileDescriptor.STDOUT, str);
    @override
    public static function Print(FileDescriptor fd, string str) => Print((int)fd, str);
    @override
    public static function Print(int fd, string str) : void {
      DotNetFunCall("FunLang.StdLib.IO.Print", [])()
    }

    public static function PrintLn(string str) => Print(str + "\n");
    public static function PrintLn(FileDescriptor fd, string str) => Print(fd, str + "\n");
    public static function PrintLn(int fd, string str) => Print(fd, str + "\n");
  }
}





load StdLib
load Math

[Entry]
const Main: fun<int> = (string[]) => {
  var half: double = Math.Cos(60)
  PrintLn($"Cosine 60 degs is {half}")
  Return 0
}

// ------------------------------------------ //
// function name: Main, Arguments list: string[], return value: int

load StdLib
load Math

[Entry]
fun Main(args: string[]) -> int {
  var half: double = Math.Cos(60)
  PrintLn($"Cosine 60 degs is {half}")
  Return 0
}






