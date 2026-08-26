/*
 * FileName: src/StdLib/Type/String.fun
 * SPDX-FileCopyrightText: 2026 Fun Language Team
 * SPDX-License-Identifier: GPL-3.0-or-later
*/

[_NoStd]

@StdImpl("StdLib.Type.String")
namespace StdLib.Type {
  struct String {
    public var _pointer: StdLib.Type.NInt;  // pointer       
    public var _length: StdLib.Type.UInt32; // string length

    public fun length() -> StdLib.Type.UInt32 {
      return _length;
    }

    public fun append(value: StdLib.Type.String) -> StdLib.Type.String {}
    public fun split(separator: StdLib.Type.String) -> StdLib.Type.String[] {}
    public fun equals(value: StdLib.Type.String) -> StdLib.Type.Bool {}
    public fun compare(value: StdLib.Type.String) -> StdLib.Type.Int32 {}
  
    public fun contains(value: StdLib.Type.String) -> StdLib.Type.Bool {}
    public fun startsWith(value: StdLib.Type.String) -> StdLib.Type.Bool {}
    public fun endsWith(value: StdLib.Type.String) -> StdLib.Type.Bool {}

    public fun substring(start: StdLib.Type.UInt32, length: StdLib.Type.UInt32) -> StdLib.Type.String {}
  }
}

/**************************************

String("Hello!")

------------------
| _pointer       | ---------
| _length        |         |
------------------         V
                          Heap
                  --------------------
                  | H e l l o !      |
                  --------------------
                    ^ _length ^

***************************************

var a: string = "Hello"
var b: string = a.append(" World") // b = "Hello World"

------------------
| _pointer       | ---------
| _length        |         |
------------------         V
                          Heap
                  -----------------------
                  | H e l l o   World   |
                  -----------------------
                    ^-------^ a._length
                    ^---------------^ b._length
                    | a._pointer
                    | b._pointer

***************************************
*/