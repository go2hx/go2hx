# Module: `stdgo.os.exec`

[(view library index)](../../stdgo.md)


# Overview


```
Package exec runs external commands. It wraps os.StartProcess to make it
    easier to remap stdin and stdout, connect I/O with pipes, and do other
    adjustments.
```

Unlike the "system" library call from C and other languages, the
os/exec package intentionally does not invoke the system shell and
does not expand any glob patterns or handle other expansions,
pipelines, or redirections typically done by shells. The package
behaves more like C's "exec" family of functions. To expand glob
patterns, either call the shell directly, taking care to escape any
dangerous input, or use the path/filepath package's Glob function.
To expand environment variables, use package os's ExpandEnv.  


Note that the examples in this package assume a Unix system.
They may not run on Windows, and they do not run in the Go Playground
used by golang.org and godoc.org.  

## Executables in the current directory



The functions Command and LookPath look for a program
in the directories listed in the current path, following the
conventions of the host operating system.
Operating systems have for decades included the current
directory in this search, sometimes implicitly and sometimes
configured explicitly that way by default.
Modern practice is that including the current directory
is usually unexpected and often leads to security problems.  


To avoid those security problems, as of Go 1.19, this package will not resolve a program
using an implicit or explicit path entry relative to the current directory.
That is, if you run exec.LookPath\("go"\), it will not successfully return
./go on Unix nor .\\go.exe on Windows, no matter how the path is configured.
Instead, if the usual path algorithms would result in that answer,
these functions return an error err satisfying errors.Is\(err, ErrDot\).  


For example, consider these two program snippets:  

```
    	path, err := exec.LookPath("prog")
    	if err != nil {
    		log.Fatal(err)
}
    	use(path)
```

and  

```
    	cmd := exec.Command("prog")
    	if err := cmd.Run(); err != nil {
    		log.Fatal(err)
}
```

These will not find and run ./prog or .\\prog.exe,
no matter how the current path is configured.  


Code that always wants to run a program from the current directory
can be rewritten to say "./prog" instead of "prog".  


Code that insists on including results from relative path entries
can instead override the error using an errors.Is check:  

```
    	path, err := exec.LookPath("prog")
    	if errors.Is(err, exec.ErrDot) {
    		err = nil
}
    	if err != nil {
    		log.Fatal(err)
}
    	use(path)
```

and  

```
    	cmd := exec.Command("prog")
    	if errors.Is(cmd.Err, exec.ErrDot) {
    		cmd.Err = nil
}
    	if err := cmd.Run(); err != nil {
    		log.Fatal(err)
}
```

Setting the environment variable GODEBUG=execerrdot=0
disables generation of ErrDot entirely, temporarily restoring the pre\-Go 1.19
behavior for programs that are unable to apply more targeted fixes.
A future version of Go may remove support for this variable.  


Before adding such overrides, make sure you understand the
security implications of doing so.
See https://go.dev/blog/path-security for more information.  

# Index


