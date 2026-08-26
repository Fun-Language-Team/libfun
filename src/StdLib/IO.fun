/*
 * FileName: src/StdLib/IO.fun
 * SPDX-FileCopyrightText: 2026 Fun Language Team
 * SPDX-License-Identifier: GPL-3.0-or-later
*/

[_NoStd]

@StdImpl("StdLib.IO")
namespace StdLib {
  public static class IO {
    public enum FileDescriptor {
      STDIN = 0,
      STDOUT = 1,
      STDERR = 2
    }

    public static fun Print() => Print('');
    @override
    public static fun Print(string str) => Print(FileDescriptor.STDOUT, str);
    @override
    public static fun Print(FileDescriptor fd, string str) => Print((int)fd, str);
    @override
    public static fun Print(int fd, string str) : void {
      DotNetFunCall("FunLang.StdLib.IO.Print", [])()
    }

    public static fun PrintLn(string str) => Print(str + "\n");
    public static fun PrintLn(FileDescriptor fd, string str) => Print(fd, str + "\n");
    public static fun PrintLn(int fd, string str) => Print(fd, str + "\n");
  }
}
