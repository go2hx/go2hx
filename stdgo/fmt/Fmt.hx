package stdgo.fmt;
var isSpace(get, set) : stdgo.GoInt32 -> Bool;
private function get_isSpace():stdgo.GoInt32 -> Bool return _0 -> stdgo._internal.fmt.Fmt_isSpace.isSpace(_0);
private function set_isSpace(v:stdgo.GoInt32 -> Bool):stdgo.GoInt32 -> Bool {
        stdgo._internal.fmt.Fmt_isSpace.isSpace = v;
        return v;
    }
var parsenum(get, set) : (stdgo.GoString, stdgo.GoInt, stdgo.GoInt) -> { var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoInt; };
private function get_parsenum():(stdgo.GoString, stdgo.GoInt, stdgo.GoInt) -> { var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoInt; } return (_0, _1, _2) -> stdgo._internal.fmt.Fmt_parsenum.parsenum(_0, _1, _2);
private function set_parsenum(v:(stdgo.GoString, stdgo.GoInt, stdgo.GoInt) -> { var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoInt; }):(stdgo.GoString, stdgo.GoInt, stdgo.GoInt) -> { var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoInt; } {
        stdgo._internal.fmt.Fmt_parsenum.parsenum = v;
        return v;
    }
class State_static_extension {
    static public function flag(t:stdgo._internal.fmt.Fmt_State.State, _c:StdTypes.Int):Bool {
        return stdgo._internal.fmt.Fmt_State_static_extension.State_static_extension.flag(t, _c);
    }
    static public function precision(t:stdgo._internal.fmt.Fmt_State.State):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.fmt.Fmt_State_static_extension.State_static_extension.precision(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function width(t:stdgo._internal.fmt.Fmt_State.State):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.fmt.Fmt_State_static_extension.State_static_extension.width(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(t:stdgo._internal.fmt.Fmt_State.State, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.fmt.Fmt_State_static_extension.State_static_extension.write(t, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef State = stdgo._internal.fmt.Fmt_State.State;
class Formatter_static_extension {
    static public function format(t:stdgo._internal.fmt.Fmt_Formatter.Formatter, _f:State, _verb:StdTypes.Int):Void {
        stdgo._internal.fmt.Fmt_Formatter_static_extension.Formatter_static_extension.format(t, _f, _verb);
    }
}
typedef Formatter = stdgo._internal.fmt.Fmt_Formatter.Formatter;
class Stringer_static_extension {
    static public function string(t:stdgo._internal.fmt.Fmt_Stringer.Stringer):String {
        return stdgo._internal.fmt.Fmt_Stringer_static_extension.Stringer_static_extension.string(t);
    }
}
typedef Stringer = stdgo._internal.fmt.Fmt_Stringer.Stringer;
class GoStringer_static_extension {
    static public function goString(t:stdgo._internal.fmt.Fmt_GoStringer.GoStringer):String {
        return stdgo._internal.fmt.Fmt_GoStringer_static_extension.GoStringer_static_extension.goString(t);
    }
}
typedef GoStringer = stdgo._internal.fmt.Fmt_GoStringer.GoStringer;
class ScanState_static_extension {
    static public function read(t:stdgo._internal.fmt.Fmt_ScanState.ScanState, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.fmt.Fmt_ScanState_static_extension.ScanState_static_extension.read(t, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function width(t:stdgo._internal.fmt.Fmt_ScanState.ScanState):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.fmt.Fmt_ScanState_static_extension.ScanState_static_extension.width(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function token(t:stdgo._internal.fmt.Fmt_ScanState.ScanState, _skipSpace:Bool, _f:stdgo.GoInt32 -> Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _f = _f;
        return {
            final obj = stdgo._internal.fmt.Fmt_ScanState_static_extension.ScanState_static_extension.token(t, _skipSpace, _f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function skipSpace(t:stdgo._internal.fmt.Fmt_ScanState.ScanState):Void {
        stdgo._internal.fmt.Fmt_ScanState_static_extension.ScanState_static_extension.skipSpace(t);
    }
    static public function unreadRune(t:stdgo._internal.fmt.Fmt_ScanState.ScanState):stdgo.Error {
        return stdgo._internal.fmt.Fmt_ScanState_static_extension.ScanState_static_extension.unreadRune(t);
    }
    static public function readRune(t:stdgo._internal.fmt.Fmt_ScanState.ScanState):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_ScanState_static_extension.ScanState_static_extension.readRune(t);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
typedef ScanState = stdgo._internal.fmt.Fmt_ScanState.ScanState;
class Scanner_static_extension {
    static public function scan(t:stdgo._internal.fmt.Fmt_Scanner.Scanner, _state:ScanState, _verb:StdTypes.Int):stdgo.Error {
        return stdgo._internal.fmt.Fmt_Scanner_static_extension.Scanner_static_extension.scan(t, _state, _verb);
    }
}
typedef Scanner = stdgo._internal.fmt.Fmt_Scanner.Scanner;
@:structInit @:using(stdgo.fmt.Fmt.T_wrapError_static_extension) abstract T_wrapError(stdgo._internal.fmt.Fmt_T_wrapError.T_wrapError) from stdgo._internal.fmt.Fmt_T_wrapError.T_wrapError to stdgo._internal.fmt.Fmt_T_wrapError.T_wrapError {
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_msg:String, ?_err:stdgo.Error) this = new stdgo._internal.fmt.Fmt_T_wrapError.T_wrapError(_msg, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.fmt.Fmt.T_wrapErrors_static_extension) abstract T_wrapErrors(stdgo._internal.fmt.Fmt_T_wrapErrors.T_wrapErrors) from stdgo._internal.fmt.Fmt_T_wrapErrors.T_wrapErrors to stdgo._internal.fmt.Fmt_T_wrapErrors.T_wrapErrors {
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = v;
        return v;
    }
    public var _errs(get, set) : Array<stdgo.Error>;
    function get__errs():Array<stdgo.Error> return [for (i in this._errs) i];
    function set__errs(v:Array<stdgo.Error>):Array<stdgo.Error> {
        this._errs = ([for (i in v) i] : stdgo.Slice<stdgo.Error>);
        return v;
    }
    public function new(?_msg:String, ?_errs:Array<stdgo.Error>) this = new stdgo._internal.fmt.Fmt_T_wrapErrors.T_wrapErrors(_msg, ([for (i in _errs) i] : stdgo.Slice<stdgo.Error>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_fmtFlags(stdgo._internal.fmt.Fmt_T_fmtFlags.T_fmtFlags) from stdgo._internal.fmt.Fmt_T_fmtFlags.T_fmtFlags to stdgo._internal.fmt.Fmt_T_fmtFlags.T_fmtFlags {
    public var _widPresent(get, set) : Bool;
    function get__widPresent():Bool return this._widPresent;
    function set__widPresent(v:Bool):Bool {
        this._widPresent = v;
        return v;
    }
    public var _precPresent(get, set) : Bool;
    function get__precPresent():Bool return this._precPresent;
    function set__precPresent(v:Bool):Bool {
        this._precPresent = v;
        return v;
    }
    public var _minus(get, set) : Bool;
    function get__minus():Bool return this._minus;
    function set__minus(v:Bool):Bool {
        this._minus = v;
        return v;
    }
    public var _plus(get, set) : Bool;
    function get__plus():Bool return this._plus;
    function set__plus(v:Bool):Bool {
        this._plus = v;
        return v;
    }
    public var _sharp(get, set) : Bool;
    function get__sharp():Bool return this._sharp;
    function set__sharp(v:Bool):Bool {
        this._sharp = v;
        return v;
    }
    public var _space(get, set) : Bool;
    function get__space():Bool return this._space;
    function set__space(v:Bool):Bool {
        this._space = v;
        return v;
    }
    public var _zero(get, set) : Bool;
    function get__zero():Bool return this._zero;
    function set__zero(v:Bool):Bool {
        this._zero = v;
        return v;
    }
    public var _plusV(get, set) : Bool;
    function get__plusV():Bool return this._plusV;
    function set__plusV(v:Bool):Bool {
        this._plusV = v;
        return v;
    }
    public var _sharpV(get, set) : Bool;
    function get__sharpV():Bool return this._sharpV;
    function set__sharpV(v:Bool):Bool {
        this._sharpV = v;
        return v;
    }
    public function new(?_widPresent:Bool, ?_precPresent:Bool, ?_minus:Bool, ?_plus:Bool, ?_sharp:Bool, ?_space:Bool, ?_zero:Bool, ?_plusV:Bool, ?_sharpV:Bool) this = new stdgo._internal.fmt.Fmt_T_fmtFlags.T_fmtFlags(_widPresent, _precPresent, _minus, _plus, _sharp, _space, _zero, _plusV, _sharpV);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.fmt.Fmt.T_fmt_static_extension) abstract T_fmt(stdgo._internal.fmt.Fmt_T_fmt.T_fmt) from stdgo._internal.fmt.Fmt_T_fmt.T_fmt to stdgo._internal.fmt.Fmt_T_fmt.T_fmt {
    public var _buf(get, set) : T_buffer;
    function get__buf():T_buffer return this._buf;
    function set__buf(v:T_buffer):T_buffer {
        this._buf = v;
        return v;
    }
    public var _fmtFlags(get, set) : T_fmtFlags;
    function get__fmtFlags():T_fmtFlags return this._fmtFlags;
    function set__fmtFlags(v:T_fmtFlags):T_fmtFlags {
        this._fmtFlags = v;
        return v;
    }
    public var _wid(get, set) : StdTypes.Int;
    function get__wid():StdTypes.Int return this._wid;
    function set__wid(v:StdTypes.Int):StdTypes.Int {
        this._wid = v;
        return v;
    }
    public var _prec(get, set) : StdTypes.Int;
    function get__prec():StdTypes.Int return this._prec;
    function set__prec(v:StdTypes.Int):StdTypes.Int {
        this._prec = v;
        return v;
    }
    public var _intbuf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__intbuf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._intbuf) i]);
    function set__intbuf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._intbuf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_buf:T_buffer, ?_fmtFlags:T_fmtFlags, ?_wid:StdTypes.Int, ?_prec:StdTypes.Int, ?_intbuf:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.fmt.Fmt_T_fmt.T_fmt(_buf, _fmtFlags, _wid, _prec, ([for (i in _intbuf) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.fmt.Fmt.T_pp_static_extension) abstract T_pp(stdgo._internal.fmt.Fmt_T_pp.T_pp) from stdgo._internal.fmt.Fmt_T_pp.T_pp to stdgo._internal.fmt.Fmt_T_pp.T_pp {
    public var _buf(get, set) : T_buffer;
    function get__buf():T_buffer return this._buf;
    function set__buf(v:T_buffer):T_buffer {
        this._buf = v;
        return v;
    }
    public var _arg(get, set) : stdgo.AnyInterface;
    function get__arg():stdgo.AnyInterface return this._arg;
    function set__arg(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._arg = v;
        return v;
    }
    public var _value(get, set) : stdgo._internal.reflect.Reflect_Value.Value;
    function get__value():stdgo._internal.reflect.Reflect_Value.Value return this._value;
    function set__value(v:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        this._value = v;
        return v;
    }
    public var _fmt(get, set) : T_fmt;
    function get__fmt():T_fmt return this._fmt;
    function set__fmt(v:T_fmt):T_fmt {
        this._fmt = v;
        return v;
    }
    public var _reordered(get, set) : Bool;
    function get__reordered():Bool return this._reordered;
    function set__reordered(v:Bool):Bool {
        this._reordered = v;
        return v;
    }
    public var _goodArgNum(get, set) : Bool;
    function get__goodArgNum():Bool return this._goodArgNum;
    function set__goodArgNum(v:Bool):Bool {
        this._goodArgNum = v;
        return v;
    }
    public var _panicking(get, set) : Bool;
    function get__panicking():Bool return this._panicking;
    function set__panicking(v:Bool):Bool {
        this._panicking = v;
        return v;
    }
    public var _erroring(get, set) : Bool;
    function get__erroring():Bool return this._erroring;
    function set__erroring(v:Bool):Bool {
        this._erroring = v;
        return v;
    }
    public var _wrapErrs(get, set) : Bool;
    function get__wrapErrs():Bool return this._wrapErrs;
    function set__wrapErrs(v:Bool):Bool {
        this._wrapErrs = v;
        return v;
    }
    public var _wrappedErrs(get, set) : Array<StdTypes.Int>;
    function get__wrappedErrs():Array<StdTypes.Int> return [for (i in this._wrappedErrs) i];
    function set__wrappedErrs(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._wrappedErrs = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?_buf:T_buffer, ?_arg:stdgo.AnyInterface, ?_value:stdgo._internal.reflect.Reflect_Value.Value, ?_fmt:T_fmt, ?_reordered:Bool, ?_goodArgNum:Bool, ?_panicking:Bool, ?_erroring:Bool, ?_wrapErrs:Bool, ?_wrappedErrs:Array<StdTypes.Int>) this = new stdgo._internal.fmt.Fmt_T_pp.T_pp(_buf, _arg, _value, _fmt, _reordered, _goodArgNum, _panicking, _erroring, _wrapErrs, ([for (i in _wrappedErrs) i] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_scanError(stdgo._internal.fmt.Fmt_T_scanError.T_scanError) from stdgo._internal.fmt.Fmt_T_scanError.T_scanError to stdgo._internal.fmt.Fmt_T_scanError.T_scanError {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.fmt.Fmt_T_scanError.T_scanError(_err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.fmt.Fmt.T_ss_static_extension) abstract T_ss(stdgo._internal.fmt.Fmt_T_ss.T_ss) from stdgo._internal.fmt.Fmt_T_ss.T_ss to stdgo._internal.fmt.Fmt_T_ss.T_ss {
    public var _rs(get, set) : stdgo._internal.io.Io_RuneScanner.RuneScanner;
    function get__rs():stdgo._internal.io.Io_RuneScanner.RuneScanner return this._rs;
    function set__rs(v:stdgo._internal.io.Io_RuneScanner.RuneScanner):stdgo._internal.io.Io_RuneScanner.RuneScanner {
        this._rs = v;
        return v;
    }
    public var _buf(get, set) : T_buffer;
    function get__buf():T_buffer return this._buf;
    function set__buf(v:T_buffer):T_buffer {
        this._buf = v;
        return v;
    }
    public var _count(get, set) : StdTypes.Int;
    function get__count():StdTypes.Int return this._count;
    function set__count(v:StdTypes.Int):StdTypes.Int {
        this._count = v;
        return v;
    }
    public var _atEOF(get, set) : Bool;
    function get__atEOF():Bool return this._atEOF;
    function set__atEOF(v:Bool):Bool {
        this._atEOF = v;
        return v;
    }
    public var _ssave(get, set) : T_ssave;
    function get__ssave():T_ssave return this._ssave;
    function set__ssave(v:T_ssave):T_ssave {
        this._ssave = v;
        return v;
    }
    public function new(?_rs:stdgo._internal.io.Io_RuneScanner.RuneScanner, ?_buf:T_buffer, ?_count:StdTypes.Int, ?_atEOF:Bool, ?_ssave:T_ssave) this = new stdgo._internal.fmt.Fmt_T_ss.T_ss(_rs, _buf, _count, _atEOF, _ssave);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_ssave(stdgo._internal.fmt.Fmt_T_ssave.T_ssave) from stdgo._internal.fmt.Fmt_T_ssave.T_ssave to stdgo._internal.fmt.Fmt_T_ssave.T_ssave {
    public var _validSave(get, set) : Bool;
    function get__validSave():Bool return this._validSave;
    function set__validSave(v:Bool):Bool {
        this._validSave = v;
        return v;
    }
    public var _nlIsEnd(get, set) : Bool;
    function get__nlIsEnd():Bool return this._nlIsEnd;
    function set__nlIsEnd(v:Bool):Bool {
        this._nlIsEnd = v;
        return v;
    }
    public var _nlIsSpace(get, set) : Bool;
    function get__nlIsSpace():Bool return this._nlIsSpace;
    function set__nlIsSpace(v:Bool):Bool {
        this._nlIsSpace = v;
        return v;
    }
    public var _argLimit(get, set) : StdTypes.Int;
    function get__argLimit():StdTypes.Int return this._argLimit;
    function set__argLimit(v:StdTypes.Int):StdTypes.Int {
        this._argLimit = v;
        return v;
    }
    public var _limit(get, set) : StdTypes.Int;
    function get__limit():StdTypes.Int return this._limit;
    function set__limit(v:StdTypes.Int):StdTypes.Int {
        this._limit = v;
        return v;
    }
    public var _maxWid(get, set) : StdTypes.Int;
    function get__maxWid():StdTypes.Int return this._maxWid;
    function set__maxWid(v:StdTypes.Int):StdTypes.Int {
        this._maxWid = v;
        return v;
    }
    public function new(?_validSave:Bool, ?_nlIsEnd:Bool, ?_nlIsSpace:Bool, ?_argLimit:StdTypes.Int, ?_limit:StdTypes.Int, ?_maxWid:StdTypes.Int) this = new stdgo._internal.fmt.Fmt_T_ssave.T_ssave(_validSave, _nlIsEnd, _nlIsSpace, _argLimit, _limit, _maxWid);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.fmt.Fmt.T_readRune_static_extension) abstract T_readRune(stdgo._internal.fmt.Fmt_T_readRune.T_readRune) from stdgo._internal.fmt.Fmt_T_readRune.T_readRune to stdgo._internal.fmt.Fmt_T_readRune.T_readRune {
    public var _reader(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__reader():stdgo._internal.io.Io_Reader.Reader return this._reader;
    function set__reader(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._reader = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _pending(get, set) : StdTypes.Int;
    function get__pending():StdTypes.Int return this._pending;
    function set__pending(v:StdTypes.Int):StdTypes.Int {
        this._pending = v;
        return v;
    }
    public var _pendBuf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__pendBuf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._pendBuf) i]);
    function set__pendBuf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._pendBuf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _peekRune(get, set) : StdTypes.Int;
    function get__peekRune():StdTypes.Int return this._peekRune;
    function set__peekRune(v:StdTypes.Int):StdTypes.Int {
        this._peekRune = v;
        return v;
    }
    public function new(?_reader:stdgo._internal.io.Io_Reader.Reader, ?_buf:haxe.ds.Vector<std.UInt>, ?_pending:StdTypes.Int, ?_pendBuf:haxe.ds.Vector<std.UInt>, ?_peekRune:StdTypes.Int) this = new stdgo._internal.fmt.Fmt_T_readRune.T_readRune(_reader, ([for (i in _buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _pending, ([for (i in _pendBuf) i] : stdgo.GoArray<stdgo.GoUInt8>), _peekRune);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_buffer = stdgo._internal.fmt.Fmt_T_buffer.T_buffer;
typedef T_stringReader = stdgo._internal.fmt.Fmt_T_stringReader.T_stringReader;
typedef T_wrapErrorPointer = stdgo._internal.fmt.Fmt_T_wrapErrorPointer.T_wrapErrorPointer;
class T_wrapError_static_extension {
    static public function unwrap(_e:T_wrapError):stdgo.Error {
        return stdgo._internal.fmt.Fmt_T_wrapError_static_extension.T_wrapError_static_extension.unwrap(_e);
    }
    static public function error(_e:T_wrapError):String {
        return stdgo._internal.fmt.Fmt_T_wrapError_static_extension.T_wrapError_static_extension.error(_e);
    }
}
typedef T_wrapErrorsPointer = stdgo._internal.fmt.Fmt_T_wrapErrorsPointer.T_wrapErrorsPointer;
class T_wrapErrors_static_extension {
    static public function unwrap(_e:T_wrapErrors):Array<stdgo.Error> {
        return [for (i in stdgo._internal.fmt.Fmt_T_wrapErrors_static_extension.T_wrapErrors_static_extension.unwrap(_e)) i];
    }
    static public function error(_e:T_wrapErrors):String {
        return stdgo._internal.fmt.Fmt_T_wrapErrors_static_extension.T_wrapErrors_static_extension.error(_e);
    }
}
typedef T_fmtPointer = stdgo._internal.fmt.Fmt_T_fmtPointer.T_fmtPointer;
class T_fmt_static_extension {
    static public function _fmtFloat(_f:T_fmt, _v:StdTypes.Float, _size:StdTypes.Int, _verb:StdTypes.Int, _prec:StdTypes.Int):Void {
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtFloat(_f, _v, _size, _verb, _prec);
    }
    static public function _fmtQc(_f:T_fmt, _c:haxe.UInt64):Void {
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtQc(_f, _c);
    }
    static public function _fmtC(_f:T_fmt, _c:haxe.UInt64):Void {
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtC(_f, _c);
    }
    static public function _fmtQ(_f:T_fmt, _s:String):Void {
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtQ(_f, _s);
    }
    static public function _fmtBx(_f:T_fmt, _b:Array<std.UInt>, _digits:String):Void {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtBx(_f, _b, _digits);
    }
    static public function _fmtSx(_f:T_fmt, _s:String, _digits:String):Void {
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtSx(_f, _s, _digits);
    }
    static public function _fmtSbx(_f:T_fmt, _s:String, _b:Array<std.UInt>, _digits:String):Void {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtSbx(_f, _s, _b, _digits);
    }
    static public function _fmtBs(_f:T_fmt, _b:Array<std.UInt>):Void {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtBs(_f, _b);
    }
    static public function _fmtS(_f:T_fmt, _s:String):Void {
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtS(_f, _s);
    }
    static public function _truncate(_f:T_fmt, _b:Array<std.UInt>):Array<std.UInt> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._truncate(_f, _b)) i];
    }
    static public function _truncateString(_f:T_fmt, _s:String):String {
        return stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._truncateString(_f, _s);
    }
    static public function _fmtInteger(_f:T_fmt, _u:haxe.UInt64, _base:StdTypes.Int, _isSigned:Bool, _verb:StdTypes.Int, _digits:String):Void {
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtInteger(_f, _u, _base, _isSigned, _verb, _digits);
    }
    static public function _fmtUnicode(_f:T_fmt, _u:haxe.UInt64):Void {
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtUnicode(_f, _u);
    }
    static public function _fmtBoolean(_f:T_fmt, _v:Bool):Void {
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._fmtBoolean(_f, _v);
    }
    static public function _padString(_f:T_fmt, _s:String):Void {
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._padString(_f, _s);
    }
    static public function _pad(_f:T_fmt, _b:Array<std.UInt>):Void {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._pad(_f, _b);
    }
    static public function _writePadding(_f:T_fmt, _n:StdTypes.Int):Void {
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._writePadding(_f, _n);
    }
    static public function _init(_f:T_fmt, _buf:T_buffer):Void {
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._init(_f, _buf);
    }
    static public function _clearflags(_f:T_fmt):Void {
        stdgo._internal.fmt.Fmt_T_fmt_static_extension.T_fmt_static_extension._clearflags(_f);
    }
}
typedef T_ppPointer = stdgo._internal.fmt.Fmt_T_ppPointer.T_ppPointer;
class T_pp_static_extension {
    static public function _doPrintln(_p:T_pp, _a:Array<stdgo.AnyInterface>):Void {
        final _a = ([for (i in _a) i] : stdgo.Slice<stdgo.AnyInterface>);
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._doPrintln(_p, _a);
    }
    static public function _doPrint(_p:T_pp, _a:Array<stdgo.AnyInterface>):Void {
        final _a = ([for (i in _a) i] : stdgo.Slice<stdgo.AnyInterface>);
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._doPrint(_p, _a);
    }
    static public function _doPrintf(_p:T_pp, _format:String, _a:Array<stdgo.AnyInterface>):Void {
        final _a = ([for (i in _a) i] : stdgo.Slice<stdgo.AnyInterface>);
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._doPrintf(_p, _format, _a);
    }
    static public function _missingArg(_p:T_pp, _verb:StdTypes.Int):Void {
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._missingArg(_p, _verb);
    }
    static public function _badArgNum(_p:T_pp, _verb:StdTypes.Int):Void {
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._badArgNum(_p, _verb);
    }
    static public function _argNumber(_p:T_pp, _argNum:StdTypes.Int, _format:String, _i:StdTypes.Int, _numArgs:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._argNumber(_p, _argNum, _format, _i, _numArgs);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _printValue(_p:T_pp, _value:stdgo._internal.reflect.Reflect_Value.Value, _verb:StdTypes.Int, _depth:StdTypes.Int):Void {
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._printValue(_p, _value, _verb, _depth);
    }
    static public function _printArg(_p:T_pp, _arg:stdgo.AnyInterface, _verb:StdTypes.Int):Void {
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._printArg(_p, _arg, _verb);
    }
    static public function _handleMethods(_p:T_pp, _verb:StdTypes.Int):Bool {
        return stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._handleMethods(_p, _verb);
    }
    static public function _catchPanic(_p:T_pp, _arg:stdgo.AnyInterface, _verb:StdTypes.Int, _method:String):Void {
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._catchPanic(_p, _arg, _verb, _method);
    }
    static public function _fmtPointer(_p:T_pp, _value:stdgo._internal.reflect.Reflect_Value.Value, _verb:StdTypes.Int):Void {
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._fmtPointer(_p, _value, _verb);
    }
    static public function _fmtBytes(_p:T_pp, _v:Array<std.UInt>, _verb:StdTypes.Int, _typeString:String):Void {
        final _v = ([for (i in _v) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._fmtBytes(_p, _v, _verb, _typeString);
    }
    static public function _fmtString(_p:T_pp, _v:String, _verb:StdTypes.Int):Void {
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._fmtString(_p, _v, _verb);
    }
    static public function _fmtComplex(_p:T_pp, _v:stdgo.GoComplex128, _size:StdTypes.Int, _verb:StdTypes.Int):Void {
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._fmtComplex(_p, _v, _size, _verb);
    }
    static public function _fmtFloat(_p:T_pp, _v:StdTypes.Float, _size:StdTypes.Int, _verb:StdTypes.Int):Void {
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._fmtFloat(_p, _v, _size, _verb);
    }
    static public function _fmtInteger(_p:T_pp, _v:haxe.UInt64, _isSigned:Bool, _verb:StdTypes.Int):Void {
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._fmtInteger(_p, _v, _isSigned, _verb);
    }
    static public function _fmt0x64(_p:T_pp, _v:haxe.UInt64, _leading0x:Bool):Void {
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._fmt0x64(_p, _v, _leading0x);
    }
    static public function _fmtBool(_p:T_pp, _v:Bool, _verb:StdTypes.Int):Void {
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._fmtBool(_p, _v, _verb);
    }
    static public function _badVerb(_p:T_pp, _verb:StdTypes.Int):Void {
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._badVerb(_p, _verb);
    }
    static public function _unknownType(_p:T_pp, _v:stdgo._internal.reflect.Reflect_Value.Value):Void {
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._unknownType(_p, _v);
    }
    static public function writeString(_p:T_pp, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension.writeString(_p, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_p:T_pp, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension.write(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function flag(_p:T_pp, _b:StdTypes.Int):Bool {
        return stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension.flag(_p, _b);
    }
    static public function precision(_p:T_pp):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension.precision(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function width(_p:T_pp):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension.width(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _free(_p:T_pp):Void {
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._free(_p);
    }
}
typedef T_ssPointer = stdgo._internal.fmt.Fmt_T_ssPointer.T_ssPointer;
class T_ss_static_extension {
    static public function _doScanf(_s:T_ss, _format:String, _a:Array<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _a = ([for (i in _a) i] : stdgo.Slice<stdgo.AnyInterface>);
        return {
            final obj = stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._doScanf(_s, _format, _a);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _advance(_s:T_ss, _format:String):StdTypes.Int {
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._advance(_s, _format);
    }
    static public function _doScan(_s:T_ss, _a:Array<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _a = ([for (i in _a) i] : stdgo.Slice<stdgo.AnyInterface>);
        return {
            final obj = stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._doScan(_s, _a);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _scanOne(_s:T_ss, _verb:StdTypes.Int, _arg:stdgo.AnyInterface):Void {
        stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._scanOne(_s, _verb, _arg);
    }
    static public function _scanPercent(_s:T_ss):Void {
        stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._scanPercent(_s);
    }
    static public function _hexString(_s:T_ss):String {
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._hexString(_s);
    }
    static public function _hexByte(_s:T_ss):stdgo.Tuple<std.UInt, Bool> {
        return {
            final obj = stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._hexByte(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _quotedString(_s:T_ss):String {
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._quotedString(_s);
    }
    static public function _convertString(_s:T_ss, _verb:StdTypes.Int):String {
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._convertString(_s, _verb);
    }
    static public function _scanComplex(_s:T_ss, _verb:StdTypes.Int, _n:StdTypes.Int):stdgo.GoComplex128 {
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._scanComplex(_s, _verb, _n);
    }
    static public function _convertFloat(_s:T_ss, _str:String, _n:StdTypes.Int):StdTypes.Float {
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._convertFloat(_s, _str, _n);
    }
    static public function _complexTokens(_s:T_ss):stdgo.Tuple<String, String> {
        return {
            final obj = stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._complexTokens(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _floatToken(_s:T_ss):String {
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._floatToken(_s);
    }
    static public function _scanUint(_s:T_ss, _verb:StdTypes.Int, _bitSize:StdTypes.Int):haxe.UInt64 {
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._scanUint(_s, _verb, _bitSize);
    }
    static public function _scanInt(_s:T_ss, _verb:StdTypes.Int, _bitSize:StdTypes.Int):haxe.Int64 {
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._scanInt(_s, _verb, _bitSize);
    }
    static public function _scanBasePrefix(_s:T_ss):stdgo.Tuple.Tuple3<StdTypes.Int, String, Bool> {
        return {
            final obj = stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._scanBasePrefix(_s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _scanRune(_s:T_ss, _bitSize:StdTypes.Int):haxe.Int64 {
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._scanRune(_s, _bitSize);
    }
    static public function _scanNumber(_s:T_ss, _digits:String, _haveDigits:Bool):String {
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._scanNumber(_s, _digits, _haveDigits);
    }
    static public function _getBase(_s:T_ss, _verb:StdTypes.Int):stdgo.Tuple<StdTypes.Int, String> {
        return {
            final obj = stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._getBase(_s, _verb);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _scanBool(_s:T_ss, _verb:StdTypes.Int):Bool {
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._scanBool(_s, _verb);
    }
    static public function _okVerb(_s:T_ss, _verb:StdTypes.Int, _okVerbs:String, _typ:String):Bool {
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._okVerb(_s, _verb, _okVerbs, _typ);
    }
    static public function _accept(_s:T_ss, _ok:String):Bool {
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._accept(_s, _ok);
    }
    static public function _notEOF(_s:T_ss):Void {
        stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._notEOF(_s);
    }
    static public function _peek(_s:T_ss, _ok:String):Bool {
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._peek(_s, _ok);
    }
    static public function _consume(_s:T_ss, _ok:String, _accept:Bool):Bool {
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._consume(_s, _ok, _accept);
    }
    static public function _token(_s:T_ss, _skipSpace:Bool, _f:stdgo.GoInt32 -> Bool):Array<std.UInt> {
        final _f = _f;
        return [for (i in stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._token(_s, _skipSpace, _f)) i];
    }
    static public function skipSpace(_s:T_ss):Void {
        stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension.skipSpace(_s);
    }
    static public function _free(_s:T_ss, _old:T_ssave):Void {
        stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._free(_s, _old);
    }
    static public function token(_s:T_ss, _skipSpace:Bool, _f:stdgo.GoInt32 -> Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _f = _f;
        return {
            final obj = stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension.token(_s, _skipSpace, _f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _errorString(_s:T_ss, _err:String):Void {
        stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._errorString(_s, _err);
    }
    static public function _error(_s:T_ss, _err:stdgo.Error):Void {
        stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._error(_s, _err);
    }
    static public function unreadRune(_s:T_ss):stdgo.Error {
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension.unreadRune(_s);
    }
    static public function _mustReadRune(_s:T_ss):StdTypes.Int {
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._mustReadRune(_s);
    }
    static public function _getRune(_s:T_ss):StdTypes.Int {
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._getRune(_s);
    }
    static public function width(_s:T_ss):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension.width(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readRune(_s:T_ss):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension.readRune(_s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function read(_s:T_ss, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension.read(_s, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_readRunePointer = stdgo._internal.fmt.Fmt_T_readRunePointer.T_readRunePointer;
class T_readRune_static_extension {
    static public function unreadRune(_r:T_readRune):stdgo.Error {
        return stdgo._internal.fmt.Fmt_T_readRune_static_extension.T_readRune_static_extension.unreadRune(_r);
    }
    static public function readRune(_r:T_readRune):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_T_readRune_static_extension.T_readRune_static_extension.readRune(_r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _readByte(_r:T_readRune):stdgo.Tuple<std.UInt, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_T_readRune_static_extension.T_readRune_static_extension._readByte(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_bufferPointer = stdgo._internal.fmt.Fmt_T_bufferPointer.T_bufferPointer;
class T_buffer_static_extension {
    static public function _writeRune(_bp:T_buffer, _r:StdTypes.Int):Void {
        stdgo._internal.fmt.Fmt_T_buffer_static_extension.T_buffer_static_extension._writeRune(_bp, _r);
    }
    static public function _writeByte(_b:T_buffer, _c:std.UInt):Void {
        stdgo._internal.fmt.Fmt_T_buffer_static_extension.T_buffer_static_extension._writeByte(_b, _c);
    }
    static public function _writeString(_b:T_buffer, _s:String):Void {
        stdgo._internal.fmt.Fmt_T_buffer_static_extension.T_buffer_static_extension._writeString(_b, _s);
    }
    static public function _write(_b:T_buffer, _p:Array<std.UInt>):Void {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt_T_buffer_static_extension.T_buffer_static_extension._write(_b, _p);
    }
}
typedef T_stringReaderPointer = stdgo._internal.fmt.Fmt_T_stringReaderPointer.T_stringReaderPointer;
class T_stringReader_static_extension {
    static public function read(_r:stdgo.Pointer<T_stringReader>, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.fmt.Fmt_T_stringReader_static_extension.T_stringReader_static_extension.read(_r, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    /|*{
    	end_4068686 = len(format)
    	argNum_4068706 = 0
    	afterIndex_4068777 = false
    	p.reordered = false
    	gotoNext = 4068868
    	_ = gotoNext == 4068868
    	i_4068885 = 0
    	formatLoopBreak = false
    	gotoNext = 4068881
    	_ = gotoNext == 4068881
    	if !formatLoopBreak && (i_4068885 < end_4068686) {
    		gotoNext = 4068902
    		_ = gotoNext == 4068902
    		p.goodArgNum = true
    		lasti_4068928 = i_4068885
    		_ = 0
    		gotoNext = 4068941
    		_ = gotoNext == 4068941
    		if i_4068885 < end_4068686 && format[i_4068885] != 37 {
    			gotoNext = 4068973
    			_ = gotoNext == 4068973
    			i_4068885++
    			gotoNext = 4068941
    		} else {
    			gotoNext = 4068988
    		}
    		_ = gotoNext == 4068988
    		if i_4068885 > lasti_4068928 {
    			gotoNext = 4069001
    			_ = gotoNext == 4069001
    			p.buf.writeString(format[lasti_4068928:i_4068885])
    			gotoNext = 4069047
    		} else {
    			gotoNext = 4069047
    		}
    		_ = gotoNext == 4069047
    		if i_4068885 >= end_4068686 {
    			gotoNext = 4069059
    			_ = gotoNext == 4069059
    			gotoNext = 4072712
    			gotoNext = 4069135
    		} else {
    			gotoNext = 4069135
    		}
    		_ = gotoNext == 4069135
    		i_4068885++
    		p.fmt.clearflags()
    		gotoNext = 4069185
    		_ = gotoNext == 4069185
    		_ = 0
    		simpleFormatBreak = false
    		gotoNext = 4069201
    		_ = gotoNext == 4069201
    		if !simpleFormatBreak && (i_4068885 < end_4068686) {
    			gotoNext = 4069220
    			_ = gotoNext == 4069220
    			c_4069225 = format[i_4068885]
    			gotoNext = 4069243
    			_ = gotoNext == 4069243
    			switch c_4069225 {
    			case 35:
    				gotoNext = 4069257
    				_ = gotoNext == 4069257
    				p.fmt.sharp = true
    				gotoNext = 4069216
    			case 48:
    				gotoNext = 4069293
    				_ = gotoNext == 4069293
    				p.fmt.zero = !p.fmt.minus
    				gotoNext = 4069216
    			case 43:
    				gotoNext = 4069376
    				_ = gotoNext == 4069376
    				p.fmt.plus = true
    				gotoNext = 4069216
    			case 45:
    				gotoNext = 4069411
    				_ = gotoNext == 4069411
    				p.fmt.minus = true
    				p.fmt.zero = false
    				gotoNext = 4069216
    			case 32:
    				gotoNext = 4069509
    				_ = gotoNext == 4069509
    				p.fmt.space = true
    				gotoNext = 4069216
    			default:
    				gotoNext = 4069545
    				_ = gotoNext == 4069545
    				if 97 <= c_4069225 && c_4069225 <= 122 && argNum_4068706 < len(a) {
    					gotoNext = 4069722
    					_ = gotoNext == 4069722
    					gotoNext = 4069729
    					_ = gotoNext == 4069729
    					switch c_4069225 {
    					case 119:
    						gotoNext = 4069745
    						_ = gotoNext == 4069745
    						p.wrappedErrs = append(p.wrappedErrs, argNum_4068706)
    						gotoNext = 4069830
    						gotoNext = 4070015
    					case 118:
    						gotoNext = 4069830
    						_ = gotoNext == 4069830
    						p.fmt.sharpV = p.fmt.sharp
    						p.fmt.sharp = false
    						p.fmt.plusV = p.fmt.plus
    						p.fmt.plus = false
    						gotoNext = 4070015
    					default:
    						gotoNext = 4070015
    					}
    					_ = gotoNext == 4070015
    					p.printArg(a[argNum_4068706], rune(c_4069225))
    					argNum_4068706++
    					i_4068885++
    					gotoNext = 4068881
    					gotoNext = 4070180
    				} else {
    					gotoNext = 4070180
    				}
    				_ = gotoNext == 4070180
    				simpleFormatBreak = true
    				gotoNext = 4069201
    				gotoNext = 4069216
    			}
    			_ = gotoNext == 4069216
    			i_4068885++
    			gotoNext = 4069201
    		} else {
    			gotoNext = 4070255
    		}
    		_ = gotoNext == 4070255
    		argNum_4068706, i_4068885, afterIndex_4068777 = p.argNumber(argNum_4068706, format, i_4068885, len(a))
    		if i_4068885 < end_4068686 && format[i_4068885] == 42 {
    			gotoNext = 4070375
    			_ = gotoNext == 4070375
    			i_4068885++
    			p.fmt.wid, p.fmt.widPresent, argNum_4068706 = intFromArg(a, argNum_4068706)
    			if !p.fmt.widPresent {
    				gotoNext = 4070472
    				_ = gotoNext == 4070472
    				p.buf.writeString("%!(BADWIDTH)")
    				gotoNext = 4070615
    			} else {
    				gotoNext = 4070615
    			}
    			_ = gotoNext == 4070615
    			if p.fmt.wid < 0 {
    				gotoNext = 4070632
    				_ = gotoNext == 4070632
    				p.fmt.wid = -p.fmt.wid
    				p.fmt.minus = true
    				p.fmt.zero = false
    				gotoNext = 4070754
    			} else {
    				gotoNext = 4070754
    			}
    			_ = gotoNext == 4070754
    			afterIndex_4068777 = false
    			gotoNext = 4070960
    		} else {
    			gotoNext = 4070782
    			_ = gotoNext == 4070782
    			gotoNext = 4070782
    			_ = gotoNext == 4070782
    			p.fmt.wid, p.fmt.widPresent, i_4068885 = parsenum(format, i_4068885, end_4068686)
    			if afterIndex_4068777 && p.fmt.widPresent {
    				gotoNext = 4070882
    				_ = gotoNext == 4070882
    				p.goodArgNum = false
    				gotoNext = 4070960
    			} else {
    				gotoNext = 4070960
    			}
    			_ = 0
    			gotoNext = 4070960
    		}
    		_ = gotoNext == 4070960
    		if i_4068885+1 < end_4068686 && format[i_4068885] == 46 {
    			gotoNext = 4070993
    			_ = gotoNext == 4070993
    			i_4068885++
    			if afterIndex_4068777 {
    				gotoNext = 4071019
    				_ = gotoNext == 4071019
    				p.goodArgNum = false
    				gotoNext = 4071067
    			} else {
    				gotoNext = 4071067
    			}
    			_ = gotoNext == 4071067
    			argNum_4068706, i_4068885, afterIndex_4068777 = p.argNumber(argNum_4068706, format, i_4068885, len(a))
    			if i_4068885 < end_4068686 && format[i_4068885] == 42 {
    				gotoNext = 4071164
    				_ = gotoNext == 4071164
    				i_4068885++
    				p.fmt.prec, p.fmt.precPresent, argNum_4068706 = intFromArg(a, argNum_4068706)
    				if p.fmt.prec < 0 {
    					gotoNext = 4071315
    					_ = gotoNext == 4071315
    					p.fmt.prec = 0
    					p.fmt.precPresent = false
    					gotoNext = 4071378
    				} else {
    					gotoNext = 4071378
    				}
    				_ = gotoNext == 4071378
    				if !p.fmt.precPresent {
    					gotoNext = 4071400
    					_ = gotoNext == 4071400
    					p.buf.writeString("%!(BADPREC)")
    					gotoNext = 4071450
    				} else {
    					gotoNext = 4071450
    				}
    				_ = gotoNext == 4071450
    				afterIndex_4068777 = false
    				gotoNext = 4071641
    			} else {
    				gotoNext = 4071479
    				_ = gotoNext == 4071479
    				gotoNext = 4071479
    				_ = gotoNext == 4071479
    				p.fmt.prec, p.fmt.precPresent, i_4068885 = parsenum(format, i_4068885, end_4068686)
    				if !p.fmt.precPresent {
    					gotoNext = 4071571
    					_ = gotoNext == 4071571
    					p.fmt.prec = 0
    					p.fmt.precPresent = true
    					gotoNext = 4071641
    				} else {
    					gotoNext = 4071641
    				}
    				_ = 0
    				gotoNext = 4071641
    			}
    			gotoNext = 4071641
    		} else {
    			gotoNext = 4071641
    		}
    		_ = gotoNext == 4071641
    		if !afterIndex_4068777 {
    			gotoNext = 4071656
    			_ = gotoNext == 4071656
    			argNum_4068706, i_4068885, afterIndex_4068777 = p.argNumber(argNum_4068706, format, i_4068885, len(a))
    			gotoNext = 4071731
    		} else {
    			gotoNext = 4071731
    		}
    		_ = gotoNext == 4071731
    		if i_4068885 >= end_4068686 {
    			gotoNext = 4071743
    			_ = gotoNext == 4071743
    			p.buf.writeString("%!(NOVERB)")
    			gotoNext = 4072712
    			gotoNext = 4071796
    		} else {
    			gotoNext = 4071796
    		}
    		_ = gotoNext == 4071796
    		verb_4071796, size_4071802 = rune(format[i_4068885]), 1
    		if verb_4071796 >= 128 {
    			gotoNext = 4071856
    			_ = gotoNext == 4071856
    			verb_4071796, size_4071802 = utf8.DecodeRuneInString(format[i_4068885:])
    			gotoNext = 4071916
    		} else {
    			gotoNext = 4071916
    		}
    		_ = gotoNext == 4071916
    		i_4068885 += size_4071802
    		gotoNext = 4071929
    		_ = gotoNext == 4071929
    		switch {
    		case verb_4071796 == 37:
    			gotoNext = 4071940
    			_ = gotoNext == 4071940
    			p.buf.writeByte(37)
    			gotoNext = 4068881
    		case !p.goodArgNum:
    			gotoNext = 4072050
    			_ = gotoNext == 4072050
    			p.badArgNum(verb_4071796)
    			gotoNext = 4068881
    		case argNum_4068706 >= len(a):
    			gotoNext = 4072093
    			_ = gotoNext == 4072093
    			p.missingArg(verb_4071796)
    			gotoNext = 4068881
    		case verb_4071796 == 119:
    			gotoNext = 4072196
    			_ = gotoNext == 4072196
    			p.wrappedErrs = append(p.wrappedErrs, argNum_4068706)
    			gotoNext = 4072280
    			gotoNext = 4068881
    		case verb_4071796 == 118:
    			gotoNext = 4072280
    			_ = gotoNext == 4072280
    			p.fmt.sharpV = p.fmt.sharp
    			p.fmt.sharp = false
    			p.fmt.plusV = p.fmt.plus
    			p.fmt.plus = false
    			gotoNext = 4072460
    			gotoNext = 4068881
    		default:
    			gotoNext = 4072460
    			_ = gotoNext == 4072460
    			p.printArg(a[argNum_4068706], verb_4071796)
    			argNum_4068706++
    			gotoNext = 4068881
    		}
    		gotoNext = 4068881
    	} else {
    		gotoNext = 4072712
    	}
    	_ = gotoNext == 4072712
    	if !p.reordered && argNum_4068706 < len(a) {
    		gotoNext = 4072747
    		_ = gotoNext == 4072747
    		p.fmt.clearflags()
    		p.buf.writeString("%!(EXTRA ")
    		if 0 < len(a[argNum_4068706:]) {
    			gotoNext = 4073074
    			_ = gotoNext == 4073074
    			i_4072809, arg_4072812 = 0, a[argNum_4068706:][0]
    			gotoNext = 4073075
    			_ = gotoNext == 4073075
    			if i_4072809 < len(a[argNum_4068706:]) {
    				gotoNext = 4072836
    				_ = gotoNext == 4072836
    				arg_4072812 = a[argNum_4068706:][i_4072809]
    				if i_4072809 > 0 {
    					gotoNext = 4072850
    					_ = gotoNext == 4072850
    					p.buf.writeString(", ")
    					gotoNext = 4072900
    				} else {
    					gotoNext = 4072900
    				}
    				_ = gotoNext == 4072900
    				if arg_4072812 == nil {
    					gotoNext = 4072914
    					_ = gotoNext == 4072914
    					p.buf.writeString("<nil>")
    					gotoNext = 4072809
    				} else {
    					gotoNext = 4072964
    					_ = gotoNext == 4072964
    					gotoNext = 4072964
    					_ = gotoNext == 4072964
    					p.buf.writeString(reflect.TypeOf(arg_4072812).String())
    					p.buf.writeByte(61)
    					p.printArg(arg_4072812, 118)
    					_ = 0
    					gotoNext = 4072809
    				}
    				_ = gotoNext == 4072809
    				i_4072809++
    				gotoNext = 4073075
    			} else {
    				gotoNext = 4073079
    			}
    			gotoNext = 4073079
    		} else {
    			gotoNext = 4073079
    		}
    		_ = gotoNext == 4073079
    		p.buf.writeByte(41)
    		gotoNext = 4073103
    	} else {
    		gotoNext = 4073103
    	}
    	_ = gotoNext == 4073103
    	gotoNext = -1
    }*|/
**/
class Fmt {
    /**
        Errorf formats according to a format specifier and returns the string as a
        value that satisfies error.
        
        If the format specifier includes a %w verb with an error operand,
        the returned error will implement an Unwrap method returning the operand.
        If there is more than one %w verb, the returned error will implement an
        Unwrap method returning a []error containing all the %w operands in the
        order they appear in the arguments.
        It is invalid to supply the %w verb with an operand that does not implement
        the error interface. The %w verb is otherwise a synonym for %v.
    **/
    static public function errorf(_format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        return stdgo._internal.fmt.Fmt_errorf.errorf(_format, ...[for (i in _a) i]);
    }
    /**
        FormatString returns a string representing the fully qualified formatting
        directive captured by the State, followed by the argument verb. (State does not
        itself contain the verb.) The result has a leading percent sign followed by any
        flags, the width, and the precision. Missing flags, width, and precision are
        omitted. This function allows a Formatter to reconstruct the original
        directive triggering the call to Format.
    **/
    static public function formatString(_state:State, _verb:StdTypes.Int):String {
        return stdgo._internal.fmt.Fmt_formatString.formatString(_state, _verb);
    }
    /**
        Fprintf formats according to a format specifier and writes to w.
        It returns the number of bytes written and any write error encountered.
    **/
    static public function fprintf(_w:stdgo._internal.io.Io_Writer.Writer, _format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, _format, ...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Printf formats according to a format specifier and writes to standard output.
        It returns the number of bytes written and any write error encountered.
    **/
    static public function printf(_format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_printf.printf(_format, ...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Sprintf formats according to a format specifier and returns the resulting string.
    **/
    static public function sprintf(_format:String, _a:haxe.Rest<stdgo.AnyInterface>):String {
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(_format, ...[for (i in _a) i]);
    }
    /**
        Appendf formats according to a format specifier, appends the result to the byte
        slice, and returns the updated slice.
    **/
    static public function appendf(_b:Array<std.UInt>, _format:String, _a:haxe.Rest<stdgo.AnyInterface>):Array<std.UInt> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.fmt.Fmt_appendf.appendf(_b, _format, ...[for (i in _a) i])) i];
    }
    /**
        Fprint formats using the default formats for its operands and writes to w.
        Spaces are added between operands when neither is a string.
        It returns the number of bytes written and any write error encountered.
    **/
    static public function fprint(_w:stdgo._internal.io.Io_Writer.Writer, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_fprint.fprint(_w, ...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Print formats using the default formats for its operands and writes to standard output.
        Spaces are added between operands when neither is a string.
        It returns the number of bytes written and any write error encountered.
    **/
    static public function print(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_print.print(...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Sprint formats using the default formats for its operands and returns the resulting string.
        Spaces are added between operands when neither is a string.
    **/
    static public function sprint(_a:haxe.Rest<stdgo.AnyInterface>):String {
        return stdgo._internal.fmt.Fmt_sprint.sprint(...[for (i in _a) i]);
    }
    /**
        Append formats using the default formats for its operands, appends the result to
        the byte slice, and returns the updated slice.
    **/
    static public function append(_b:Array<std.UInt>, _a:haxe.Rest<stdgo.AnyInterface>):Array<std.UInt> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.fmt.Fmt_append.append(_b, ...[for (i in _a) i])) i];
    }
    /**
        Fprintln formats using the default formats for its operands and writes to w.
        Spaces are always added between operands and a newline is appended.
        It returns the number of bytes written and any write error encountered.
    **/
    static public function fprintln(_w:stdgo._internal.io.Io_Writer.Writer, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_fprintln.fprintln(_w, ...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Println formats using the default formats for its operands and writes to standard output.
        Spaces are always added between operands and a newline is appended.
        It returns the number of bytes written and any write error encountered.
    **/
    static public function println(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_println.println(...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Sprintln formats using the default formats for its operands and returns the resulting string.
        Spaces are always added between operands and a newline is appended.
    **/
    static public function sprintln(_a:haxe.Rest<stdgo.AnyInterface>):String {
        return stdgo._internal.fmt.Fmt_sprintln.sprintln(...[for (i in _a) i]);
    }
    /**
        Appendln formats using the default formats for its operands, appends the result
        to the byte slice, and returns the updated slice. Spaces are always added
        between operands and a newline is appended.
    **/
    static public function appendln(_b:Array<std.UInt>, _a:haxe.Rest<stdgo.AnyInterface>):Array<std.UInt> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.fmt.Fmt_appendln.appendln(_b, ...[for (i in _a) i])) i];
    }
    /**
        Scan scans text read from standard input, storing successive
        space-separated values into successive arguments. Newlines count
        as space. It returns the number of items successfully scanned.
        If that is less than the number of arguments, err will report why.
    **/
    static public function scan(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_scan.scan(...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Scanln is similar to Scan, but stops scanning at a newline and
        after the final item there must be a newline or EOF.
    **/
    static public function scanln(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_scanln.scanln(...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Scanf scans text read from standard input, storing successive
        space-separated values into successive arguments as determined by
        the format. It returns the number of items successfully scanned.
        If that is less than the number of arguments, err will report why.
        Newlines in the input must match newlines in the format.
        The one exception: the verb %c always scans the next rune in the
        input, even if it is a space (or tab etc.) or newline.
    **/
    static public function scanf(_format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_scanf.scanf(_format, ...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Sscan scans the argument string, storing successive space-separated
        values into successive arguments. Newlines count as space. It
        returns the number of items successfully scanned. If that is less
        than the number of arguments, err will report why.
    **/
    static public function sscan(_str:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_sscan.sscan(_str, ...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Sscanln is similar to Sscan, but stops scanning at a newline and
        after the final item there must be a newline or EOF.
    **/
    static public function sscanln(_str:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_sscanln.sscanln(_str, ...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Sscanf scans the argument string, storing successive space-separated
        values into successive arguments as determined by the format. It
        returns the number of items successfully parsed.
        Newlines in the input must match newlines in the format.
    **/
    static public function sscanf(_str:String, _format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_sscanf.sscanf(_str, _format, ...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Fscan scans text read from r, storing successive space-separated
        values into successive arguments. Newlines count as space. It
        returns the number of items successfully scanned. If that is less
        than the number of arguments, err will report why.
    **/
    static public function fscan(_r:stdgo._internal.io.Io_Reader.Reader, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_fscan.fscan(_r, ...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Fscanln is similar to Fscan, but stops scanning at a newline and
        after the final item there must be a newline or EOF.
    **/
    static public function fscanln(_r:stdgo._internal.io.Io_Reader.Reader, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_fscanln.fscanln(_r, ...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Fscanf scans text read from r, storing successive space-separated
        values into successive arguments as determined by the format. It
        returns the number of items successfully parsed.
        Newlines in the input must match newlines in the format.
    **/
    static public function fscanf(_r:stdgo._internal.io.Io_Reader.Reader, _format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_fscanf.fscanf(_r, _format, ...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
