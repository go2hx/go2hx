package stdgo._internal.log;
private var __go2hxdoc__package : Bool;
final ldate : stdgo.GoUInt64 = (64i64 : stdgo.GoUInt64);
final ltime = (64i64 : stdgo.GoUInt64);
final lmicroseconds = (64i64 : stdgo.GoUInt64);
final llongfile = (64i64 : stdgo.GoUInt64);
final lshortfile = (64i64 : stdgo.GoUInt64);
final lutc = (64i64 : stdgo.GoUInt64);
final lmsgprefix = (64i64 : stdgo.GoUInt64);
final lstdFlags : stdgo.GoUInt64 = (3i64 : stdgo.GoUInt64);
final rdate : stdgo.GoString = ("[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9]" : stdgo.GoString);
final rtime : stdgo.GoString = ("[0-9][0-9]:[0-9][0-9]:[0-9][0-9]" : stdgo.GoString);
final rmicroseconds : stdgo.GoString = ("\\.[0-9][0-9][0-9][0-9][0-9][0-9]" : stdgo.GoString);
final rline : stdgo.GoString = ("(63|65):" : stdgo.GoString);
final rlongfile : stdgo.GoString = (".*/[A-Za-z0-9_\\-]+\\.go:(63|65):" : stdgo.GoString);
final rshortfile : stdgo.GoString = ("[A-Za-z0-9_\\-]+\\.go:(63|65):" : stdgo.GoString);
var _std : stdgo.Ref<stdgo._internal.log.Log.Logger> = new_(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), stdgo.Go.str()?.__copy__(), (3 : stdgo.GoInt));
var _bufferPool : stdgo._internal.sync.Sync.Pool = ({ new_ : function():stdgo.AnyInterface {
        return stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>));
    } } : stdgo._internal.sync.Sync.Pool);