- [Variables](<#variables>)

- [`function benchmarkExecHostname(b:stdgo._internal.testing.B):Void`](<#function-benchmarkexechostname>)

- [`function command(name:String, arg:haxe.Rest<stdgo.GoString>):stdgo.os.exec.Cmd`](<#function-command>)

- [`function commandContext(ctx:stdgo._internal.context.Context, name:String, arg:haxe.Rest<stdgo.GoString>):stdgo.os.exec.Cmd`](<#function-commandcontext>)

- [`function get_errDot():stdgo.Error`](<#function-get_errdot>)

- [`function get_errNotFound():stdgo.Error`](<#function-get_errnotfound>)

- [`function get_errWaitDelay():stdgo.Error`](<#function-get_errwaitdelay>)

- [`function lookPath(file:String):stdgo.Tuple<String, stdgo.Error>`](<#function-lookpath>)

- [`function set_errDot(v:stdgo.Error):stdgo.Error`](<#function-set_errdot>)

- [`function set_errNotFound(v:stdgo.Error):stdgo.Error`](<#function-set_errnotfound>)

- [`function set_errWaitDelay(v:stdgo.Error):stdgo.Error`](<#function-set_errwaitdelay>)

- [`function testDedupEnv(t:stdgo._internal.testing.T_):Void`](<#function-testdedupenv>)

- [`function testLookPathNotFound(t:stdgo._internal.testing.T_):Void`](<#function-testlookpathnotfound>)

- [`function testPrefixSuffixSaver(t:stdgo._internal.testing.T_):Void`](<#function-testprefixsuffixsaver>)

- [typedef Cmd](<#typedef-cmd>)

- [typedef Cmd\_asInterface](<#typedef-cmd_asinterface>)

- [typedef Cmd\_static\_extension](<#typedef-cmd_static_extension>)

- [typedef Error](<#typedef-error>)

- [typedef Error\_asInterface](<#typedef-error_asinterface>)

- [typedef Error\_static\_extension](<#typedef-error_static_extension>)

- [typedef ExitError](<#typedef-exiterror>)

- [typedef ExitError\_asInterface](<#typedef-exiterror_asinterface>)

- [typedef ExitError\_static\_extension](<#typedef-exiterror_static_extension>)

- [typedef T\_ctxResult](<#typedef-t_ctxresult>)

- [typedef T\_prefixSuffixSaver](<#typedef-t_prefixsuffixsaver>)

- [typedef T\_prefixSuffixSaver\_asInterface](<#typedef-t_prefixsuffixsaver_asinterface>)

- [typedef T\_prefixSuffixSaver\_static\_extension](<#typedef-t_prefixsuffixsaver_static_extension>)

- [typedef T\_wrappedError](<#typedef-t_wrappederror>)

- [typedef T\_wrappedError\_asInterface](<#typedef-t_wrappederror_asinterface>)

- [typedef T\_wrappedError\_static\_extension](<#typedef-t_wrappederror_static_extension>)

# Variables


```haxe
import stdgo.os.exec.Exec
```


```haxe
var errDot:stdgo.Error
```


```haxe
var errNotFound:stdgo.Error
```


```haxe
var errWaitDelay:stdgo.Error
```


# Functions


```haxe
import stdgo.os.exec.Exec
```


## function benchmarkExecHostname


```haxe
function benchmarkExecHostname(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Exec.hx#L106>)


## function command


```haxe
function command(name:String, arg:haxe.Rest<stdgo.GoString>):stdgo.os.exec.Cmd
```


```
Command returns the Cmd struct to execute the named program with
    the given arguments.
```

It sets only the Path and Args in the returned structure.  


If name contains no path separators, Command uses LookPath to
resolve name to a complete path if possible. Otherwise it uses name
directly as Path.  


The returned Cmd's Args field is constructed from the command name
followed by the elements of arg, so arg should not include the
command name itself. For example, Command\("echo", "hello"\).
Args\[0\] is always name, not the possibly resolved Path.  


On Windows, processes receive the whole command line as a single string
and do their own parsing. Command combines and quotes Args into a command
line string with an algorithm compatible with applications using
CommandLineToArgvW \(which is the most common way\). Notable exceptions are
msiexec.exe and cmd.exe \(and thus, all batch files\), which have a different
unquoting algorithm. In these or other similar cases, you can do the
quoting yourself and provide the full command line in SysProcAttr.CmdLine,
leaving Args empty.  

[\(view code\)](<./Exec.hx#L132>)


## function commandContext


```haxe
function commandContext(ctx:stdgo._internal.context.Context, name:String, arg:haxe.Rest<stdgo.GoString>):stdgo.os.exec.Cmd
```



CommandContext is like Command but includes a context.  


The provided context is used to interrupt the process
\(by calling cmd.Cancel or os.Process.Kill\)
if the context becomes done before the command completes on its own.  


CommandContext sets the command's Cancel function to invoke the Kill method
on its Process, and leaves its WaitDelay unset. The caller may change the
cancellation behavior by modifying those fields before starting the command.  

[\(view code\)](<./Exec.hx#L144>)


## function get\_errDot


```haxe
function get_errDot():stdgo.Error
```


[\(view code\)](<./Exec.hx#L95>)


## function get\_errNotFound


```haxe
function get_errNotFound():stdgo.Error
```


[\(view code\)](<./Exec.hx#L98>)


## function get\_errWaitDelay


```haxe
function get_errWaitDelay():stdgo.Error
```


[\(view code\)](<./Exec.hx#L92>)


## function lookPath


```haxe
function lookPath(file:String):stdgo.Tuple<String, stdgo.Error>
```


```
LookPath searches for an executable named file in the
    directories named by the PATH environment variable.
    If file contains a slash, it is tried directly and the PATH is not consulted.
    The result may be an absolute path or a path relative to the current directory.
```
[\(view code\)](<./Exec.hx#L153>)


## function set\_errDot


```haxe
function set_errDot(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Exec.hx#L96>)


## function set\_errNotFound


```haxe
function set_errNotFound(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Exec.hx#L99>)


## function set\_errWaitDelay


```haxe
function set_errWaitDelay(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Exec.hx#L93>)


## function testDedupEnv


```haxe
function testDedupEnv(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Exec.hx#L107>)


## function testLookPathNotFound


```haxe
function testLookPathNotFound(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Exec.hx#L146>)


## function testPrefixSuffixSaver


```haxe
function testPrefixSuffixSaver(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Exec.hx#L145>)


# Typedefs


```haxe
import stdgo.os.exec.*
```


## typedef Cmd


```haxe
typedef Cmd = Dynamic;
```


## typedef Cmd\_asInterface


```haxe
typedef Cmd_asInterface = Dynamic;
```


## typedef Cmd\_static\_extension


```haxe
typedef Cmd_static_extension = Dynamic;
```


## typedef Error


```haxe
typedef Error = Dynamic;
```


## typedef Error\_asInterface


```haxe
typedef Error_asInterface = Dynamic;
```


## typedef Error\_static\_extension


```haxe
typedef Error_static_extension = Dynamic;
```


## typedef ExitError


```haxe
typedef ExitError = Dynamic;
```


## typedef ExitError\_asInterface


```haxe
typedef ExitError_asInterface = Dynamic;
```


## typedef ExitError\_static\_extension


```haxe
typedef ExitError_static_extension = Dynamic;
```


## typedef T\_ctxResult


```haxe
typedef T_ctxResult = Dynamic;
```


## typedef T\_prefixSuffixSaver


```haxe
typedef T_prefixSuffixSaver = Dynamic;
```


## typedef T\_prefixSuffixSaver\_asInterface


```haxe
typedef T_prefixSuffixSaver_asInterface = Dynamic;
```


## typedef T\_prefixSuffixSaver\_static\_extension


```haxe
typedef T_prefixSuffixSaver_static_extension = Dynamic;
```


## typedef T\_wrappedError


```haxe
typedef T_wrappedError = Dynamic;
```


## typedef T\_wrappedError\_asInterface


```haxe
typedef T_wrappedError_asInterface = Dynamic;
```


## typedef T\_wrappedError\_static\_extension


```haxe
typedef T_wrappedError_static_extension = Dynamic;
```


