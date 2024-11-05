# Module: `stdgo.log`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [class Log](<#class-log>)

  - [`function benchmarkConcurrent(_b:stdgo._internal.testing.B):Void`](<#log-function-benchmarkconcurrent>)

  - [`function benchmarkDiscard(_b:stdgo._internal.testing.B):Void`](<#log-function-benchmarkdiscard>)

  - [`function benchmarkItoa(_b:stdgo._internal.testing.B):Void`](<#log-function-benchmarkitoa>)

  - [`function benchmarkPrintln(_b:stdgo._internal.testing.B):Void`](<#log-function-benchmarkprintln>)

  - [`function benchmarkPrintlnNoFlags(_b:stdgo._internal.testing.B):Void`](<#log-function-benchmarkprintlnnoflags>)

  - [`function default_():stdgo.log.Logger`](<#log-function-default_>)

  - [`function fatal(_v:haxe.Rest<stdgo.AnyInterface>):Void`](<#log-function-fatal>)

  - [`function fatalf(_format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void`](<#log-function-fatalf>)

  - [`function fatalln(_v:haxe.Rest<stdgo.AnyInterface>):Void`](<#log-function-fatalln>)

  - [`function flags():Int`](<#log-function-flags>)

  - [`function new_(_out:stdgo._internal.io.Writer, _prefix:String, _flag:Int):stdgo.log.Logger`](<#log-function-new_>)

  - [`function output(_calldepth:Int, _s:String):stdgo.Error`](<#log-function-output>)

  - [`function panic(_v:haxe.Rest<stdgo.AnyInterface>):Void`](<#log-function-panic>)

  - [`function panicf(_format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void`](<#log-function-panicf>)

  - [`function panicln(_v:haxe.Rest<stdgo.AnyInterface>):Void`](<#log-function-panicln>)

  - [`function prefix():String`](<#log-function-prefix>)

  - [`function print(_v:haxe.Rest<stdgo.AnyInterface>):Void`](<#log-function-print>)

  - [`function printf(_format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void`](<#log-function-printf>)

  - [`function println(_v:haxe.Rest<stdgo.AnyInterface>):Void`](<#log-function-println>)

  - [`function setFlags(_flag:Int):Void`](<#log-function-setflags>)

  - [`function setOutput(_w:stdgo._internal.io.Writer):Void`](<#log-function-setoutput>)

  - [`function setPrefix(_prefix:String):Void`](<#log-function-setprefix>)

  - [`function testAll(_t:stdgo._internal.testing.T_):Void`](<#log-function-testall>)

  - [`function testDefault(_t:stdgo._internal.testing.T_):Void`](<#log-function-testdefault>)

  - [`function testDiscard(_t:stdgo._internal.testing.T_):Void`](<#log-function-testdiscard>)

  - [`function testEmptyPrintCreatesLine(_t:stdgo._internal.testing.T_):Void`](<#log-function-testemptyprintcreatesline>)

  - [`function testFlagAndPrefixSetting(_t:stdgo._internal.testing.T_):Void`](<#log-function-testflagandprefixsetting>)

  - [`function testNonNewLogger(_t:stdgo._internal.testing.T_):Void`](<#log-function-testnonnewlogger>)

  - [`function testOutput(_t:stdgo._internal.testing.T_):Void`](<#log-function-testoutput>)

  - [`function testOutputRace(_t:stdgo._internal.testing.T_):Void`](<#log-function-testoutputrace>)

  - [`function testUTCFlag(_t:stdgo._internal.testing.T_):Void`](<#log-function-testutcflag>)

  - [`function writer():stdgo._internal.io.Writer`](<#log-function-writer>)

- [abstract Logger](<#abstract-logger>)

- [abstract T\_tester](<#abstract-t_tester>)

- [abstract T\_discard](<#abstract-t_discard>)

# Constants


```haxe
import stdgo.log.Log
```


```haxe
final ldate:haxe.UInt64 = stdgo._internal.log.Log_ldate.ldate
```


```haxe
final llongfile:stdgo.GoUInt64 = stdgo._internal.log.Log_llongfile.llongfile
```


```haxe
final lmicroseconds:stdgo.GoUInt64 = stdgo._internal.log.Log_lmicroseconds.lmicroseconds
```


```haxe
final lmsgprefix:stdgo.GoUInt64 = stdgo._internal.log.Log_lmsgprefix.lmsgprefix
```


```haxe
final lshortfile:stdgo.GoUInt64 = stdgo._internal.log.Log_lshortfile.lshortfile
```


```haxe
final lstdFlags:haxe.UInt64 = stdgo._internal.log.Log_lstdFlags.lstdFlags
```


```haxe
final ltime:stdgo.GoUInt64 = stdgo._internal.log.Log_ltime.ltime
```


```haxe
final lutc:stdgo.GoUInt64 = stdgo._internal.log.Log_lutc.lutc
```


```haxe
final rdate:String = stdgo._internal.log.Log_rdate.rdate
```


```haxe
final rline:String = stdgo._internal.log.Log_rline.rline
```


```haxe
final rlongfile:String = stdgo._internal.log.Log_rlongfile.rlongfile
```


```haxe
final rmicroseconds:String = stdgo._internal.log.Log_rmicroseconds.rmicroseconds
```


```haxe
final rshortfile:String = stdgo._internal.log.Log_rshortfile.rshortfile
```


```haxe
final rtime:String = stdgo._internal.log.Log_rtime.rtime
```


# Classes


```haxe
import stdgo.log.*
```


## class Log


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
### Log function benchmarkConcurrent


```haxe
function benchmarkConcurrent(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Log.hx#L314>)


### Log function benchmarkDiscard


```haxe
function benchmarkDiscard(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Log.hx#L317>)


### Log function benchmarkItoa


```haxe
function benchmarkItoa(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Log.hx#L305>)


### Log function benchmarkPrintln


```haxe
function benchmarkPrintln(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Log.hx#L308>)


### Log function benchmarkPrintlnNoFlags


```haxe
function benchmarkPrintlnNoFlags(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Log.hx#L311>)


### Log function default\_


```haxe
function default_():stdgo.log.Logger
```



Default returns the standard logger used by the package\-level output functions.  

[\(view code\)](<./Log.hx#L168>)


### Log function fatal


```haxe
function fatal(_v:haxe.Rest<stdgo.AnyInterface>):Void
```



Fatal is equivalent to Print\(\) followed by a call to os.Exit\(1\).  

[\(view code\)](<./Log.hx#L233>)


### Log function fatalf


```haxe
function fatalf(_format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void
```



Fatalf is equivalent to Printf\(\) followed by a call to os.Exit\(1\).  

[\(view code\)](<./Log.hx#L239>)


### Log function fatalln


```haxe
function fatalln(_v:haxe.Rest<stdgo.AnyInterface>):Void
```



Fatalln is equivalent to Println\(\) followed by a call to os.Exit\(1\).  

[\(view code\)](<./Log.hx#L245>)


### Log function flags


```haxe
function flags():Int
```


```
Flags returns the output flags for the standard logger.
        The flag bits are Ldate, Ltime, and so on.
```
[\(view code\)](<./Log.hx#L181>)


### Log function new\_


```haxe
function new_(_out:stdgo._internal.io.Writer, _prefix:String, _flag:Int):stdgo.log.Logger
```


```
New creates a new Logger. The out variable sets the
        destination to which log data will be written.
        The prefix appears at the beginning of each generated log line, or
        after the log header if the Lmsgprefix flag is provided.
        The flag argument defines the logging properties.
```
[\(view code\)](<./Log.hx#L162>)


### Log function output


```haxe
function output(_calldepth:Int, _s:String):stdgo.Error
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
[\(view code\)](<./Log.hx#L275>)


### Log function panic


```haxe
function panic(_v:haxe.Rest<stdgo.AnyInterface>):Void
```



Panic is equivalent to Print\(\) followed by a call to panic\(\).  

[\(view code\)](<./Log.hx#L251>)


### Log function panicf


```haxe
function panicf(_format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void
```



Panicf is equivalent to Printf\(\) followed by a call to panic\(\).  

[\(view code\)](<./Log.hx#L257>)


### Log function panicln


```haxe
function panicln(_v:haxe.Rest<stdgo.AnyInterface>):Void
```



Panicln is equivalent to Println\(\) followed by a call to panic\(\).  

[\(view code\)](<./Log.hx#L263>)


### Log function prefix


```haxe
function prefix():String
```



Prefix returns the output prefix for the standard logger.  

[\(view code\)](<./Log.hx#L194>)


### Log function print


```haxe
function print(_v:haxe.Rest<stdgo.AnyInterface>):Void
```


```
Print calls Output to print to the standard logger.
        Arguments are handled in the manner of fmt.Print.
```
[\(view code\)](<./Log.hx#L213>)


### Log function printf


```haxe
function printf(_format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void
```


```
Printf calls Output to print to the standard logger.
        Arguments are handled in the manner of fmt.Printf.
```
[\(view code\)](<./Log.hx#L220>)


### Log function println


```haxe
function println(_v:haxe.Rest<stdgo.AnyInterface>):Void
```


```
Println calls Output to print to the standard logger.
        Arguments are handled in the manner of fmt.Println.
```
[\(view code\)](<./Log.hx#L227>)


### Log function setFlags


```haxe
function setFlags(_flag:Int):Void
```


```
SetFlags sets the output flags for the standard logger.
        The flag bits are Ldate, Ltime, and so on.
```
[\(view code\)](<./Log.hx#L188>)


### Log function setOutput


```haxe
function setOutput(_w:stdgo._internal.io.Writer):Void
```



SetOutput sets the output destination for the standard logger.  

[\(view code\)](<./Log.hx#L174>)


### Log function setPrefix


```haxe
function setPrefix(_prefix:String):Void
```



SetPrefix sets the output prefix for the standard logger.  

[\(view code\)](<./Log.hx#L200>)


### Log function testAll


```haxe
function testAll(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Log.hx#L281>)


### Log function testDefault


```haxe
function testDefault(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Log.hx#L278>)


### Log function testDiscard


```haxe
function testDiscard(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Log.hx#L302>)


### Log function testEmptyPrintCreatesLine


```haxe
function testEmptyPrintCreatesLine(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Log.hx#L299>)


### Log function testFlagAndPrefixSetting


```haxe
function testFlagAndPrefixSetting(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Log.hx#L293>)


### Log function testNonNewLogger


```haxe
function testNonNewLogger(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Log.hx#L287>)


### Log function testOutput


```haxe
function testOutput(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Log.hx#L284>)


### Log function testOutputRace


```haxe
function testOutputRace(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Log.hx#L290>)


### Log function testUTCFlag


```haxe
function testUTCFlag(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Log.hx#L296>)


### Log function writer


```haxe
function writer():stdgo._internal.io.Writer
```



Writer returns the output destination for the standard logger.  

[\(view code\)](<./Log.hx#L206>)


# Abstracts


## abstract Logger


[\(view file containing code\)](<./Log.hx>)


## abstract T\_tester


[\(view file containing code\)](<./Log.hx>)


## abstract T\_discard


[\(view file containing code\)](<./Log.hx>)


