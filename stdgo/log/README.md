# Module: `stdgo.log`

[(view library index)](../stdgo.md)


# Overview


```
Package log implements a simple logging package. It defines a type, Logger,
    with methods for formatting output. It also has a predefined 'standard'
    Logger accessible through helper functions Print[f|ln], Fatal[f|ln], and
    Panic[f|ln], which are easier to use than creating a Logger manually.
    That logger writes to standard error and prints the date and time
    of each logged message.
    Every log message is output on a separate line: if the message being
    printed does not end in a newline, the logger will add one.
    The Fatal functions call os.Exit(1) after writing the log message.
    The Panic functions call panic after writing the log message.
```
# Index


- [Constants](<#constants>)

- [`function benchmarkConcurrent(b:stdgo._internal.testing.B):Void`](<#function-benchmarkconcurrent>)

- [`function benchmarkDiscard(b:stdgo._internal.testing.B):Void`](<#function-benchmarkdiscard>)

- [`function benchmarkItoa(b:stdgo._internal.testing.B):Void`](<#function-benchmarkitoa>)

- [`function benchmarkPrintln(b:stdgo._internal.testing.B):Void`](<#function-benchmarkprintln>)

- [`function benchmarkPrintlnNoFlags(b:stdgo._internal.testing.B):Void`](<#function-benchmarkprintlnnoflags>)

- [`function default_():stdgo.log.Logger`](<#function-default_>)

- [`function fatal(v:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-fatal>)

- [`function fatalf(format:String, v:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-fatalf>)

- [`function fatalln(v:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-fatalln>)

- [`function flags():Int`](<#function-flags>)

- [`function new_(out:stdgo._internal.io.Writer, prefix:String, flag:Int):stdgo.log.Logger`](<#function-new_>)

- [`function output(calldepth:Int, s:String):stdgo.Error`](<#function-output>)

- [`function panic(v:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-panic>)

- [`function panicf(format:String, v:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-panicf>)

- [`function panicln(v:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-panicln>)

- [`function prefix():String`](<#function-prefix>)

- [`function print(v:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-print>)

- [`function printf(format:String, v:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-printf>)

- [`function println(v:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-println>)

- [`function setFlags(flag:Int):Void`](<#function-setflags>)

- [`function setOutput(w:stdgo._internal.io.Writer):Void`](<#function-setoutput>)

- [`function setPrefix(prefix:String):Void`](<#function-setprefix>)

- [`function testAll(t:stdgo._internal.testing.T_):Void`](<#function-testall>)

- [`function testDefault(t:stdgo._internal.testing.T_):Void`](<#function-testdefault>)

- [`function testDiscard(t:stdgo._internal.testing.T_):Void`](<#function-testdiscard>)

- [`function testEmptyPrintCreatesLine(t:stdgo._internal.testing.T_):Void`](<#function-testemptyprintcreatesline>)

- [`function testFlagAndPrefixSetting(t:stdgo._internal.testing.T_):Void`](<#function-testflagandprefixsetting>)

- [`function testNonNewLogger(t:stdgo._internal.testing.T_):Void`](<#function-testnonnewlogger>)

- [`function testOutput(t:stdgo._internal.testing.T_):Void`](<#function-testoutput>)

- [`function testOutputRace(t:stdgo._internal.testing.T_):Void`](<#function-testoutputrace>)

- [`function testUTCFlag(t:stdgo._internal.testing.T_):Void`](<#function-testutcflag>)

- [`function writer():stdgo._internal.io.Writer`](<#function-writer>)

- [typedef Logger](<#typedef-logger>)

- [typedef Logger\_asInterface](<#typedef-logger_asinterface>)

- [typedef Logger\_static\_extension](<#typedef-logger_static_extension>)

- [typedef T\_discard](<#typedef-t_discard>)

- [typedef T\_discard\_asInterface](<#typedef-t_discard_asinterface>)

- [typedef T\_discard\_static\_extension](<#typedef-t_discard_static_extension>)

- [typedef T\_tester](<#typedef-t_tester>)

# Constants


```haxe
import stdgo.log.Log
```


```haxe
final ldate:haxe.UInt64 = stdgo._internal.log.Log.ldate
```


```haxe
final llongfile:stdgo.GoUInt64 = stdgo._internal.log.Log.llongfile
```


```haxe
final lmicroseconds:stdgo.GoUInt64 = stdgo._internal.log.Log.lmicroseconds
```


```haxe
final lmsgprefix:stdgo.GoUInt64 = stdgo._internal.log.Log.lmsgprefix
```


```haxe
final lshortfile:stdgo.GoUInt64 = stdgo._internal.log.Log.lshortfile
```


```haxe
final lstdFlags:haxe.UInt64 = stdgo._internal.log.Log.lstdFlags
```


```haxe
final ltime:stdgo.GoUInt64 = stdgo._internal.log.Log.ltime
```


```haxe
final lutc:stdgo.GoUInt64 = stdgo._internal.log.Log.lutc
```


```haxe
final rdate:String = stdgo._internal.log.Log.rdate
```


```haxe
final rline:String = stdgo._internal.log.Log.rline
```


```haxe
final rlongfile:String = stdgo._internal.log.Log.rlongfile
```


```haxe
final rmicroseconds:String = stdgo._internal.log.Log.rmicroseconds
```


```haxe
final rshortfile:String = stdgo._internal.log.Log.rshortfile
```


```haxe
final rtime:String = stdgo._internal.log.Log.rtime
```


# Functions


```haxe
import stdgo.log.Log
```


## function benchmarkConcurrent


```haxe
function benchmarkConcurrent(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Log.hx#L131>)


## function benchmarkDiscard


```haxe
function benchmarkDiscard(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Log.hx#L132>)


## function benchmarkItoa


```haxe
function benchmarkItoa(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Log.hx#L128>)


## function benchmarkPrintln


```haxe
function benchmarkPrintln(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Log.hx#L129>)


## function benchmarkPrintlnNoFlags


```haxe
function benchmarkPrintlnNoFlags(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Log.hx#L130>)


## function default\_


```haxe
function default_():stdgo.log.Logger
```



Default returns the standard logger used by the package\-level output functions.  

[\(view code\)](<./Log.hx#L43>)


## function fatal


```haxe
function fatal(v:haxe.Rest<stdgo.AnyInterface>):Void
```



Fatal is equivalent to Print\(\) followed by a call to os.Exit\(1\).  

[\(view code\)](<./Log.hx#L88>)


## function fatalf


```haxe
function fatalf(format:String, v:haxe.Rest<stdgo.AnyInterface>):Void
```



Fatalf is equivalent to Printf\(\) followed by a call to os.Exit\(1\).  

[\(view code\)](<./Log.hx#L92>)


## function fatalln


```haxe
function fatalln(v:haxe.Rest<stdgo.AnyInterface>):Void
```



Fatalln is equivalent to Println\(\) followed by a call to os.Exit\(1\).  

[\(view code\)](<./Log.hx#L96>)


## function flags


```haxe
function flags():Int
```


```
Flags returns the output flags for the standard logger.
    The flag bits are Ldate, Ltime, and so on.
```
[\(view code\)](<./Log.hx#L52>)


## function new\_


```haxe
function new_(out:stdgo._internal.io.Writer, prefix:String, flag:Int):stdgo.log.Logger
```


```
New creates a new Logger. The out variable sets the
    destination to which log data will be written.
    The prefix appears at the beginning of each generated log line, or
    after the log header if the Lmsgprefix flag is provided.
    The flag argument defines the logging properties.
```
[\(view code\)](<./Log.hx#L39>)


## function output


```haxe
function output(calldepth:Int, s:String):stdgo.Error
```


```
Output writes the output for a logging event. The string s contains
    the text to print after the prefix specified by the flags of the
    Logger. A newline is appended if the last character of s is not
    already a newline. Calldepth is the count of the number of
    frames to skip when computing the file name and line number
    if Llongfile or Lshortfile is set; a value of 1 will print the details
    for the caller of Output.
```
[\(view code\)](<./Log.hx#L118>)


## function panic


```haxe
function panic(v:haxe.Rest<stdgo.AnyInterface>):Void
```



Panic is equivalent to Print\(\) followed by a call to panic\(\).  

[\(view code\)](<./Log.hx#L100>)


## function panicf


```haxe
function panicf(format:String, v:haxe.Rest<stdgo.AnyInterface>):Void
```



Panicf is equivalent to Printf\(\) followed by a call to panic\(\).  

[\(view code\)](<./Log.hx#L104>)


## function panicln


```haxe
function panicln(v:haxe.Rest<stdgo.AnyInterface>):Void
```



Panicln is equivalent to Println\(\) followed by a call to panic\(\).  

[\(view code\)](<./Log.hx#L108>)


## function prefix


```haxe
function prefix():String
```



Prefix returns the output prefix for the standard logger.  

[\(view code\)](<./Log.hx#L61>)


## function print


```haxe
function print(v:haxe.Rest<stdgo.AnyInterface>):Void
```


```
Print calls Output to print to the standard logger.
    Arguments are handled in the manner of fmt.Print.
```
[\(view code\)](<./Log.hx#L74>)


## function printf


```haxe
function printf(format:String, v:haxe.Rest<stdgo.AnyInterface>):Void
```


```
Printf calls Output to print to the standard logger.
    Arguments are handled in the manner of fmt.Printf.
```
[\(view code\)](<./Log.hx#L79>)


## function println


```haxe
function println(v:haxe.Rest<stdgo.AnyInterface>):Void
```


```
Println calls Output to print to the standard logger.
    Arguments are handled in the manner of fmt.Println.
```
[\(view code\)](<./Log.hx#L84>)


## function setFlags


```haxe
function setFlags(flag:Int):Void
```


```
SetFlags sets the output flags for the standard logger.
    The flag bits are Ldate, Ltime, and so on.
```
[\(view code\)](<./Log.hx#L57>)


## function setOutput


```haxe
function setOutput(w:stdgo._internal.io.Writer):Void
```



SetOutput sets the output destination for the standard logger.  

[\(view code\)](<./Log.hx#L47>)


## function setPrefix


```haxe
function setPrefix(prefix:String):Void
```



SetPrefix sets the output prefix for the standard logger.  

[\(view code\)](<./Log.hx#L65>)


## function testAll


```haxe
function testAll(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Log.hx#L120>)


## function testDefault


```haxe
function testDefault(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Log.hx#L119>)


## function testDiscard


```haxe
function testDiscard(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Log.hx#L127>)


## function testEmptyPrintCreatesLine


```haxe
function testEmptyPrintCreatesLine(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Log.hx#L126>)


## function testFlagAndPrefixSetting


```haxe
function testFlagAndPrefixSetting(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Log.hx#L124>)


## function testNonNewLogger


```haxe
function testNonNewLogger(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Log.hx#L122>)


## function testOutput


```haxe
function testOutput(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Log.hx#L121>)


## function testOutputRace


```haxe
function testOutputRace(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Log.hx#L123>)


## function testUTCFlag


```haxe
function testUTCFlag(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Log.hx#L125>)


## function writer


```haxe
function writer():stdgo._internal.io.Writer
```



Writer returns the output destination for the standard logger.  

[\(view code\)](<./Log.hx#L69>)


# Typedefs


```haxe
import stdgo.log.*
```


## typedef Logger


```haxe
typedef Logger = Dynamic;
```


## typedef Logger\_asInterface


```haxe
typedef Logger_asInterface = Dynamic;
```


## typedef Logger\_static\_extension


```haxe
typedef Logger_static_extension = Dynamic;
```


## typedef T\_discard


```haxe
typedef T_discard = Dynamic;
```


## typedef T\_discard\_asInterface


```haxe
typedef T_discard_asInterface = Dynamic;
```


## typedef T\_discard\_static\_extension


```haxe
typedef T_discard_static_extension = Dynamic;
```


## typedef T\_tester


```haxe
typedef T_tester = Dynamic;
```