var _tests : stdgo.Slice<stdgo._internal.log.Log.T_tester> = (new stdgo.Slice<stdgo._internal.log.Log.T_tester>(14, 14, ...[
(new stdgo._internal.log.Log.T_tester((0 : stdgo.GoInt), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.log.Log.T_tester),
(new stdgo._internal.log.Log.T_tester((0 : stdgo.GoInt), ("XXX" : stdgo.GoString), ("XXX" : stdgo.GoString)) : stdgo._internal.log.Log.T_tester),
(new stdgo._internal.log.Log.T_tester((1 : stdgo.GoInt), stdgo.Go.str()?.__copy__(), ("[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] " : stdgo.GoString)) : stdgo._internal.log.Log.T_tester),
(new stdgo._internal.log.Log.T_tester((2 : stdgo.GoInt), stdgo.Go.str()?.__copy__(), ("[0-9][0-9]:[0-9][0-9]:[0-9][0-9] " : stdgo.GoString)) : stdgo._internal.log.Log.T_tester),
(new stdgo._internal.log.Log.T_tester((66 : stdgo.GoInt), ("XXX" : stdgo.GoString), ("[0-9][0-9]:[0-9][0-9]:[0-9][0-9] XXX" : stdgo.GoString)) : stdgo._internal.log.Log.T_tester),
(new stdgo._internal.log.Log.T_tester((6 : stdgo.GoInt), stdgo.Go.str()?.__copy__(), ("[0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] " : stdgo.GoString)) : stdgo._internal.log.Log.T_tester),
(new stdgo._internal.log.Log.T_tester((4 : stdgo.GoInt), stdgo.Go.str()?.__copy__(), ("[0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] " : stdgo.GoString)) : stdgo._internal.log.Log.T_tester),
(new stdgo._internal.log.Log.T_tester((8 : stdgo.GoInt), stdgo.Go.str()?.__copy__(), (".*/[A-Za-z0-9_\\-]+\\.go:(63|65): " : stdgo.GoString)) : stdgo._internal.log.Log.T_tester),
(new stdgo._internal.log.Log.T_tester((16 : stdgo.GoInt), stdgo.Go.str()?.__copy__(), ("[A-Za-z0-9_\\-]+\\.go:(63|65): " : stdgo.GoString)) : stdgo._internal.log.Log.T_tester),
(new stdgo._internal.log.Log.T_tester((24 : stdgo.GoInt), stdgo.Go.str()?.__copy__(), ("[A-Za-z0-9_\\-]+\\.go:(63|65): " : stdgo.GoString)) : stdgo._internal.log.Log.T_tester),
(new stdgo._internal.log.Log.T_tester((15 : stdgo.GoInt), ("XXX" : stdgo.GoString), ("XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): " : stdgo.GoString)) : stdgo._internal.log.Log.T_tester),
(new stdgo._internal.log.Log.T_tester((23 : stdgo.GoInt), ("XXX" : stdgo.GoString), ("XXX[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): " : stdgo.GoString)) : stdgo._internal.log.Log.T_tester),
(new stdgo._internal.log.Log.T_tester((79 : stdgo.GoInt), ("XXX" : stdgo.GoString), ("[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] .*/[A-Za-z0-9_\\-]+\\.go:(63|65): XXX" : stdgo.GoString)) : stdgo._internal.log.Log.T_tester),
(new stdgo._internal.log.Log.T_tester((87 : stdgo.GoInt), ("XXX" : stdgo.GoString), ("[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] [A-Za-z0-9_\\-]+\\.go:(63|65): XXX" : stdgo.GoString)) : stdgo._internal.log.Log.T_tester)].concat([for (i in 14 ... (14 > 14 ? 14 : 14 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.log.Log.T_tester)])) : stdgo.Slice<stdgo._internal.log.Log.T_tester>);
@:structInit @:using(stdgo._internal.log.Log.Logger_static_extension) class Logger {
    public var _outMu : stdgo._internal.sync.Sync.Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
    public var _out : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public var _prefix : stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.GoString> = ({} : stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.GoString>);
    public var _flag : stdgo._internal.sync.atomic_.Atomic_.Int32 = ({} : stdgo._internal.sync.atomic_.Atomic_.Int32);
    public var _isDiscard : stdgo._internal.sync.atomic_.Atomic_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic_.Bool_);
    public function new(?_outMu:stdgo._internal.sync.Sync.Mutex, ?_out:stdgo._internal.io.Io.Writer, ?_prefix:stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.GoString>, ?_flag:stdgo._internal.sync.atomic_.Atomic_.Int32, ?_isDiscard:stdgo._internal.sync.atomic_.Atomic_.Bool_) {
        if (_outMu != null) this._outMu = _outMu;
        if (_out != null) this._out = _out;
        if (_prefix != null) this._prefix = _prefix;
        if (_flag != null) this._flag = _flag;
        if (_isDiscard != null) this._isDiscard = _isDiscard;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Logger(_outMu, _out, _prefix, _flag, _isDiscard);
    }
}
@:structInit @:private class T_tester {
    public var _flag : stdgo.GoInt = 0;
    public var _prefix : stdgo.GoString = "";
    public var _pattern : stdgo.GoString = "";
    public function new(?_flag:stdgo.GoInt, ?_prefix:stdgo.GoString, ?_pattern:stdgo.GoString) {
        if (_flag != null) this._flag = _flag;
        if (_prefix != null) this._prefix = _prefix;
        if (_pattern != null) this._pattern = _pattern;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_tester(_flag, _prefix, _pattern);
    }
}
@:structInit @:private @:using(stdgo._internal.log.Log.T_discard_static_extension) class T_discard {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_discard();
    }
}
function new_(_out:stdgo._internal.io.Io.Writer, _prefix:stdgo.GoString, _flag:stdgo.GoInt):stdgo.Ref<Logger> {
        var _l = (stdgo.Go.setRef(({} : stdgo._internal.log.Log.Logger)) : stdgo.Ref<stdgo._internal.log.Log.Logger>);
        _l.setOutput(_out);
        _l.setPrefix(_prefix?.__copy__());
        _l.setFlags(_flag);
        return _l;
    }
function default_():stdgo.Ref<Logger> {
        return _std;
    }
