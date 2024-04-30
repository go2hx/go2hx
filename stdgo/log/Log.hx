package stdgo.log;
/**
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
**/
private var __go2hxdoc__package : Bool;
final ldate : haxe.UInt64 = stdgo._internal.log.Log.ldate;
final ltime = stdgo._internal.log.Log.ltime;
final lmicroseconds = stdgo._internal.log.Log.lmicroseconds;
final llongfile = stdgo._internal.log.Log.llongfile;
final lshortfile = stdgo._internal.log.Log.lshortfile;
final lutc = stdgo._internal.log.Log.lutc;
final lmsgprefix = stdgo._internal.log.Log.lmsgprefix;
final lstdFlags : haxe.UInt64 = stdgo._internal.log.Log.lstdFlags;
final rdate : String = stdgo._internal.log.Log.rdate;
final rtime : String = stdgo._internal.log.Log.rtime;
final rmicroseconds : String = stdgo._internal.log.Log.rmicroseconds;
final rline : String = stdgo._internal.log.Log.rline;
final rlongfile : String = stdgo._internal.log.Log.rlongfile;
final rshortfile : String = stdgo._internal.log.Log.rshortfile;
@:invalid typedef Logger = Dynamic;
@:invalid typedef T_tester = Dynamic;
@:invalid typedef T_discard = Dynamic;
/**
    New creates a new Logger. The out variable sets the
    destination to which log data will be written.
    The prefix appears at the beginning of each generated log line, or
    after the log header if the Lmsgprefix flag is provided.
    The flag argument defines the logging properties.
**/
inline function new_(out:stdgo._internal.io.Io.Writer, prefix:String, flag:Int):Logger throw "not implemented";
/**
    Default returns the standard logger used by the package-level output functions.
**/
inline function default_():Logger throw "not implemented";
/**
    SetOutput sets the output destination for the standard logger.
**/
inline function setOutput(w:stdgo._internal.io.Io.Writer):Void throw "not implemented";
/**
    Flags returns the output flags for the standard logger.
    The flag bits are Ldate, Ltime, and so on.
**/
inline function flags():Int throw "not implemented";
/**
    SetFlags sets the output flags for the standard logger.
    The flag bits are Ldate, Ltime, and so on.
**/
inline function setFlags(flag:Int):Void throw "not implemented";
/**
    Prefix returns the output prefix for the standard logger.
**/
inline function prefix():String throw "not implemented";
/**
    SetPrefix sets the output prefix for the standard logger.
**/
inline function setPrefix(prefix:String):Void throw "not implemented";
/**
    Writer returns the output destination for the standard logger.
**/
inline function writer():stdgo._internal.io.Io.Writer throw "not implemented";
/**
    Print calls Output to print to the standard logger.
    Arguments are handled in the manner of fmt.Print.
**/
inline function print(v:haxe.Rest<stdgo.AnyInterface>):Void throw "not implemented";
/**
    Printf calls Output to print to the standard logger.
    Arguments are handled in the manner of fmt.Printf.
**/
inline function printf(format:String, v:haxe.Rest<stdgo.AnyInterface>):Void throw "not implemented";
/**
    Println calls Output to print to the standard logger.
    Arguments are handled in the manner of fmt.Println.
**/
inline function println(v:haxe.Rest<stdgo.AnyInterface>):Void throw "not implemented";
/**
    Fatal is equivalent to Print() followed by a call to os.Exit(1).
**/
inline function fatal(v:haxe.Rest<stdgo.AnyInterface>):Void throw "not implemented";
/**
    Fatalf is equivalent to Printf() followed by a call to os.Exit(1).
**/
inline function fatalf(format:String, v:haxe.Rest<stdgo.AnyInterface>):Void throw "not implemented";
/**
    Fatalln is equivalent to Println() followed by a call to os.Exit(1).
**/
inline function fatalln(v:haxe.Rest<stdgo.AnyInterface>):Void throw "not implemented";
/**
    Panic is equivalent to Print() followed by a call to panic().
**/
inline function panic(v:haxe.Rest<stdgo.AnyInterface>):Void throw "not implemented";
/**
    Panicf is equivalent to Printf() followed by a call to panic().
**/
inline function panicf(format:String, v:haxe.Rest<stdgo.AnyInterface>):Void throw "not implemented";
/**
    Panicln is equivalent to Println() followed by a call to panic().
**/
inline function panicln(v:haxe.Rest<stdgo.AnyInterface>):Void throw "not implemented";
/**
    Output writes the output for a logging event. The string s contains
    the text to print after the prefix specified by the flags of the
    Logger. A newline is appended if the last character of s is not
    already a newline. Calldepth is the count of the number of
    frames to skip when computing the file name and line number
    if Llongfile or Lshortfile is set; a value of 1 will print the details
    for the caller of Output.
**/
inline function output(calldepth:Int, s:String):stdgo.Error throw "not implemented";
inline function testDefault(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testAll(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testOutput(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testNonNewLogger(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testOutputRace(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFlagAndPrefixSetting(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testUTCFlag(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testEmptyPrintCreatesLine(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDiscard(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkItoa(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkPrintln(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkPrintlnNoFlags(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkConcurrent(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkDiscard(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
@:invalid typedef Logger_asInterface = Dynamic;
@:invalid typedef Logger_static_extension = Dynamic;
@:invalid typedef T_discard_asInterface = Dynamic;
@:invalid typedef T_discard_static_extension = Dynamic;
