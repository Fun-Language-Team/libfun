[_NoStd]

@Library("stdfun")
@StdImpl("exit")
public fun exit(exitCode: int) {
  DotNetFunCall("System.Environment.Exit", exitCode);
}