function _itoa(_buf:stdgo.Ref<stdgo.Slice<stdgo.GoByte>>, _i:stdgo.GoInt, _wid:stdgo.GoInt):Void {
        var _b:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(20, 20, ...[for (i in 0 ... 20) (0 : stdgo.GoUInt8)]);
        var _bp = (19 : stdgo.GoInt);
        while (((_i >= (10 : stdgo.GoInt) : Bool) || (_wid > (1 : stdgo.GoInt) : Bool) : Bool)) {
            _wid--;
            var _q = (_i / (10 : stdgo.GoInt) : stdgo.GoInt);
            _b[(_bp : stdgo.GoInt)] = ((((48 : stdgo.GoInt) + _i : stdgo.GoInt) - (_q * (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte);
            _bp--;
            _i = _q;
        };
        _b[(_bp : stdgo.GoInt)] = (((48 : stdgo.GoInt) + _i : stdgo.GoInt) : stdgo.GoByte);
        (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__(...((_b.__slice__(_bp) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>))));
    }
function _formatHeader(_buf:stdgo.Ref<stdgo.Slice<stdgo.GoByte>>, _t:stdgo._internal.time.Time.Time, _prefix:stdgo.GoString, _flag:stdgo.GoInt, _file:stdgo.GoString, _line:stdgo.GoInt):Void {
        if ((_flag & (64 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
            (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_prefix : Array<stdgo.GoUInt8>))));
        };
        if ((_flag & (7 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            if ((_flag & (32 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                _t = _t.utc()?.__copy__();
            };
            if ((_flag & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                var __tmp__ = _t.date(), _year:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2;
                _itoa(_buf, _year, (4 : stdgo.GoInt));
                (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__((47 : stdgo.GoUInt8))));
                _itoa(_buf, (_month : stdgo.GoInt), (2 : stdgo.GoInt));
                (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__((47 : stdgo.GoUInt8))));
                _itoa(_buf, _day, (2 : stdgo.GoInt));
                (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__((32 : stdgo.GoUInt8))));
            };
            if ((_flag & (6 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                var __tmp__ = _t.clock(), _hour:stdgo.GoInt = __tmp__._0, _min:stdgo.GoInt = __tmp__._1, _sec:stdgo.GoInt = __tmp__._2;
                _itoa(_buf, _hour, (2 : stdgo.GoInt));
                (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__((58 : stdgo.GoUInt8))));
                _itoa(_buf, _min, (2 : stdgo.GoInt));
                (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__((58 : stdgo.GoUInt8))));
                _itoa(_buf, _sec, (2 : stdgo.GoInt));
                if ((_flag & (4 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__((46 : stdgo.GoUInt8))));
                    _itoa(_buf, (_t.nanosecond() / (1000 : stdgo.GoInt) : stdgo.GoInt), (6 : stdgo.GoInt));
                };
                (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__((32 : stdgo.GoUInt8))));
            };
        };
        if ((_flag & (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            if ((_flag & (16 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                var _short = (_file?.__copy__() : stdgo.GoString);
                {
                    var _i = ((_file.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i--, {
                        if (_file[(_i : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                            _short = (_file.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            break;
                        };
                    });
                };
                _file = _short?.__copy__();
            };
            (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_file : Array<stdgo.GoUInt8>))));
            (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__((58 : stdgo.GoUInt8))));
            _itoa(_buf, _line, (-1 : stdgo.GoInt));
            (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__(...((": " : stdgo.GoString) : Array<stdgo.GoUInt8>))));
        };
        if ((_flag & (64 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_prefix : Array<stdgo.GoUInt8>))));
        };
    }
function _getBuffer():stdgo.Ref<stdgo.Slice<stdgo.GoByte>> {
        var _p = (stdgo.Go.typeAssert((_bufferPool.get() : stdgo.Ref<stdgo.Slice<stdgo.GoByte>>)) : stdgo.Ref<stdgo.Slice<stdgo.GoByte>>);
        (_p : stdgo.Slice<stdgo.GoUInt8>).__setData__((((_p : stdgo.Slice<stdgo.GoUInt8>)).__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        return _p;
    }
function _putBuffer(_p:stdgo.Ref<stdgo.Slice<stdgo.GoByte>>):Void {
        if (((_p : stdgo.Slice<stdgo.GoUInt8>).capacity > (65536 : stdgo.GoInt) : Bool)) {
            (_p : stdgo.Slice<stdgo.GoUInt8>).__setData__((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        _bufferPool.put(stdgo.Go.toInterface(_p));
    }
function setOutput(_w:stdgo._internal.io.Io.Writer):Void {
        _std.setOutput(_w);
    }
function flags():stdgo.GoInt {
        return _std.flags();
    }
function setFlags(_flag:stdgo.GoInt):Void {
        _std.setFlags(_flag);
    }
function prefix():stdgo.GoString {
        return _std.prefix()?.__copy__();
    }
function setPrefix(_prefix:stdgo.GoString):Void {
        _std.setPrefix(_prefix?.__copy__());
    }
function writer():stdgo._internal.io.Io.Writer {
        return _std.writer();
    }
function print(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        _std._output((0 : stdgo.GoUIntptr), (2 : stdgo.GoInt), function(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
            return stdgo._internal.fmt.Fmt.append(_b, ...(_v : Array<stdgo.AnyInterface>));
        });
    }
function printf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        _std._output((0 : stdgo.GoUIntptr), (2 : stdgo.GoInt), function(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
            return stdgo._internal.fmt.Fmt.appendf(_b, _format?.__copy__(), ...(_v : Array<stdgo.AnyInterface>));
        });
    }
function println(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        _std._output((0 : stdgo.GoUIntptr), (2 : stdgo.GoInt), function(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
            return stdgo._internal.fmt.Fmt.appendln(_b, ...(_v : Array<stdgo.AnyInterface>));
        });
    }
function fatal(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        _std.output((2 : stdgo.GoInt), stdgo._internal.fmt.Fmt.sprint(...(_v : Array<stdgo.AnyInterface>))?.__copy__());
        Sys.exit((1 : stdgo.GoInt));
    }
function fatalf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        _std.output((2 : stdgo.GoInt), stdgo._internal.fmt.Fmt.sprintf(_format?.__copy__(), ...(_v : Array<stdgo.AnyInterface>))?.__copy__());
        Sys.exit((1 : stdgo.GoInt));
    }
function fatalln(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        _std.output((2 : stdgo.GoInt), stdgo._internal.fmt.Fmt.sprintln(...(_v : Array<stdgo.AnyInterface>))?.__copy__());
        Sys.exit((1 : stdgo.GoInt));
    }
function panic(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        var _s = (stdgo._internal.fmt.Fmt.sprint(...(_v : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
        _std.output((2 : stdgo.GoInt), _s?.__copy__());
        throw stdgo.Go.toInterface(_s);
    }
function panicf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        var _s = (stdgo._internal.fmt.Fmt.sprintf(_format?.__copy__(), ...(_v : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
        _std.output((2 : stdgo.GoInt), _s?.__copy__());
        throw stdgo.Go.toInterface(_s);
    }
function panicln(_v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        var _s = (stdgo._internal.fmt.Fmt.sprintln(...(_v : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
        _std.output((2 : stdgo.GoInt), _s?.__copy__());
        throw stdgo.Go.toInterface(_s);
    }
function output(_calldepth:stdgo.GoInt, _s:stdgo.GoString):stdgo.Error {
        return _std.output((_calldepth + (1 : stdgo.GoInt) : stdgo.GoInt), _s?.__copy__());
    }
function _testPrint(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _flag:stdgo.GoInt, _prefix:stdgo.GoString, _pattern:stdgo.GoString, _useFormat:Bool):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>);
        setOutput(stdgo.Go.asInterface(_buf));
        setFlags(_flag);
        setPrefix(_prefix?.__copy__());
        if (_useFormat) {
            printf(("hello %d world" : stdgo.GoString), stdgo.Go.toInterface((23 : stdgo.GoInt)));
        } else {
            println(stdgo.Go.toInterface(("hello" : stdgo.GoString)), stdgo.Go.toInterface((23 : stdgo.GoInt)), stdgo.Go.toInterface(("world" : stdgo.GoString)));
        };
        var _line = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _line = (_line.__slice__((0 : stdgo.GoInt), ((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        _pattern = ((("^" : stdgo.GoString) + _pattern?.__copy__() : stdgo.GoString) + ("hello 23 world$" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        var __tmp__ = stdgo._internal.regexp.Regexp.matchString(_pattern?.__copy__(), _line?.__copy__()), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("pattern did not compile:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!_matched) {
            _t.errorf(("log output should match %q is %q" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_line));
        };
        setOutput(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr));
    }
function testDefault(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _got = default_();
            if (_got != (_std)) {
                _t.errorf(("Default [%p] should be std [%p]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_std)));
            };
        };
    }
function testAll(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__8 => _testcase in _tests) {
            _testPrint(_t, _testcase._flag, _testcase._prefix?.__copy__(), _testcase._pattern?.__copy__(), false);
            _testPrint(_t, _testcase._flag, _testcase._prefix?.__copy__(), _testcase._pattern?.__copy__(), true);
        };
    }
function testOutput(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _b:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        var _l = new_(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt));
        _l.println(stdgo.Go.toInterface(("test" : stdgo.GoString)));
        {
            var _expect = ("test\n" : stdgo.GoString);
            if ((_b.string() : stdgo.GoString) != (_expect)) {
                _t.errorf(("log output should match %q is %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
            };
        };
    }
function testNonNewLogger(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _l:Logger = ({} : stdgo._internal.log.Log.Logger);
        _l.setOutput(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
        _l.print(stdgo.Go.toInterface(("hello" : stdgo.GoString)));
    }
function testOutputRace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var _l = new_(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt));
        var _wg:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
        _wg.add((100 : stdgo.GoInt));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> _wg.done());
                            _l.setFlags((0 : stdgo.GoInt));
                            _l.output((0 : stdgo.GoInt), stdgo.Go.str()?.__copy__());
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        } catch(__exception__) {
                            var exe:Dynamic = __exception__.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    };
                    a();
                });
            });
        };
        _wg.wait_();
    }
function testFlagAndPrefixSetting(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var _l = new_(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), ("Test:" : stdgo.GoString), (3 : stdgo.GoInt));
        var _f = (_l.flags() : stdgo.GoInt);
        if (_f != ((3 : stdgo.GoInt))) {
            _t.errorf(("Flags 1: expected %x got %x" : stdgo.GoString), stdgo.Go.toInterface((3 : stdgo.GoInt)), stdgo.Go.toInterface(_f));
        };
        _l.setFlags((_f | (4 : stdgo.GoInt) : stdgo.GoInt));
        _f = _l.flags();
        if (_f != ((7 : stdgo.GoInt))) {
            _t.errorf(("Flags 2: expected %x got %x" : stdgo.GoString), stdgo.Go.toInterface((7 : stdgo.GoInt)), stdgo.Go.toInterface(_f));
        };
        var _p = (_l.prefix()?.__copy__() : stdgo.GoString);
        if (_p != (("Test:" : stdgo.GoString))) {
            _t.errorf(("Prefix: expected \"Test:\" got %q" : stdgo.GoString), stdgo.Go.toInterface(_p));
        };
        _l.setPrefix(("Reality:" : stdgo.GoString));
        _p = _l.prefix()?.__copy__();
        if (_p != (("Reality:" : stdgo.GoString))) {
            _t.errorf(("Prefix: expected \"Reality:\" got %q" : stdgo.GoString), stdgo.Go.toInterface(_p));
        };
        _l.print(stdgo.Go.toInterface(("hello" : stdgo.GoString)));
        var _pattern = ("^Reality:[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] hello\n" : stdgo.GoString);
        var __tmp__ = stdgo._internal.regexp.Regexp.match(_pattern?.__copy__(), _b.bytes()), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("pattern %q did not compile: %s" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_err));
        };
        if (!_matched) {
            _t.error(stdgo.Go.toInterface(("message did not match pattern" : stdgo.GoString)));
        };
        _b.reset();
        _l.setFlags((0 : stdgo.GoInt));
        _l.setPrefix(("\n" : stdgo.GoString));
        _l.output((0 : stdgo.GoInt), stdgo.Go.str()?.__copy__());
        {
            var _got = ((_b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (("\n" : stdgo.GoString))) {
                _t.errorf(("message mismatch:\ngot  %q\nwant %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("\n" : stdgo.GoString)));
            };
        };
    }
function testUTCFlag(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        var _l = new_(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), ("Test:" : stdgo.GoString), (3 : stdgo.GoInt));
        _l.setFlags((35 : stdgo.GoInt));
        var _now = (stdgo._internal.time.Time.now().utc()?.__copy__() : stdgo._internal.time.Time.Time);
        _l.print(stdgo.Go.toInterface(("hello" : stdgo.GoString)));
        var _want = (stdgo._internal.fmt.Fmt.sprintf(("Test:%d/%.2d/%.2d %.2d:%.2d:%.2d hello\n" : stdgo.GoString), stdgo.Go.toInterface(_now.year()), stdgo.Go.toInterface(stdgo.Go.asInterface(_now.month())), stdgo.Go.toInterface(_now.day()), stdgo.Go.toInterface(_now.hour()), stdgo.Go.toInterface(_now.minute()), stdgo.Go.toInterface(_now.second()))?.__copy__() : stdgo.GoString);
        var _got = ((_b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_got == (_want)) {
            return;
        };
        _now = _now.add((1000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__();
        _want = stdgo._internal.fmt.Fmt.sprintf(("Test:%d/%.2d/%.2d %.2d:%.2d:%.2d hello\n" : stdgo.GoString), stdgo.Go.toInterface(_now.year()), stdgo.Go.toInterface(stdgo.Go.asInterface(_now.month())), stdgo.Go.toInterface(_now.day()), stdgo.Go.toInterface(_now.hour()), stdgo.Go.toInterface(_now.minute()), stdgo.Go.toInterface(_now.second()))?.__copy__();
        if (_got == (_want)) {
            return;
        };
        _t.errorf(("got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
    }
function testEmptyPrintCreatesLine(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        var _l = new_(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), ("Header:" : stdgo.GoString), (3 : stdgo.GoInt));
        _l.print();
        _l.println(stdgo.Go.toInterface(("non-empty" : stdgo.GoString)));
        var _output = ((_b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            var _n = (stdgo._internal.strings.Strings.count(_output?.__copy__(), ("Header" : stdgo.GoString)) : stdgo.GoInt);
            if (_n != ((2 : stdgo.GoInt))) {
                _t.errorf(("expected 2 headers, got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
        };
        {
            var _n = (stdgo._internal.strings.Strings.count(_output?.__copy__(), ("\n" : stdgo.GoString)) : stdgo.GoInt);
            if (_n != ((2 : stdgo.GoInt))) {
                _t.errorf(("expected 2 lines, got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
        };
    }
function testDiscard(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _l = new_(stdgo._internal.io.Io.discard, stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt));
        var _s = (stdgo._internal.strings.Strings.repeat(("a" : stdgo.GoString), (102400 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        var _c = (stdgo._internal.testing.Testing.allocsPerRun((100 : stdgo.GoInt), function():Void {
            _l.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_s));
        }) : stdgo.GoFloat64);
        if ((_c > (1 : stdgo.GoFloat64) : Bool)) {
            _t.errorf(("got %v allocs, want at most 1" : stdgo.GoString), stdgo.Go.toInterface(_c));
        };
    }
function benchmarkItoa(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _dst = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _dst = (_dst.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                _itoa((stdgo.Go.setRef(_dst) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (2015 : stdgo.GoInt), (4 : stdgo.GoInt));
                _itoa((stdgo.Go.setRef(_dst) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (1 : stdgo.GoInt), (2 : stdgo.GoInt));
                _itoa((stdgo.Go.setRef(_dst) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (30 : stdgo.GoInt), (2 : stdgo.GoInt));
                _itoa((stdgo.Go.setRef(_dst) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (12 : stdgo.GoInt), (2 : stdgo.GoInt));
                _itoa((stdgo.Go.setRef(_dst) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (56 : stdgo.GoInt), (2 : stdgo.GoInt));
                _itoa((stdgo.Go.setRef(_dst) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (0 : stdgo.GoInt), (2 : stdgo.GoInt));
                _itoa((stdgo.Go.setRef(_dst) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (987654 : stdgo.GoInt), (6 : stdgo.GoInt));
            });
        };
    }
function benchmarkPrintln(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var _l = new_(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), stdgo.Go.str()?.__copy__(), (3 : stdgo.GoInt));
        _b.reportAllocs();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _buf.reset();
                _l.println(stdgo.Go.toInterface(("test" : stdgo.GoString)));
            });
        };
    }
function benchmarkPrintlnNoFlags(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var _l = new_(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt));
        _b.reportAllocs();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _buf.reset();
                _l.println(stdgo.Go.toInterface(("test" : stdgo.GoString)));
            });
        };
    }
function benchmarkConcurrent(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _l = new_(stdgo.Go.asInterface((new stdgo._internal.log.Log.T_discard() : stdgo._internal.log.Log.T_discard)), ("prefix: " : stdgo.GoString), (79 : stdgo.GoInt));
        var _group:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
        {
            var _i = (stdgo._internal.runtime.Runtime.numCPU() : stdgo.GoInt);
            stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i--, {
                _group.add((1 : stdgo.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                    _l.output((0 : stdgo.GoInt), ("hello, world!" : stdgo.GoString));
                                });
                            };
                            __deferstack__.unshift(() -> _group.done());
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        } catch(__exception__) {
                            var exe:Dynamic = __exception__.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    };
                    a();
                });
            });
        };
        _group.wait_();
    }
function benchmarkDiscard(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _l = new_(stdgo._internal.io.Io.discard, stdgo.Go.str()?.__copy__(), (19 : stdgo.GoInt));
        _b.reportAllocs();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _l.printf(("processing %d objects from bucket %q" : stdgo.GoString), stdgo.Go.toInterface((1234 : stdgo.GoInt)), stdgo.Go.toInterface(("fizzbuzz" : stdgo.GoString)));
            });
        };
    }
@:keep var _ = {
        try {
            stdgo._internal.log.internal.Internal.defaultOutput = function(_pc:stdgo.GoUIntptr, _data:stdgo.Slice<stdgo.GoByte>):stdgo.Error {
                return _std._output(_pc, (0 : stdgo.GoInt), function(_buf:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
                    return (_buf.__append__(...(_data : Array<stdgo.GoUInt8>)));
                });
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class Logger_asInterface {
    @:keep
    public dynamic function writer():stdgo._internal.io.Io.Writer return __self__.value.writer();
    @:keep
    public dynamic function setPrefix(_prefix:stdgo.GoString):Void __self__.value.setPrefix(_prefix);
    @:keep
    public dynamic function prefix():stdgo.GoString return __self__.value.prefix();
    @:keep
    public dynamic function setFlags(_flag:stdgo.GoInt):Void __self__.value.setFlags(_flag);
    @:keep
    public dynamic function flags():stdgo.GoInt return __self__.value.flags();
    @:keep
    public dynamic function panicln(_v:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.panicln(..._v);
    @:keep
    public dynamic function panicf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.panicf(_format, ..._v);
    @:keep
    public dynamic function panic(_v:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.panic(..._v);
    @:keep
    public dynamic function fatalln(_v:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.fatalln(..._v);
    @:keep
    public dynamic function fatalf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.fatalf(_format, ..._v);
    @:keep
    public dynamic function fatal(_v:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.fatal(..._v);
    @:keep
    public dynamic function println(_v:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.println(..._v);
    @:keep
    public dynamic function printf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.printf(_format, ..._v);
    @:keep
    public dynamic function print(_v:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.print(..._v);
    @:keep
    public dynamic function _output(_pc:stdgo.GoUIntptr, _calldepth:stdgo.GoInt, _appendOutput:stdgo.Slice<stdgo.GoByte> -> stdgo.Slice<stdgo.GoByte>):stdgo.Error return __self__.value._output(_pc, _calldepth, _appendOutput);
    @:keep
    public dynamic function output(_calldepth:stdgo.GoInt, _s:stdgo.GoString):stdgo.Error return __self__.value.output(_calldepth, _s);
    @:keep
    public dynamic function setOutput(_w:stdgo._internal.io.Io.Writer):Void __self__.value.setOutput(_w);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Logger>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.log.Log.Logger_asInterface) class Logger_static_extension {
    @:keep
    static public function writer( _l:stdgo.Ref<Logger>):stdgo._internal.io.Io.Writer {
        @:recv var _l:stdgo.Ref<Logger> = _l;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _l._outMu.lock();
            __deferstack__.unshift(() -> _l._outMu.unlock());
            {
                final __ret__:stdgo._internal.io.Io.Writer = _l._out;
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function setPrefix( _l:stdgo.Ref<Logger>, _prefix:stdgo.GoString):Void {
        @:recv var _l:stdgo.Ref<Logger> = _l;
        _l._prefix.store(("" : stdgo.GoString), stdgo.Go.pointer(_prefix));
    }
    @:keep
    static public function prefix( _l:stdgo.Ref<Logger>):stdgo.GoString {
        @:recv var _l:stdgo.Ref<Logger> = _l;
        {
            var _p = _l._prefix.load(("" : stdgo.GoString));
            if (_p != null) {
                return _p.value?.__copy__();
            };
        };
        return stdgo.Go.str()?.__copy__();
    }
    @:keep
    static public function setFlags( _l:stdgo.Ref<Logger>, _flag:stdgo.GoInt):Void {
        @:recv var _l:stdgo.Ref<Logger> = _l;
        _l._flag.store((_flag : stdgo.GoInt32));
    }
    @:keep
    static public function flags( _l:stdgo.Ref<Logger>):stdgo.GoInt {
        @:recv var _l:stdgo.Ref<Logger> = _l;
        return (_l._flag.load() : stdgo.GoInt);
    }
    @:keep
    static public function panicln( _l:stdgo.Ref<Logger>, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<Logger> = _l;
        var _s = (stdgo._internal.fmt.Fmt.sprintln(...(_v : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
        _l.output((2 : stdgo.GoInt), _s?.__copy__());
        throw stdgo.Go.toInterface(_s);
    }
    @:keep
    static public function panicf( _l:stdgo.Ref<Logger>, _format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<Logger> = _l;
        var _s = (stdgo._internal.fmt.Fmt.sprintf(_format?.__copy__(), ...(_v : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
        _l.output((2 : stdgo.GoInt), _s?.__copy__());
        throw stdgo.Go.toInterface(_s);
    }
    @:keep
    static public function panic( _l:stdgo.Ref<Logger>, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<Logger> = _l;
        var _s = (stdgo._internal.fmt.Fmt.sprint(...(_v : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
        _l.output((2 : stdgo.GoInt), _s?.__copy__());
        throw stdgo.Go.toInterface(_s);
    }
    @:keep
    static public function fatalln( _l:stdgo.Ref<Logger>, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<Logger> = _l;
        _l.output((2 : stdgo.GoInt), stdgo._internal.fmt.Fmt.sprintln(...(_v : Array<stdgo.AnyInterface>))?.__copy__());
        Sys.exit((1 : stdgo.GoInt));
    }
    @:keep
    static public function fatalf( _l:stdgo.Ref<Logger>, _format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<Logger> = _l;
        _l.output((2 : stdgo.GoInt), stdgo._internal.fmt.Fmt.sprintf(_format?.__copy__(), ...(_v : Array<stdgo.AnyInterface>))?.__copy__());
        Sys.exit((1 : stdgo.GoInt));
    }
    @:keep
    static public function fatal( _l:stdgo.Ref<Logger>, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<Logger> = _l;
        _l.output((2 : stdgo.GoInt), stdgo._internal.fmt.Fmt.sprint(...(_v : Array<stdgo.AnyInterface>))?.__copy__());
        Sys.exit((1 : stdgo.GoInt));
    }
    @:keep
    static public function println( _l:stdgo.Ref<Logger>, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<Logger> = _l;
        _l._output((0 : stdgo.GoUIntptr), (2 : stdgo.GoInt), function(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
            return stdgo._internal.fmt.Fmt.appendln(_b, ...(_v : Array<stdgo.AnyInterface>));
        });
    }
    @:keep
    static public function printf( _l:stdgo.Ref<Logger>, _format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<Logger> = _l;
        _l._output((0 : stdgo.GoUIntptr), (2 : stdgo.GoInt), function(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
            return stdgo._internal.fmt.Fmt.appendf(_b, _format?.__copy__(), ...(_v : Array<stdgo.AnyInterface>));
        });
    }
    @:keep
    static public function print( _l:stdgo.Ref<Logger>, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        var _v = new stdgo.Slice<stdgo.AnyInterface>(_v.length, 0, ..._v);
        @:recv var _l:stdgo.Ref<Logger> = _l;
        _l._output((0 : stdgo.GoUIntptr), (2 : stdgo.GoInt), function(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
            return stdgo._internal.fmt.Fmt.append(_b, ...(_v : Array<stdgo.AnyInterface>));
        });
    }
    @:keep
    static public function _output( _l:stdgo.Ref<Logger>, _pc:stdgo.GoUIntptr, _calldepth:stdgo.GoInt, _appendOutput:stdgo.Slice<stdgo.GoByte> -> stdgo.Slice<stdgo.GoByte>):stdgo.Error {
        @:recv var _l:stdgo.Ref<Logger> = _l;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_l._isDiscard.load()) {
                return (null : stdgo.Error);
            };
            var _now = (stdgo._internal.time.Time.now()?.__copy__() : stdgo._internal.time.Time.Time);
            var _prefix = (_l.prefix()?.__copy__() : stdgo.GoString);
            var _flag = (_l.flags() : stdgo.GoInt);
            var _file:stdgo.GoString = ("" : stdgo.GoString);
            var _line:stdgo.GoInt = (0 : stdgo.GoInt);
            if ((_flag & (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                if (_pc == ((0 : stdgo.GoUIntptr))) {
                    var _ok:Bool = false;
                    {
                        var __tmp__ = stdgo._internal.runtime.Runtime.caller(_calldepth);
                        _file = __tmp__._1?.__copy__();
                        _line = __tmp__._2;
                        _ok = __tmp__._3;
                    };
                    if (!_ok) {
                        _file = ("???" : stdgo.GoString);
                        _line = (0 : stdgo.GoInt);
                    };
                } else {
                    var _fs = stdgo._internal.runtime.Runtime.callersFrames((new stdgo.Slice<stdgo.GoUIntptr>(1, 1, ...[_pc]) : stdgo.Slice<stdgo.GoUIntptr>));
                    var __tmp__ = _fs.next(), _f:stdgo._internal.runtime.Runtime.Frame = __tmp__._0, __35:Bool = __tmp__._1;
                    _file = _f.file?.__copy__();
                    if (_file == (stdgo.Go.str())) {
                        _file = ("???" : stdgo.GoString);
                    };
                    _line = _f.line;
                };
            };
            var _buf = _getBuffer();
            {
                var _a0 = _buf;
                __deferstack__.unshift(() -> _putBuffer(_a0));
            };
            _formatHeader(_buf, _now?.__copy__(), _prefix?.__copy__(), _flag, _file?.__copy__(), _line);
            (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(_appendOutput((_buf : stdgo.Slice<stdgo.GoUInt8>)));
            if ((((_buf : stdgo.Slice<stdgo.GoUInt8>).length == (0 : stdgo.GoInt)) || (((_buf : stdgo.Slice<stdgo.GoUInt8>))[(((_buf : stdgo.Slice<stdgo.GoUInt8>).length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != (10 : stdgo.GoUInt8)) : Bool)) {
                (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__((10 : stdgo.GoUInt8))));
            };
            _l._outMu.lock();
            __deferstack__.unshift(() -> _l._outMu.unlock());
            var __tmp__ = _l._out.write((_buf : stdgo.Slice<stdgo.GoUInt8>)), __72:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function output( _l:stdgo.Ref<Logger>, _calldepth:stdgo.GoInt, _s:stdgo.GoString):stdgo.Error {
        @:recv var _l:stdgo.Ref<Logger> = _l;
        _calldepth++;
        return _l._output((0 : stdgo.GoUIntptr), _calldepth, function(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
            return (_b.__append__(...(_s : Array<stdgo.GoUInt8>)));
        });
    }
    @:keep
    static public function setOutput( _l:stdgo.Ref<Logger>, _w:stdgo._internal.io.Io.Writer):Void {
        @:recv var _l:stdgo.Ref<Logger> = _l;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _l._outMu.lock();
            __deferstack__.unshift(() -> _l._outMu.unlock());
            _l._out = _w;
            _l._isDiscard.store(stdgo.Go.toInterface(_w) == (stdgo.Go.toInterface(stdgo._internal.io.Io.discard)));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
}
class T_discard_asInterface {
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_discard>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.log.Log.T_discard_asInterface) class T_discard_static_extension {
    @:keep
    static public function write( _:T_discard, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:T_discard = _?.__copy__();
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
}
