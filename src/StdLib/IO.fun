#!/usr/bin/env fun

/*
 * FileName: src/StdLib/IO.fun
 * SPDX-FileCopyrightText: 2026 Fun Language Team
 * SPDX-License-Identifier: GPL-3.0-or-later
*/

[_NoStd]

@Library("stdfun")
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
    public static fun Print(str: string) => Print(FileDescriptor.STDOUT, str);
    @override
    public static fun Print(fd: FileDescriptor, str: string) => Print((int)fd, str);
    @override
    public static fun Print(fd: int, str: string) : void {
      DotNetFunCall("FunLang.StdLib.IO.Print", [])()
    }

    public static fun PrintLn(str: string) => Print(str + "\n");
    public static fun PrintLn(fd: FileDescriptor, str: string) => Print(fd, str + "\n");
    public static fun PrintLn(fd: int, str: string) => Print(fd, str + "\n");
  }
}
