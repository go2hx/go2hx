package stdgo.log;
final ldate : haxe.UInt64 = stdgo._internal.log.Log_ldate.ldate;
final ltime = stdgo._internal.log.Log_ltime.ltime;
final lmicroseconds = stdgo._internal.log.Log_lmicroseconds.lmicroseconds;
final llongfile = stdgo._internal.log.Log_llongfile.llongfile;
final lshortfile = stdgo._internal.log.Log_lshortfile.lshortfile;
final lUTC = stdgo._internal.log.Log_lutc.lUTC;
final lmsgprefix = stdgo._internal.log.Log_lmsgprefix.lmsgprefix;
final lstdFlags : haxe.UInt64 = stdgo._internal.log.Log_lstdflags.lstdFlags;
final rdate : String = stdgo._internal.log.Log_rdate.rdate;
final rtime : String = stdgo._internal.log.Log_rtime.rtime;
final rmicroseconds : String = stdgo._internal.log.Log_rmicroseconds.rmicroseconds;
final rline : String = stdgo._internal.log.Log_rline.rline;
final rlongfile : String = stdgo._internal.log.Log_rlongfile.rlongfile;
final rshortfile : String = stdgo._internal.log.Log_rshortfile.rshortfile;
@:structInit @:using(stdgo.log.Log.Logger_static_extension) abstract Logger(stdgo._internal.log.Log_logger.Logger) from stdgo._internal.log.Log_logger.Logger to stdgo._internal.log.Log_logger.Logger {
    public var _outMu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__outMu():stdgo._internal.sync.Sync_mutex.Mutex return this._outMu;
    function set__outMu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._outMu = v;
        return v;
    }
    public var _out(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__out():stdgo._internal.io.Io_writer.Writer return this._out;
    function set__out(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._out = v;
        return v;
    }
    public var _prefix(get, set) : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo.GoString>;
    function get__prefix():stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo.GoString> return this._prefix;
    function set__prefix(v:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo.GoString>):stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo.GoString> {
        this._prefix = v;
        return v;
    }
    public var _flag(get, set) : stdgo._internal.sync.atomic_.Atomic__int32.Int32;
    function get__flag():stdgo._internal.sync.atomic_.Atomic__int32.Int32 return this._flag;
    function set__flag(v:stdgo._internal.sync.atomic_.Atomic__int32.Int32):stdgo._internal.sync.atomic_.Atomic__int32.Int32 {
        this._flag = v;
        return v;
    }
    public var _isDiscard(get, set) : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_;
    function get__isDiscard():stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ return this._isDiscard;
    function set__isDiscard(v:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_):stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ {
        this._isDiscard = v;
        return v;
    }
    public function new(?_outMu:stdgo._internal.sync.Sync_mutex.Mutex, ?_out:stdgo._internal.io.Io_writer.Writer, ?_prefix:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo.GoString>, ?_flag:stdgo._internal.sync.atomic_.Atomic__int32.Int32, ?_isDiscard:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_) this = new stdgo._internal.log.Log_logger.Logger(_outMu, _out, _prefix, _flag, _isDiscard);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.log.Log.T_tester_static_extension) @:dox(hide) abstract T_tester(stdgo._internal.log.Log_t_tester.T_tester) from stdgo._internal.log.Log_t_tester.T_tester to stdgo._internal.log.Log_t_tester.T_tester {
    public var _flag(get, set) : StdTypes.Int;
    function get__flag():StdTypes.Int return this._flag;
    function set__flag(v:StdTypes.Int):StdTypes.Int {
        this._flag = (v : stdgo.GoInt);
        return v;
    }
    public var _prefix(get, set) : String;
    function get__prefix():String return this._prefix;
    function set__prefix(v:String):String {
        this._prefix = (v : stdgo.GoString);
        return v;
    }
    public var _pattern(get, set) : String;
    function get__pattern():String return this._pattern;
    function set__pattern(v:String):String {
        this._pattern = (v : stdgo.GoString);
        return v;
    }
    public function new(?_flag:StdTypes.Int, ?_prefix:String, ?_pattern:String) this = new stdgo._internal.log.Log_t_tester.T_tester((_flag : stdgo.GoInt), (_prefix : stdgo.GoString), (_pattern : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.log.Log.T_discard_static_extension) @:dox(hide) abstract T_discard(stdgo._internal.log.Log_t_discard.T_discard) from stdgo._internal.log.Log_t_discard.T_discard to stdgo._internal.log.Log_t_discard.T_discard {
    public function new() this = new stdgo._internal.log.Log_t_discard.T_discard();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef LoggerPointer = stdgo._internal.log.Log_loggerpointer.LoggerPointer;
class Logger_static_extension {
    static public function writer(_l:Logger):stdgo._internal.io.Io_writer.Writer {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
        return stdgo._internal.log.Log_logger_static_extension.Logger_static_extension.writer(_l);
    }
    static public function setPrefix(_l:Logger, _prefix:String):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
        final _prefix = (_prefix : stdgo.GoString);
        stdgo._internal.log.Log_logger_static_extension.Logger_static_extension.setPrefix(_l, _prefix);
    }
    static public function prefix(_l:Logger):String {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
        return stdgo._internal.log.Log_logger_static_extension.Logger_static_extension.prefix(_l);
    }
    static public function setFlags(_l:Logger, _flag:StdTypes.Int):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
        final _flag = (_flag : stdgo.GoInt);
        stdgo._internal.log.Log_logger_static_extension.Logger_static_extension.setFlags(_l, _flag);
    }
    static public function flags(_l:Logger):StdTypes.Int {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
        return stdgo._internal.log.Log_logger_static_extension.Logger_static_extension.flags(_l);
    }
    static public function panicln(_l:Logger, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
        stdgo._internal.log.Log_logger_static_extension.Logger_static_extension.panicln(_l, ...[for (i in _v) i]);
    }
    static public function panicf(_l:Logger, _format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.log.Log_logger_static_extension.Logger_static_extension.panicf(_l, _format, ...[for (i in _v) i]);
    }
    static public function panic(_l:Logger, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
        stdgo._internal.log.Log_logger_static_extension.Logger_static_extension.panic(_l, ...[for (i in _v) i]);
    }
    static public function fatalln(_l:Logger, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
        stdgo._internal.log.Log_logger_static_extension.Logger_static_extension.fatalln(_l, ...[for (i in _v) i]);
    }
    static public function fatalf(_l:Logger, _format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.log.Log_logger_static_extension.Logger_static_extension.fatalf(_l, _format, ...[for (i in _v) i]);
    }
    static public function fatal(_l:Logger, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
        stdgo._internal.log.Log_logger_static_extension.Logger_static_extension.fatal(_l, ...[for (i in _v) i]);
    }
    static public function println(_l:Logger, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
        stdgo._internal.log.Log_logger_static_extension.Logger_static_extension.println(_l, ...[for (i in _v) i]);
    }
    static public function printf(_l:Logger, _format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.log.Log_logger_static_extension.Logger_static_extension.printf(_l, _format, ...[for (i in _v) i]);
    }
    static public function print(_l:Logger, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
        stdgo._internal.log.Log_logger_static_extension.Logger_static_extension.print(_l, ...[for (i in _v) i]);
    }
    static public function _output(_l:Logger, _pc:stdgo.GoUIntptr, _calldepth:StdTypes.Int, _appendOutput:Array<std.UInt> -> Array<std.UInt>):stdgo.Error {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
        final _pc = (_pc : stdgo.GoUIntptr);
        final _calldepth = (_calldepth : stdgo.GoInt);
        final _appendOutput = _appendOutput;
        return stdgo._internal.log.Log_logger_static_extension.Logger_static_extension._output(_l, _pc, _calldepth, _appendOutput);
    }
    static public function output(_l:Logger, _calldepth:StdTypes.Int, _s:String):stdgo.Error {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
        final _calldepth = (_calldepth : stdgo.GoInt);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.log.Log_logger_static_extension.Logger_static_extension.output(_l, _calldepth, _s);
    }
    static public function setOutput(_l:Logger, _w:stdgo._internal.io.Io_writer.Writer):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
        stdgo._internal.log.Log_logger_static_extension.Logger_static_extension.setOutput(_l, _w);
    }
}
@:dox(hide) typedef T_testerPointer = stdgo._internal.log.Log_t_testerpointer.T_testerPointer;
@:dox(hide) class T_tester_static_extension {

}
@:dox(hide) typedef T_discardPointer = stdgo._internal.log.Log_t_discardpointer.T_discardPointer;
@:dox(hide) class T_discard_static_extension {
    static public function write(_:T_discard, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.log.Log_t_discard_static_extension.T_discard_static_extension.write(_, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    * Package log implements a simple logging package. It defines a type, Logger,
    * with methods for formatting output. It also has a predefined 'standard'
    * Logger accessible through helper functions Print[f|ln], Fatal[f|ln], and
    * Panic[f|ln], which are easier to use than creating a Logger manually.
    * That logger writes to standard error and prints the date and time
    * of each logged message.
    * Every log message is output on a separate line: if the message being
    * printed does not end in a newline, the logger will add one.
    * The Fatal functions call os.Exit(1) after writing the log message.
    * The Panic functions call panic after writing the log message.
**/
class Log {
    /**
        * New creates a new Logger. The out variable sets the
        * destination to which log data will be written.
        * The prefix appears at the beginning of each generated log line, or
        * after the log header if the Lmsgprefix flag is provided.
        * The flag argument defines the logging properties.
    **/
    static public inline function new_(_out:stdgo._internal.io.Io_writer.Writer, _prefix:String, _flag:StdTypes.Int):Logger {
        final _prefix = (_prefix : stdgo.GoString);
        final _flag = (_flag : stdgo.GoInt);
        return stdgo._internal.log.Log_new_.new_(_out, _prefix, _flag);
    }
    /**
        * Default returns the standard logger used by the package-level output functions.
    **/
    static public inline function default_():Logger {
        return stdgo._internal.log.Log_default_.default_();
    }
    /**
        * SetOutput sets the output destination for the standard logger.
    **/
    static public inline function setOutput(_w:stdgo._internal.io.Io_writer.Writer):Void {
        stdgo._internal.log.Log_setoutput.setOutput(_w);
    }
    /**
        * Flags returns the output flags for the standard logger.
        * The flag bits are Ldate, Ltime, and so on.
    **/
    static public inline function flags():StdTypes.Int {
        return stdgo._internal.log.Log_flags.flags();
    }
    /**
        * SetFlags sets the output flags for the standard logger.
        * The flag bits are Ldate, Ltime, and so on.
    **/
    static public inline function setFlags(_flag:StdTypes.Int):Void {
        final _flag = (_flag : stdgo.GoInt);
        stdgo._internal.log.Log_setflags.setFlags(_flag);
    }
    /**
        * Prefix returns the output prefix for the standard logger.
    **/
    static public inline function prefix():String {
        return stdgo._internal.log.Log_prefix.prefix();
    }
    /**
        * SetPrefix sets the output prefix for the standard logger.
    **/
    static public inline function setPrefix(_prefix:String):Void {
        final _prefix = (_prefix : stdgo.GoString);
        stdgo._internal.log.Log_setprefix.setPrefix(_prefix);
    }
    /**
        * Writer returns the output destination for the standard logger.
    **/
    static public inline function writer():stdgo._internal.io.Io_writer.Writer {
        return stdgo._internal.log.Log_writer.writer();
    }
    /**
        * Print calls Output to print to the standard logger.
        * Arguments are handled in the manner of fmt.Print.
    **/
    static public inline function print(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log_print.print(...[for (i in _v) i]);
    }
    /**
        * Printf calls Output to print to the standard logger.
        * Arguments are handled in the manner of fmt.Printf.
    **/
    static public inline function printf(_format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.log.Log_printf.printf(_format, ...[for (i in _v) i]);
    }
    /**
        * Println calls Output to print to the standard logger.
        * Arguments are handled in the manner of fmt.Println.
    **/
    static public inline function println(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log_println.println(...[for (i in _v) i]);
    }
    /**
        * Fatal is equivalent to Print() followed by a call to os.Exit(1).
    **/
    static public inline function fatal(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log_fatal.fatal(...[for (i in _v) i]);
    }
    /**
        * Fatalf is equivalent to Printf() followed by a call to os.Exit(1).
    **/
    static public inline function fatalf(_format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.log.Log_fatalf.fatalf(_format, ...[for (i in _v) i]);
    }
    /**
        * Fatalln is equivalent to Println() followed by a call to os.Exit(1).
    **/
    static public inline function fatalln(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log_fatalln.fatalln(...[for (i in _v) i]);
    }
    /**
        * Panic is equivalent to Print() followed by a call to panic().
    **/
    static public inline function panic(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log_panic.panic(...[for (i in _v) i]);
    }
    /**
        * Panicf is equivalent to Printf() followed by a call to panic().
    **/
    static public inline function panicf(_format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.log.Log_panicf.panicf(_format, ...[for (i in _v) i]);
    }
    /**
        * Panicln is equivalent to Println() followed by a call to panic().
    **/
    static public inline function panicln(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.log.Log_panicln.panicln(...[for (i in _v) i]);
    }
    /**
        * Output writes the output for a logging event. The string s contains
        * the text to print after the prefix specified by the flags of the
        * Logger. A newline is appended if the last character of s is not
        * already a newline. Calldepth is the count of the number of
        * frames to skip when computing the file name and line number
        * if Llongfile or Lshortfile is set; a value of 1 will print the details
        * for the caller of Output.
    **/
    static public inline function output(_calldepth:StdTypes.Int, _s:String):stdgo.Error {
        final _calldepth = (_calldepth : stdgo.GoInt);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.log.Log_output.output(_calldepth, _s);
    }
    static public inline function testDefault(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.log.Log_testdefault.testDefault(_t);
    }
    static public inline function testAll(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.log.Log_testall.testAll(_t);
    }
    static public inline function testOutput(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.log.Log_testoutput.testOutput(_t);
    }
    static public inline function testNonNewLogger(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.log.Log_testnonnewlogger.testNonNewLogger(_t);
    }
    static public inline function testOutputRace(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.log.Log_testoutputrace.testOutputRace(_t);
    }
    static public inline function testFlagAndPrefixSetting(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.log.Log_testflagandprefixsetting.testFlagAndPrefixSetting(_t);
    }
    static public inline function testUTCFlag(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.log.Log_testutcflag.testUTCFlag(_t);
    }
    static public inline function testEmptyPrintCreatesLine(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.log.Log_testemptyprintcreatesline.testEmptyPrintCreatesLine(_t);
    }
    static public inline function testDiscard(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.log.Log_testdiscard.testDiscard(_t);
    }
    static public inline function benchmarkItoa(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.log.Log_benchmarkitoa.benchmarkItoa(_b);
    }
    static public inline function benchmarkPrintln(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.log.Log_benchmarkprintln.benchmarkPrintln(_b);
    }
    static public inline function benchmarkPrintlnNoFlags(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.log.Log_benchmarkprintlnnoflags.benchmarkPrintlnNoFlags(_b);
    }
    static public inline function benchmarkConcurrent(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.log.Log_benchmarkconcurrent.benchmarkConcurrent(_b);
    }
    static public inline function benchmarkDiscard(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.log.Log_benchmarkdiscard.benchmarkDiscard(_b);
    }
}
