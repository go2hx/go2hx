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
class Log {
    /**
        New creates a new Logger. The out variable sets the
        destination to which log data will be written.
        The prefix appears at the beginning of each generated log line, or
        after the log header if the Lmsgprefix flag is provided.
        The flag argument defines the logging properties.
    **/
    static public inline function new_(_out:stdgo._internal.io.Io_Writer.Writer, _prefix:String, _flag:StdTypes.Int):Logger {
        final _prefix = (_prefix : stdgo.GoString);
        final _flag = (_flag : stdgo.GoInt);
        return stdgo._internal.log.Log_new_.new_(_out, _prefix, _flag);
    }
    /**
        Default returns the standard logger used by the package-level output functions.
    **/
    static public inline function default_():Logger {
        return stdgo._internal.log.Log_default_.default_();
    }
    /**
        SetOutput sets the output destination for the standard logger.
    **/
    static public inline function setOutput(_w:stdgo._internal.io.Io_Writer.Writer):Void {
        stdgo._internal.log.Log_setOutput.setOutput(_w);
    }
    /**
        Flags returns the output flags for the standard logger.
        The flag bits are Ldate, Ltime, and so on.
    **/
    static public inline function flags():StdTypes.Int {
        return stdgo._internal.log.Log_flags.flags();
    }
    /**
        SetFlags sets the output flags for the standard logger.
        The flag bits are Ldate, Ltime, and so on.
    **/
    static public inline function setFlags(_flag:StdTypes.Int):Void {
        final _flag = (_flag : stdgo.GoInt);
        stdgo._internal.log.Log_setFlags.setFlags(_flag);
    }
    /**
        Prefix returns the output prefix for the standard logger.
    **/
    static public inline function prefix():String {
        return stdgo._internal.log.Log_prefix.prefix();
    }
    /**
        SetPrefix sets the output prefix for the standard logger.
    **/
    static public inline function setPrefix(_prefix:String):Void {
        final _prefix = (_prefix : stdgo.GoString);
        stdgo._internal.log.Log_setPrefix.setPrefix(_prefix);
    }
    /**
        Writer returns the output destination for the standard logger.
    **/
    static public inline function writer():stdgo._internal.io.Io_Writer.Writer {
        return stdgo._internal.log.Log_writer.writer();
    }
    /**
        Print calls Output to print to the standard logger.
        Arguments are handled in the manner of fmt.Print.
    **/
    static public inline function print(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log_print.print(...[for (i in _v) i]);
    }
    /**
        Printf calls Output to print to the standard logger.
        Arguments are handled in the manner of fmt.Printf.
    **/
    static public inline function printf(_format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.log.Log_printf.printf(_format, ...[for (i in _v) i]);
    }
    /**
        Println calls Output to print to the standard logger.
        Arguments are handled in the manner of fmt.Println.
    **/
    static public inline function println(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log_println.println(...[for (i in _v) i]);
    }
    /**
        Fatal is equivalent to Print() followed by a call to os.Exit(1).
    **/
    static public inline function fatal(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log_fatal.fatal(...[for (i in _v) i]);
    }
    /**
        Fatalf is equivalent to Printf() followed by a call to os.Exit(1).
    **/
    static public inline function fatalf(_format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.log.Log_fatalf.fatalf(_format, ...[for (i in _v) i]);
    }
    /**
        Fatalln is equivalent to Println() followed by a call to os.Exit(1).
    **/
    static public inline function fatalln(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log_fatalln.fatalln(...[for (i in _v) i]);
    }
    /**
        Panic is equivalent to Print() followed by a call to panic().
    **/
    static public inline function panic(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log_panic.panic(...[for (i in _v) i]);
    }
    /**
        Panicf is equivalent to Printf() followed by a call to panic().
    **/
    static public inline function panicf(_format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.log.Log_panicf.panicf(_format, ...[for (i in _v) i]);
    }
    /**
        Panicln is equivalent to Println() followed by a call to panic().
    **/
    static public inline function panicln(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log_panicln.panicln(...[for (i in _v) i]);
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
    static public inline function output(_calldepth:StdTypes.Int, _s:String):stdgo.Error {
        final _calldepth = (_calldepth : stdgo.GoInt);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.log.Log_output.output(_calldepth, _s);
    }
    static public inline function testDefault(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.log.Log_testDefault.testDefault(_t);
    }
    static public inline function testAll(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.log.Log_testAll.testAll(_t);
    }
    static public inline function testOutput(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.log.Log_testOutput.testOutput(_t);
    }
    static public inline function testNonNewLogger(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.log.Log_testNonNewLogger.testNonNewLogger(_t);
    }
    static public inline function testOutputRace(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.log.Log_testOutputRace.testOutputRace(_t);
    }
    static public inline function testFlagAndPrefixSetting(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.log.Log_testFlagAndPrefixSetting.testFlagAndPrefixSetting(_t);
    }
    static public inline function testUTCFlag(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.log.Log_testUTCFlag.testUTCFlag(_t);
    }
    static public inline function testEmptyPrintCreatesLine(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.log.Log_testEmptyPrintCreatesLine.testEmptyPrintCreatesLine(_t);
    }
    static public inline function testDiscard(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.log.Log_testDiscard.testDiscard(_t);
    }
    static public inline function benchmarkItoa(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.log.Log_benchmarkItoa.benchmarkItoa(_b);
    }
    static public inline function benchmarkPrintln(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.log.Log_benchmarkPrintln.benchmarkPrintln(_b);
    }
    static public inline function benchmarkPrintlnNoFlags(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.log.Log_benchmarkPrintlnNoFlags.benchmarkPrintlnNoFlags(_b);
    }
    static public inline function benchmarkConcurrent(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.log.Log_benchmarkConcurrent.benchmarkConcurrent(_b);
    }
    static public inline function benchmarkDiscard(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.log.Log_benchmarkDiscard.benchmarkDiscard(_b);
    }
}
