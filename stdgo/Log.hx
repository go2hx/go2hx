package stdgo;
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
@:forward @:forward.new abstract Logger(stdgo._internal.log.Log.Logger) from stdgo._internal.log.Log.Logger to stdgo._internal.log.Log.Logger {

}
@:forward @:forward.new abstract T_tester(stdgo._internal.log.Log.T_tester) from stdgo._internal.log.Log.T_tester to stdgo._internal.log.Log.T_tester {

}
@:forward @:forward.new abstract T_discard(stdgo._internal.log.Log.T_discard) from stdgo._internal.log.Log.T_discard to stdgo._internal.log.Log.T_discard {

}
/**
    New creates a new Logger. The out variable sets the
    destination to which log data will be written.
    The prefix appears at the beginning of each generated log line, or
    after the log header if the Lmsgprefix flag is provided.
    The flag argument defines the logging properties.
**/
function new_(out:stdgo._internal.io.Io.Writer, prefix:String, flag:StdTypes.Int):Logger {
        return stdgo._internal.log.Log.new_(out, prefix, flag);
    }
/**
    Default returns the standard logger used by the package-level output functions.
**/
function default_():Logger {
        return stdgo._internal.log.Log.default_();
    }
/**
    SetOutput sets the output destination for the standard logger.
**/
function setOutput(w:stdgo._internal.io.Io.Writer):Void {
        stdgo._internal.log.Log.setOutput(w);
    }
/**
    Flags returns the output flags for the standard logger.
    The flag bits are Ldate, Ltime, and so on.
**/
function flags():StdTypes.Int {
        return stdgo._internal.log.Log.flags();
    }
/**
    SetFlags sets the output flags for the standard logger.
    The flag bits are Ldate, Ltime, and so on.
**/
function setFlags(flag:StdTypes.Int):Void {
        stdgo._internal.log.Log.setFlags(flag);
    }
/**
    Prefix returns the output prefix for the standard logger.
**/
function prefix():String {
        return stdgo._internal.log.Log.prefix();
    }
/**
    SetPrefix sets the output prefix for the standard logger.
**/
function setPrefix(prefix:String):Void {
        stdgo._internal.log.Log.setPrefix(prefix);
    }
/**
    Writer returns the output destination for the standard logger.
**/
function writer():stdgo._internal.io.Io.Writer {
        return stdgo._internal.log.Log.writer();
    }
/**
    Print calls Output to print to the standard logger.
    Arguments are handled in the manner of fmt.Print.
**/
function print(v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.print(...v);
    }
/**
    Printf calls Output to print to the standard logger.
    Arguments are handled in the manner of fmt.Printf.
**/
function printf(format:String, v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.printf(format, ...v);
    }
/**
    Println calls Output to print to the standard logger.
    Arguments are handled in the manner of fmt.Println.
**/
function println(v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.println(...v);
    }
/**
    Fatal is equivalent to Print() followed by a call to os.Exit(1).
**/
function fatal(v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.fatal(...v);
    }
/**
    Fatalf is equivalent to Printf() followed by a call to os.Exit(1).
**/
function fatalf(format:String, v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.fatalf(format, ...v);
    }
/**
    Fatalln is equivalent to Println() followed by a call to os.Exit(1).
**/
function fatalln(v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.fatalln(...v);
    }
/**
    Panic is equivalent to Print() followed by a call to panic().
**/
function panic(v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.panic(...v);
    }
/**
    Panicf is equivalent to Printf() followed by a call to panic().
**/
function panicf(format:String, v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.panicf(format, ...v);
    }
/**
    Panicln is equivalent to Println() followed by a call to panic().
**/
function panicln(v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.panicln(...v);
    }
/**
    Output writes the output for a logging event. The string s contains
    the text to print after the prefix specified by the flags of the
    Logger. A newline is appended if the last character of s is not
    already a newline. Calldepth is the count of the number of
    frames to skip when computing the file name and line number
    if Llongfile or Lshortfile is set; a value of 1 will print the details
    for the caller of Output.
**/
function output(calldepth:StdTypes.Int, s:String):stdgo.Error {
        return stdgo._internal.log.Log.output(calldepth, s);
    }
function testDefault(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testDefault(t);
    }
function testAll(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testAll(t);
    }
function testOutput(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testOutput(t);
    }
function testNonNewLogger(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testNonNewLogger(t);
    }
function testOutputRace(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testOutputRace(t);
    }
function testFlagAndPrefixSetting(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testFlagAndPrefixSetting(t);
    }
function testUTCFlag(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testUTCFlag(t);
    }
function testEmptyPrintCreatesLine(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testEmptyPrintCreatesLine(t);
    }
function testDiscard(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testDiscard(t);
    }
function benchmarkItoa(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.log.Log.benchmarkItoa(b);
    }
function benchmarkPrintln(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.log.Log.benchmarkPrintln(b);
    }
function benchmarkPrintlnNoFlags(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.log.Log.benchmarkPrintlnNoFlags(b);
    }
function benchmarkConcurrent(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.log.Log.benchmarkConcurrent(b);
    }
function benchmarkDiscard(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.log.Log.benchmarkDiscard(b);
    }
@:forward @:forward.new abstract Logger_asInterface(stdgo._internal.log.Log.Logger_asInterface) from stdgo._internal.log.Log.Logger_asInterface to stdgo._internal.log.Log.Logger_asInterface {

}
@:forward @:forward.new abstract Logger_static_extension(stdgo._internal.log.Log.Logger_static_extension) from stdgo._internal.log.Log.Logger_static_extension to stdgo._internal.log.Log.Logger_static_extension {

}
@:forward @:forward.new abstract T_discard_asInterface(stdgo._internal.log.Log.T_discard_asInterface) from stdgo._internal.log.Log.T_discard_asInterface to stdgo._internal.log.Log.T_discard_asInterface {

}
@:forward @:forward.new abstract T_discard_static_extension(stdgo._internal.log.Log.T_discard_static_extension) from stdgo._internal.log.Log.T_discard_static_extension to stdgo._internal.log.Log.T_discard_static_extension {

}
