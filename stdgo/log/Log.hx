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
    static public function writer(_l:Logger):stdgo._internal.io.Io.Writer {
        return stdgo._internal.log.Log.Logger_static_extension.writer(_l);
    }
    static public function setPrefix(_l:Logger, _prefix:String):Void {
        stdgo._internal.log.Log.Logger_static_extension.setPrefix(_l, _prefix);
    }
    static public function prefix(_l:Logger):String {
        return stdgo._internal.log.Log.Logger_static_extension.prefix(_l);
    }
    static public function setFlags(_l:Logger, _flag:StdTypes.Int):Void {
        stdgo._internal.log.Log.Logger_static_extension.setFlags(_l, _flag);
    }
    static public function flags(_l:Logger):StdTypes.Int {
        return stdgo._internal.log.Log.Logger_static_extension.flags(_l);
    }
    static public function panicln(_l:Logger, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.Logger_static_extension.panicln(_l, ...[for (i in _v) i]);
    }
    static public function panicf(_l:Logger, _format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.Logger_static_extension.panicf(_l, _format, ...[for (i in _v) i]);
    }
    static public function panic(_l:Logger, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.Logger_static_extension.panic(_l, ...[for (i in _v) i]);
    }
    static public function fatalln(_l:Logger, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.Logger_static_extension.fatalln(_l, ...[for (i in _v) i]);
    }
    static public function fatalf(_l:Logger, _format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.Logger_static_extension.fatalf(_l, _format, ...[for (i in _v) i]);
    }
    static public function fatal(_l:Logger, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.Logger_static_extension.fatal(_l, ...[for (i in _v) i]);
    }
    static public function println(_l:Logger, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.Logger_static_extension.println(_l, ...[for (i in _v) i]);
    }
    static public function printf(_l:Logger, _format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.Logger_static_extension.printf(_l, _format, ...[for (i in _v) i]);
    }
    static public function print(_l:Logger, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.Logger_static_extension.print(_l, ...[for (i in _v) i]);
    }
    static public function _output(_l:Logger, _pc:stdgo.GoUIntptr, _calldepth:StdTypes.Int, _appendOutput:stdgo.Slice<stdgo.GoByte> -> stdgo.Slice<stdgo.GoByte>):stdgo.Error {
        final _appendOutput = _appendOutput;
        return stdgo._internal.log.Log.Logger_static_extension._output(_l, _pc, _calldepth, _appendOutput);
    }
    static public function output(_l:Logger, _calldepth:StdTypes.Int, _s:String):stdgo.Error {
        return stdgo._internal.log.Log.Logger_static_extension.output(_l, _calldepth, _s);
    }
    static public function setOutput(_l:Logger, _w:stdgo._internal.io.Io.Writer):Void {
        stdgo._internal.log.Log.Logger_static_extension.setOutput(_l, _w);
    }
}
class T_discard_static_extension {
    static public function write(_:T_discard, _p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.log.Log.T_discard_static_extension.write(_, _p);
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
    static public function new_(_out:stdgo._internal.io.Io.Writer, _prefix:String, _flag:StdTypes.Int):Logger {
        return stdgo._internal.log.Log.new_(_out, _prefix, _flag);
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
    static public function setOutput(_w:stdgo._internal.io.Io.Writer):Void {
        stdgo._internal.log.Log.setOutput(_w);
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
    static public function setFlags(_flag:StdTypes.Int):Void {
        stdgo._internal.log.Log.setFlags(_flag);
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
    static public function setPrefix(_prefix:String):Void {
        stdgo._internal.log.Log.setPrefix(_prefix);
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
    static public function print(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.print(...[for (i in _v) i]);
    }
    /**
        Printf calls Output to print to the standard logger.
        Arguments are handled in the manner of fmt.Printf.
    **/
    static public function printf(_format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.printf(_format, ...[for (i in _v) i]);
    }
    /**
        Println calls Output to print to the standard logger.
        Arguments are handled in the manner of fmt.Println.
    **/
    static public function println(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.println(...[for (i in _v) i]);
    }
    /**
        Fatal is equivalent to Print() followed by a call to os.Exit(1).
    **/
    static public function fatal(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.fatal(...[for (i in _v) i]);
    }
    /**
        Fatalf is equivalent to Printf() followed by a call to os.Exit(1).
    **/
    static public function fatalf(_format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.fatalf(_format, ...[for (i in _v) i]);
    }
    /**
        Fatalln is equivalent to Println() followed by a call to os.Exit(1).
    **/
    static public function fatalln(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.fatalln(...[for (i in _v) i]);
    }
    /**
        Panic is equivalent to Print() followed by a call to panic().
    **/
    static public function panic(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.panic(...[for (i in _v) i]);
    }
    /**
        Panicf is equivalent to Printf() followed by a call to panic().
    **/
    static public function panicf(_format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.panicf(_format, ...[for (i in _v) i]);
    }
    /**
        Panicln is equivalent to Println() followed by a call to panic().
    **/
    static public function panicln(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log.panicln(...[for (i in _v) i]);
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
    static public function output(_calldepth:StdTypes.Int, _s:String):stdgo.Error {
        return stdgo._internal.log.Log.output(_calldepth, _s);
    }
    static public function testDefault(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testDefault(_t);
    }
    static public function testAll(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testAll(_t);
    }
    static public function testOutput(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testOutput(_t);
    }
    static public function testNonNewLogger(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testNonNewLogger(_t);
    }
    static public function testOutputRace(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testOutputRace(_t);
    }
    static public function testFlagAndPrefixSetting(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testFlagAndPrefixSetting(_t);
    }
    static public function testUTCFlag(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testUTCFlag(_t);
    }
    static public function testEmptyPrintCreatesLine(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testEmptyPrintCreatesLine(_t);
    }
    static public function testDiscard(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.log.Log.testDiscard(_t);
    }
    static public function benchmarkItoa(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.log.Log.benchmarkItoa(_b);
    }
    static public function benchmarkPrintln(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.log.Log.benchmarkPrintln(_b);
    }
    static public function benchmarkPrintlnNoFlags(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.log.Log.benchmarkPrintlnNoFlags(_b);
    }
    static public function benchmarkConcurrent(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.log.Log.benchmarkConcurrent(_b);
    }
    static public function benchmarkDiscard(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.log.Log.benchmarkDiscard(_b);
    }
}
