package stdgo.log;
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
@:structInit @:using(stdgo.log.Log.Log_ger_static_extension) abstract Logger(stdgo._internal.log.Log.Logger) from stdgo._internal.log.Log.Logger to stdgo._internal.log.Log.Logger {
    public var _outMu(get, set) : stdgo._internal.sync.Sync.Mutex;
    function get__outMu():stdgo._internal.sync.Sync.Mutex return this._outMu;
    function set__outMu(v:stdgo._internal.sync.Sync.Mutex):stdgo._internal.sync.Sync.Mutex {
        this._outMu = v;
        return v;
    }
    public var _out(get, set) : stdgo._internal.io.Io.Writer;
    function get__out():stdgo._internal.io.Io.Writer return this._out;
    function set__out(v:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
        this._out = v;
        return v;
    }
    public var _prefix(get, set) : stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.GoString>;
    function get__prefix():stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.GoString> return this._prefix;
    function set__prefix(v:stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.GoString>):stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.GoString> {
        this._prefix = v;
        return v;
    }
    public var _flag(get, set) : stdgo._internal.sync.atomic_.Atomic_.Int32;
    function get__flag():stdgo._internal.sync.atomic_.Atomic_.Int32 return this._flag;
    function set__flag(v:stdgo._internal.sync.atomic_.Atomic_.Int32):stdgo._internal.sync.atomic_.Atomic_.Int32 {
        this._flag = v;
        return v;
    }
    public var _isDiscard(get, set) : stdgo._internal.sync.atomic_.Atomic_.Bool_;
    function get__isDiscard():stdgo._internal.sync.atomic_.Atomic_.Bool_ return this._isDiscard;
    function set__isDiscard(v:stdgo._internal.sync.atomic_.Atomic_.Bool_):stdgo._internal.sync.atomic_.Atomic_.Bool_ {
        this._isDiscard = v;
        return v;
    }
    public function new(?_outMu:stdgo._internal.sync.Sync.Mutex, ?_out:stdgo._internal.io.Io.Writer, ?_prefix:stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.GoString>, ?_flag:stdgo._internal.sync.atomic_.Atomic_.Int32, ?_isDiscard:stdgo._internal.sync.atomic_.Atomic_.Bool_) this = new stdgo._internal.log.Log.Logger(_outMu, _out, _prefix, _flag, _isDiscard);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_tester(stdgo._internal.log.Log.T_tester) from stdgo._internal.log.Log.T_tester to stdgo._internal.log.Log.T_tester {
    public var _flag(get, set) : StdTypes.Int;
    function get__flag():StdTypes.Int return this._flag;
    function set__flag(v:StdTypes.Int):StdTypes.Int {
        this._flag = v;
        return v;
    }
    public var _prefix(get, set) : String;
    function get__prefix():String return this._prefix;
    function set__prefix(v:String):String {
        this._prefix = v;
        return v;
    }
    public var _pattern(get, set) : String;
    function get__pattern():String return this._pattern;
    function set__pattern(v:String):String {
        this._pattern = v;
        return v;
    }
    public function new(?_flag:StdTypes.Int, ?_prefix:String, ?_pattern:String) this = new stdgo._internal.log.Log.T_tester(_flag, _prefix, _pattern);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.log.Log.T_discard_static_extension) abstract T_discard(stdgo._internal.log.Log.T_discard) from stdgo._internal.log.Log.T_discard to stdgo._internal.log.Log.T_discard {
    public function new() this = new stdgo._internal.log.Log.T_discard();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Log_ger_static_extension {
    static public function writer(l:Logger):stdgo._internal.io.Io.Writer {
        return stdgo._internal.log.Log.Logger_static_extension.writer(l);
    }
    static public function setPrefix(l:Logger, prefix:String):Void {
        stdgo._internal.log.Log.Logger_static_extension.setPrefix(l, prefix);
    }
    static public function prefix(l:Logger):String {
        return stdgo._internal.log.Log.Logger_static_extension.prefix(l);
    }
    static public function setFlags(l:Logger, flag:StdTypes.Int):Void {
        stdgo._internal.log.Log.Logger_static_extension.setFlags(l, flag);
    }
    static public function flags(l:Logger):StdTypes.Int {
        return stdgo._internal.log.Log.Logger_static_extension.flags(l);
    }
    static public function panicln(l:Logger, v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.Logger_static_extension.panicln(l, ...[for (i in v) i]);
    }
    static public function panicf(l:Logger, format:String, v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.Logger_static_extension.panicf(l, format, ...[for (i in v) i]);
    }
    static public function panic(l:Logger, v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.Logger_static_extension.panic(l, ...[for (i in v) i]);
    }
    static public function fatalln(l:Logger, v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.Logger_static_extension.fatalln(l, ...[for (i in v) i]);
    }
    static public function fatalf(l:Logger, format:String, v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.Logger_static_extension.fatalf(l, format, ...[for (i in v) i]);
    }
    static public function fatal(l:Logger, v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.Logger_static_extension.fatal(l, ...[for (i in v) i]);
    }
    static public function println(l:Logger, v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.Logger_static_extension.println(l, ...[for (i in v) i]);
    }
    static public function printf(l:Logger, format:String, v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.Logger_static_extension.printf(l, format, ...[for (i in v) i]);
    }
    static public function print(l:Logger, v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.Logger_static_extension.print(l, ...[for (i in v) i]);
    }
    static public function _output(l:Logger, pc:stdgo.GoUIntptr, calldepth:StdTypes.Int, appendOutput:stdgo.Slice<stdgo.GoByte> -> stdgo.Slice<stdgo.GoByte>):stdgo.Error {
        final appendOutput = appendOutput;
        return stdgo._internal.log.Log.Logger_static_extension._output(l, pc, calldepth, appendOutput);
    }
    static public function output(l:Logger, calldepth:StdTypes.Int, s:String):stdgo.Error {
        return stdgo._internal.log.Log.Logger_static_extension.output(l, calldepth, s);
    }
    static public function setOutput(l:Logger, w:stdgo._internal.io.Io.Writer):Void {
        stdgo._internal.log.Log.Logger_static_extension.setOutput(l, w);
    }
}
class T_discard_static_extension {
    static public function write(:T_discard, p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.log.Log.T_discard_static_extension.write(, p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
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
    static public function new_(out:stdgo._internal.io.Io.Writer, prefix:String, flag:StdTypes.Int):Logger {
        return stdgo._internal.log.Log.new_(out, prefix, flag);
    }
    /**
        Default returns the standard logger used by the package-level output functions.
    **/
    static public function default_():Logger {
        return stdgo._internal.log.Log.default_();
    }
    /**
        SetOutput sets the output destination for the standard logger.
    **/
    static public function setOutput(w:stdgo._internal.io.Io.Writer):Void {
        stdgo._internal.log.Log.setOutput(w);
    }
    /**
        Flags returns the output flags for the standard logger.
        The flag bits are Ldate, Ltime, and so on.
    **/
    static public function flags():StdTypes.Int {
        return stdgo._internal.log.Log.flags();
    }
    /**
        SetFlags sets the output flags for the standard logger.
        The flag bits are Ldate, Ltime, and so on.
    **/
    static public function setFlags(flag:StdTypes.Int):Void {
        stdgo._internal.log.Log.setFlags(flag);
    }
    /**
        Prefix returns the output prefix for the standard logger.
    **/
    static public function prefix():String {
        return stdgo._internal.log.Log.prefix();
    }
    /**
        SetPrefix sets the output prefix for the standard logger.
    **/
    static public function setPrefix(prefix:String):Void {
        stdgo._internal.log.Log.setPrefix(prefix);
    }
    /**
        Writer returns the output destination for the standard logger.
    **/
    static public function writer():stdgo._internal.io.Io.Writer {
        return stdgo._internal.log.Log.writer();
    }
    /**
        Print calls Output to print to the standard logger.
        Arguments are handled in the manner of fmt.Print.
    **/
    static public function print(v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.print(...[for (i in v) i]);
    }
    /**
        Printf calls Output to print to the standard logger.
        Arguments are handled in the manner of fmt.Printf.
    **/
    static public function printf(format:String, v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.printf(format, ...[for (i in v) i]);
    }
    /**
        Println calls Output to print to the standard logger.
        Arguments are handled in the manner of fmt.Println.
    **/
    static public function println(v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.println(...[for (i in v) i]);
    }
    /**
        Fatal is equivalent to Print() followed by a call to os.Exit(1).
    **/
    static public function fatal(v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.fatal(...[for (i in v) i]);
    }
    /**
        Fatalf is equivalent to Printf() followed by a call to os.Exit(1).
    **/
    static public function fatalf(format:String, v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.fatalf(format, ...[for (i in v) i]);
    }
    /**
        Fatalln is equivalent to Println() followed by a call to os.Exit(1).
    **/
    static public function fatalln(v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.fatalln(...[for (i in v) i]);
    }
    /**
        Panic is equivalent to Print() followed by a call to panic().
    **/
    static public function panic(v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.panic(...[for (i in v) i]);
    }
    /**
        Panicf is equivalent to Printf() followed by a call to panic().
    **/
    static public function panicf(format:String, v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.panicf(format, ...[for (i in v) i]);
    }
    /**
        Panicln is equivalent to Println() followed by a call to panic().
    **/
    static public function panicln(v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.panicln(...[for (i in v) i]);
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
    static public function output(calldepth:StdTypes.Int, s:String):stdgo.Error {
        return stdgo._internal.log.Log.output(calldepth, s);
    }
    static public function testDefault(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testDefault(t);
    }
    static public function testAll(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testAll(t);
    }
    static public function testOutput(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testOutput(t);
    }
    static public function testNonNewLogger(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testNonNewLogger(t);
    }
    static public function testOutputRace(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testOutputRace(t);
    }
    static public function testFlagAndPrefixSetting(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testFlagAndPrefixSetting(t);
    }
    static public function testUTCFlag(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testUTCFlag(t);
    }
    static public function testEmptyPrintCreatesLine(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testEmptyPrintCreatesLine(t);
    }
    static public function testDiscard(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testDiscard(t);
    }
    static public function benchmarkItoa(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.log.Log.benchmarkItoa(b);
    }
    static public function benchmarkPrintln(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.log.Log.benchmarkPrintln(b);
    }
    static public function benchmarkPrintlnNoFlags(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.log.Log.benchmarkPrintlnNoFlags(b);
    }
    static public function benchmarkConcurrent(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.log.Log.benchmarkConcurrent(b);
    }
    static public function benchmarkDiscard(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.log.Log.benchmarkDiscard(b);
    }
}
