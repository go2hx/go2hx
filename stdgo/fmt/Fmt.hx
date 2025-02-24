package stdgo.fmt;
var isSpace(get, set) : StdTypes.Int -> Bool;
private function get_isSpace():StdTypes.Int -> Bool return _0 -> stdgo._internal.fmt.Fmt_isspace.isSpace(_0);
private function set_isSpace(v:StdTypes.Int -> Bool):StdTypes.Int -> Bool {
        stdgo._internal.fmt.Fmt_isspace.isSpace = _0 -> v((_0 : stdgo.GoInt32));
        return v;
    }
var parsenum(get, set) : (String, StdTypes.Int, StdTypes.Int) -> stdgo.Tuple.Tuple3<StdTypes.Int, Bool, StdTypes.Int>;
private function get_parsenum():(String, StdTypes.Int, StdTypes.Int) -> stdgo.Tuple.Tuple3<StdTypes.Int, Bool, StdTypes.Int> return (_0, _1, _2) -> stdgo._internal.fmt.Fmt_parsenum.parsenum(_0, _1, _2);
private function set_parsenum(v:(String, StdTypes.Int, StdTypes.Int) -> stdgo.Tuple.Tuple3<StdTypes.Int, Bool, StdTypes.Int>):(String, StdTypes.Int, StdTypes.Int) -> stdgo.Tuple.Tuple3<StdTypes.Int, Bool, StdTypes.Int> {
        stdgo._internal.fmt.Fmt_parsenum.parsenum = (_0, _1, _2) -> v((_0 : stdgo.GoString), (_1 : stdgo.GoInt), (_2 : stdgo.GoInt));
        return v;
    }
class State_static_extension {
    static public function flag(t:stdgo._internal.fmt.Fmt_state.State, _c:StdTypes.Int):Bool {
        final _c = (_c : stdgo.GoInt);
        return stdgo._internal.fmt.Fmt_state_static_extension.State_static_extension.flag(t, _c);
    }
    static public function precision(t:stdgo._internal.fmt.Fmt_state.State):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.fmt.Fmt_state_static_extension.State_static_extension.precision(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function width(t:stdgo._internal.fmt.Fmt_state.State):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.fmt.Fmt_state_static_extension.State_static_extension.width(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(t:stdgo._internal.fmt.Fmt_state.State, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.fmt.Fmt_state_static_extension.State_static_extension.write(t, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract State(stdgo._internal.fmt.Fmt_state.State) from stdgo._internal.fmt.Fmt_state.State to stdgo._internal.fmt.Fmt_state.State {
    @:from
    static function fromHaxeInterface(x:{ function write(_b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; function width():stdgo.Tuple<StdTypes.Int, Bool>; function precision():stdgo.Tuple<StdTypes.Int, Bool>; function flag(_c:StdTypes.Int):Bool; }):State {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:State = { write : _0 -> x.write([for (i in _0) i]), width : () -> x.width(), precision : () -> x.precision(), flag : _0 -> x.flag(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Formatter_static_extension {
    static public function format(t:stdgo._internal.fmt.Fmt_formatter.Formatter, _f:State, _verb:StdTypes.Int):Void {
        final _verb = (_verb : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_formatter_static_extension.Formatter_static_extension.format(t, _f, _verb);
    }
}
@:interface @:forward abstract Formatter(stdgo._internal.fmt.Fmt_formatter.Formatter) from stdgo._internal.fmt.Fmt_formatter.Formatter to stdgo._internal.fmt.Fmt_formatter.Formatter {
    @:from
    static function fromHaxeInterface(x:{ function format(_f:State, _verb:StdTypes.Int):Void; }):Formatter {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Formatter = { format : (_0, _1) -> x.format(_0, _1), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Stringer_static_extension {
    static public function string(t:stdgo._internal.fmt.Fmt_stringer.Stringer):String {
        return stdgo._internal.fmt.Fmt_stringer_static_extension.Stringer_static_extension.string(t);
    }
}
@:interface @:forward abstract Stringer(stdgo._internal.fmt.Fmt_stringer.Stringer) from stdgo._internal.fmt.Fmt_stringer.Stringer to stdgo._internal.fmt.Fmt_stringer.Stringer {
    @:from
    static function fromHaxeInterface(x:{ function string():String; }):Stringer {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Stringer = { string : () -> x.string(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class GoStringer_static_extension {
    static public function goString(t:stdgo._internal.fmt.Fmt_gostringer.GoStringer):String {
        return stdgo._internal.fmt.Fmt_gostringer_static_extension.GoStringer_static_extension.goString(t);
    }
}
@:interface @:forward abstract GoStringer(stdgo._internal.fmt.Fmt_gostringer.GoStringer) from stdgo._internal.fmt.Fmt_gostringer.GoStringer to stdgo._internal.fmt.Fmt_gostringer.GoStringer {
    @:from
    static function fromHaxeInterface(x:{ function goString():String; }):GoStringer {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:GoStringer = { goString : () -> x.goString(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class ScanState_static_extension {
    static public function read(t:stdgo._internal.fmt.Fmt_scanstate.ScanState, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.fmt.Fmt_scanstate_static_extension.ScanState_static_extension.read(t, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function width(t:stdgo._internal.fmt.Fmt_scanstate.ScanState):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.fmt.Fmt_scanstate_static_extension.ScanState_static_extension.width(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function token(t:stdgo._internal.fmt.Fmt_scanstate.ScanState, _skipSpace:Bool, _f:StdTypes.Int -> Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _f = _0 -> _f((_0 : stdgo.GoInt32));
        return {
            final obj = stdgo._internal.fmt.Fmt_scanstate_static_extension.ScanState_static_extension.token(t, _skipSpace, _f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function skipSpace(t:stdgo._internal.fmt.Fmt_scanstate.ScanState):Void {
        stdgo._internal.fmt.Fmt_scanstate_static_extension.ScanState_static_extension.skipSpace(t);
    }
    static public function unreadRune(t:stdgo._internal.fmt.Fmt_scanstate.ScanState):stdgo.Error {
        return stdgo._internal.fmt.Fmt_scanstate_static_extension.ScanState_static_extension.unreadRune(t);
    }
    static public function readRune(t:stdgo._internal.fmt.Fmt_scanstate.ScanState):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_scanstate_static_extension.ScanState_static_extension.readRune(t);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
@:interface @:forward abstract ScanState(stdgo._internal.fmt.Fmt_scanstate.ScanState) from stdgo._internal.fmt.Fmt_scanstate.ScanState to stdgo._internal.fmt.Fmt_scanstate.ScanState {
    @:from
    static function fromHaxeInterface(x:{ function readRune():stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error>; function unreadRune():stdgo.Error; function skipSpace():Void; function token(_skipSpace:Bool, _f:StdTypes.Int -> Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error>; function width():stdgo.Tuple<StdTypes.Int, Bool>; function read(_buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; }):ScanState {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ScanState = { readRune : () -> x.readRune(), unreadRune : () -> x.unreadRune(), skipSpace : () -> x.skipSpace(), token : (_0, _1) -> x.token(_0, _0 -> _1(_0)), width : () -> x.width(), read : _0 -> x.read([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Scanner_static_extension {
    static public function scan(t:stdgo._internal.fmt.Fmt_scanner.Scanner, _state:ScanState, _verb:StdTypes.Int):stdgo.Error {
        final _verb = (_verb : stdgo.GoInt32);
        return stdgo._internal.fmt.Fmt_scanner_static_extension.Scanner_static_extension.scan(t, _state, _verb);
    }
}
@:interface @:forward abstract Scanner(stdgo._internal.fmt.Fmt_scanner.Scanner) from stdgo._internal.fmt.Fmt_scanner.Scanner to stdgo._internal.fmt.Fmt_scanner.Scanner {
    @:from
    static function fromHaxeInterface(x:{ function scan(_state:ScanState, _verb:StdTypes.Int):stdgo.Error; }):Scanner {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Scanner = { scan : (_0, _1) -> x.scan(_0, _1), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.fmt.Fmt.T_wrapError_static_extension) @:dox(hide) abstract T_wrapError(stdgo._internal.fmt.Fmt_t_wraperror.T_wrapError) from stdgo._internal.fmt.Fmt_t_wraperror.T_wrapError to stdgo._internal.fmt.Fmt_t_wraperror.T_wrapError {
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = (v : stdgo.GoString);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_msg:String, ?_err:stdgo.Error) this = new stdgo._internal.fmt.Fmt_t_wraperror.T_wrapError((_msg : stdgo.GoString), (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.fmt.Fmt.T_wrapErrors_static_extension) @:dox(hide) abstract T_wrapErrors(stdgo._internal.fmt.Fmt_t_wraperrors.T_wrapErrors) from stdgo._internal.fmt.Fmt_t_wraperrors.T_wrapErrors to stdgo._internal.fmt.Fmt_t_wraperrors.T_wrapErrors {
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = (v : stdgo.GoString);
        return v;
    }
    public var _errs(get, set) : Array<stdgo.Error>;
    function get__errs():Array<stdgo.Error> return [for (i in this._errs) i];
    function set__errs(v:Array<stdgo.Error>):Array<stdgo.Error> {
        this._errs = ([for (i in v) (i : stdgo.Error)] : stdgo.Slice<stdgo.Error>);
        return v;
    }
    public function new(?_msg:String, ?_errs:Array<stdgo.Error>) this = new stdgo._internal.fmt.Fmt_t_wraperrors.T_wrapErrors((_msg : stdgo.GoString), ([for (i in _errs) (i : stdgo.Error)] : stdgo.Slice<stdgo.Error>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.fmt.Fmt.T_fmtFlags_static_extension) @:dox(hide) abstract T_fmtFlags(stdgo._internal.fmt.Fmt_t_fmtflags.T_fmtFlags) from stdgo._internal.fmt.Fmt_t_fmtflags.T_fmtFlags to stdgo._internal.fmt.Fmt_t_fmtflags.T_fmtFlags {
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
    public function new(?_widPresent:Bool, ?_precPresent:Bool, ?_minus:Bool, ?_plus:Bool, ?_sharp:Bool, ?_space:Bool, ?_zero:Bool, ?_plusV:Bool, ?_sharpV:Bool) this = new stdgo._internal.fmt.Fmt_t_fmtflags.T_fmtFlags(_widPresent, _precPresent, _minus, _plus, _sharp, _space, _zero, _plusV, _sharpV);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.fmt.Fmt.T_fmt_static_extension) @:dox(hide) abstract T_fmt(stdgo._internal.fmt.Fmt_t_fmt.T_fmt) from stdgo._internal.fmt.Fmt_t_fmt.T_fmt to stdgo._internal.fmt.Fmt_t_fmt.T_fmt {
    public var _buf(get, set) : T_buffer;
    function get__buf():T_buffer return this._buf;
    function set__buf(v:T_buffer):T_buffer {
        this._buf = (v : stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer>);
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
        this._wid = (v : stdgo.GoInt);
        return v;
    }
    public var _prec(get, set) : StdTypes.Int;
    function get__prec():StdTypes.Int return this._prec;
    function set__prec(v:StdTypes.Int):StdTypes.Int {
        this._prec = (v : stdgo.GoInt);
        return v;
    }
    public var _intbuf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__intbuf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._intbuf) i]);
    function set__intbuf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._intbuf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_buf:T_buffer, ?_fmtFlags:T_fmtFlags, ?_wid:StdTypes.Int, ?_prec:StdTypes.Int, ?_intbuf:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.fmt.Fmt_t_fmt.T_fmt((_buf : stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer>), _fmtFlags, (_wid : stdgo.GoInt), (_prec : stdgo.GoInt), ([for (i in _intbuf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.fmt.Fmt.T_pp_static_extension) @:dox(hide) abstract T_pp(stdgo._internal.fmt.Fmt_t_pp.T_pp) from stdgo._internal.fmt.Fmt_t_pp.T_pp to stdgo._internal.fmt.Fmt_t_pp.T_pp {
    public var _buf(get, set) : T_buffer;
    function get__buf():T_buffer return this._buf;
    function set__buf(v:T_buffer):T_buffer {
        this._buf = v;
        return v;
    }
    public var _arg(get, set) : stdgo.AnyInterface;
    function get__arg():stdgo.AnyInterface return this._arg;
    function set__arg(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._arg = (v : stdgo.AnyInterface);
        return v;
    }
    public var _value(get, set) : stdgo._internal.reflect.Reflect_value.Value;
    function get__value():stdgo._internal.reflect.Reflect_value.Value return this._value;
    function set__value(v:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
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
        this._wrappedErrs = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?_buf:T_buffer, ?_arg:stdgo.AnyInterface, ?_value:stdgo._internal.reflect.Reflect_value.Value, ?_fmt:T_fmt, ?_reordered:Bool, ?_goodArgNum:Bool, ?_panicking:Bool, ?_erroring:Bool, ?_wrapErrs:Bool, ?_wrappedErrs:Array<StdTypes.Int>) this = new stdgo._internal.fmt.Fmt_t_pp.T_pp(_buf, (_arg : stdgo.AnyInterface), _value, _fmt, _reordered, _goodArgNum, _panicking, _erroring, _wrapErrs, ([for (i in _wrappedErrs) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.fmt.Fmt.T_scanError_static_extension) @:dox(hide) abstract T_scanError(stdgo._internal.fmt.Fmt_t_scanerror.T_scanError) from stdgo._internal.fmt.Fmt_t_scanerror.T_scanError to stdgo._internal.fmt.Fmt_t_scanerror.T_scanError {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.fmt.Fmt_t_scanerror.T_scanError((_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.fmt.Fmt.T_ss_static_extension) @:dox(hide) abstract T_ss(stdgo._internal.fmt.Fmt_t_ss.T_ss) from stdgo._internal.fmt.Fmt_t_ss.T_ss to stdgo._internal.fmt.Fmt_t_ss.T_ss {
    public var _rs(get, set) : stdgo._internal.io.Io_runescanner.RuneScanner;
    function get__rs():stdgo._internal.io.Io_runescanner.RuneScanner return this._rs;
    function set__rs(v:stdgo._internal.io.Io_runescanner.RuneScanner):stdgo._internal.io.Io_runescanner.RuneScanner {
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
        this._count = (v : stdgo.GoInt);
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
    public function new(?_rs:stdgo._internal.io.Io_runescanner.RuneScanner, ?_buf:T_buffer, ?_count:StdTypes.Int, ?_atEOF:Bool, ?_ssave:T_ssave) this = new stdgo._internal.fmt.Fmt_t_ss.T_ss(_rs, _buf, (_count : stdgo.GoInt), _atEOF, _ssave);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.fmt.Fmt.T_ssave_static_extension) @:dox(hide) abstract T_ssave(stdgo._internal.fmt.Fmt_t_ssave.T_ssave) from stdgo._internal.fmt.Fmt_t_ssave.T_ssave to stdgo._internal.fmt.Fmt_t_ssave.T_ssave {
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
        this._argLimit = (v : stdgo.GoInt);
        return v;
    }
    public var _limit(get, set) : StdTypes.Int;
    function get__limit():StdTypes.Int return this._limit;
    function set__limit(v:StdTypes.Int):StdTypes.Int {
        this._limit = (v : stdgo.GoInt);
        return v;
    }
    public var _maxWid(get, set) : StdTypes.Int;
    function get__maxWid():StdTypes.Int return this._maxWid;
    function set__maxWid(v:StdTypes.Int):StdTypes.Int {
        this._maxWid = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_validSave:Bool, ?_nlIsEnd:Bool, ?_nlIsSpace:Bool, ?_argLimit:StdTypes.Int, ?_limit:StdTypes.Int, ?_maxWid:StdTypes.Int) this = new stdgo._internal.fmt.Fmt_t_ssave.T_ssave(_validSave, _nlIsEnd, _nlIsSpace, (_argLimit : stdgo.GoInt), (_limit : stdgo.GoInt), (_maxWid : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.fmt.Fmt.T_readRune_static_extension) @:dox(hide) abstract T_readRune(stdgo._internal.fmt.Fmt_t_readrune.T_readRune) from stdgo._internal.fmt.Fmt_t_readrune.T_readRune to stdgo._internal.fmt.Fmt_t_readrune.T_readRune {
    public var _reader(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__reader():stdgo._internal.io.Io_reader.Reader return this._reader;
    function set__reader(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this._reader = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _pending(get, set) : StdTypes.Int;
    function get__pending():StdTypes.Int return this._pending;
    function set__pending(v:StdTypes.Int):StdTypes.Int {
        this._pending = (v : stdgo.GoInt);
        return v;
    }
    public var _pendBuf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__pendBuf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._pendBuf) i]);
    function set__pendBuf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._pendBuf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _peekRune(get, set) : StdTypes.Int;
    function get__peekRune():StdTypes.Int return this._peekRune;
    function set__peekRune(v:StdTypes.Int):StdTypes.Int {
        this._peekRune = (v : stdgo.GoInt32);
        return v;
    }
    public function new(?_reader:stdgo._internal.io.Io_reader.Reader, ?_buf:haxe.ds.Vector<std.UInt>, ?_pending:StdTypes.Int, ?_pendBuf:haxe.ds.Vector<std.UInt>, ?_peekRune:StdTypes.Int) this = new stdgo._internal.fmt.Fmt_t_readrune.T_readRune(_reader, ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_pending : stdgo.GoInt), ([for (i in _pendBuf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_peekRune : stdgo.GoInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_buffer = stdgo._internal.fmt.Fmt_t_buffer.T_buffer;
@:dox(hide) typedef T_stringReader = stdgo._internal.fmt.Fmt_t_stringreader.T_stringReader;
@:dox(hide) typedef T_wrapErrorPointer = stdgo._internal.fmt.Fmt_t_wraperrorpointer.T_wrapErrorPointer;
@:dox(hide) class T_wrapError_static_extension {
    static public function unwrap(_e:T_wrapError):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.fmt.Fmt_t_wraperror.T_wrapError>);
        return stdgo._internal.fmt.Fmt_t_wraperror_static_extension.T_wrapError_static_extension.unwrap(_e);
    }
    static public function error(_e:T_wrapError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.fmt.Fmt_t_wraperror.T_wrapError>);
        return stdgo._internal.fmt.Fmt_t_wraperror_static_extension.T_wrapError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_wrapErrorsPointer = stdgo._internal.fmt.Fmt_t_wraperrorspointer.T_wrapErrorsPointer;
@:dox(hide) class T_wrapErrors_static_extension {
    static public function unwrap(_e:T_wrapErrors):Array<stdgo.Error> {
        final _e = (_e : stdgo.Ref<stdgo._internal.fmt.Fmt_t_wraperrors.T_wrapErrors>);
        return [for (i in stdgo._internal.fmt.Fmt_t_wraperrors_static_extension.T_wrapErrors_static_extension.unwrap(_e)) i];
    }
    static public function error(_e:T_wrapErrors):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.fmt.Fmt_t_wraperrors.T_wrapErrors>);
        return stdgo._internal.fmt.Fmt_t_wraperrors_static_extension.T_wrapErrors_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_fmtFlagsPointer = stdgo._internal.fmt.Fmt_t_fmtflagspointer.T_fmtFlagsPointer;
@:dox(hide) class T_fmtFlags_static_extension {

}
@:dox(hide) typedef T_fmtPointer = stdgo._internal.fmt.Fmt_t_fmtpointer.T_fmtPointer;
@:dox(hide) class T_fmt_static_extension {
    static public function _fmtFloat(_f:T_fmt, _v:StdTypes.Float, _size:StdTypes.Int, _verb:StdTypes.Int, _prec:StdTypes.Int):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>);
        final _v = (_v : stdgo.GoFloat64);
        final _size = (_size : stdgo.GoInt);
        final _verb = (_verb : stdgo.GoInt32);
        final _prec = (_prec : stdgo.GoInt);
        stdgo._internal.fmt.Fmt_t_fmt_static_extension.T_fmt_static_extension._fmtFloat(_f, _v, _size, _verb, _prec);
    }
    static public function _fmtQc(_f:T_fmt, _c:haxe.UInt64):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>);
        final _c = (_c : stdgo.GoUInt64);
        stdgo._internal.fmt.Fmt_t_fmt_static_extension.T_fmt_static_extension._fmtQc(_f, _c);
    }
    static public function _fmtC(_f:T_fmt, _c:haxe.UInt64):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>);
        final _c = (_c : stdgo.GoUInt64);
        stdgo._internal.fmt.Fmt_t_fmt_static_extension.T_fmt_static_extension._fmtC(_f, _c);
    }
    static public function _fmtQ(_f:T_fmt, _s:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.fmt.Fmt_t_fmt_static_extension.T_fmt_static_extension._fmtQ(_f, _s);
    }
    static public function _fmtBx(_f:T_fmt, _b:Array<std.UInt>, _digits:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _digits = (_digits : stdgo.GoString);
        stdgo._internal.fmt.Fmt_t_fmt_static_extension.T_fmt_static_extension._fmtBx(_f, _b, _digits);
    }
    static public function _fmtSx(_f:T_fmt, _s:String, _digits:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>);
        final _s = (_s : stdgo.GoString);
        final _digits = (_digits : stdgo.GoString);
        stdgo._internal.fmt.Fmt_t_fmt_static_extension.T_fmt_static_extension._fmtSx(_f, _s, _digits);
    }
    static public function _fmtSbx(_f:T_fmt, _s:String, _b:Array<std.UInt>, _digits:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>);
        final _s = (_s : stdgo.GoString);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _digits = (_digits : stdgo.GoString);
        stdgo._internal.fmt.Fmt_t_fmt_static_extension.T_fmt_static_extension._fmtSbx(_f, _s, _b, _digits);
    }
    static public function _fmtBs(_f:T_fmt, _b:Array<std.UInt>):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt_t_fmt_static_extension.T_fmt_static_extension._fmtBs(_f, _b);
    }
    static public function _fmtS(_f:T_fmt, _s:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.fmt.Fmt_t_fmt_static_extension.T_fmt_static_extension._fmtS(_f, _s);
    }
    static public function _truncate(_f:T_fmt, _b:Array<std.UInt>):Array<std.UInt> {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.fmt.Fmt_t_fmt_static_extension.T_fmt_static_extension._truncate(_f, _b)) i];
    }
    static public function _truncateString(_f:T_fmt, _s:String):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.fmt.Fmt_t_fmt_static_extension.T_fmt_static_extension._truncateString(_f, _s);
    }
    static public function _fmtInteger(_f:T_fmt, _u:haxe.UInt64, _base:StdTypes.Int, _isSigned:Bool, _verb:StdTypes.Int, _digits:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>);
        final _u = (_u : stdgo.GoUInt64);
        final _base = (_base : stdgo.GoInt);
        final _verb = (_verb : stdgo.GoInt32);
        final _digits = (_digits : stdgo.GoString);
        stdgo._internal.fmt.Fmt_t_fmt_static_extension.T_fmt_static_extension._fmtInteger(_f, _u, _base, _isSigned, _verb, _digits);
    }
    static public function _fmtUnicode(_f:T_fmt, _u:haxe.UInt64):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>);
        final _u = (_u : stdgo.GoUInt64);
        stdgo._internal.fmt.Fmt_t_fmt_static_extension.T_fmt_static_extension._fmtUnicode(_f, _u);
    }
    static public function _fmtBoolean(_f:T_fmt, _v:Bool):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>);
        stdgo._internal.fmt.Fmt_t_fmt_static_extension.T_fmt_static_extension._fmtBoolean(_f, _v);
    }
    static public function _padString(_f:T_fmt, _s:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.fmt.Fmt_t_fmt_static_extension.T_fmt_static_extension._padString(_f, _s);
    }
    static public function _pad(_f:T_fmt, _b:Array<std.UInt>):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt_t_fmt_static_extension.T_fmt_static_extension._pad(_f, _b);
    }
    static public function _writePadding(_f:T_fmt, _n:StdTypes.Int):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.fmt.Fmt_t_fmt_static_extension.T_fmt_static_extension._writePadding(_f, _n);
    }
    static public function _init(_f:T_fmt, _buf:T_buffer):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>);
        final _buf = (_buf : stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer>);
        stdgo._internal.fmt.Fmt_t_fmt_static_extension.T_fmt_static_extension._init(_f, _buf);
    }
    static public function _clearflags(_f:T_fmt):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>);
        stdgo._internal.fmt.Fmt_t_fmt_static_extension.T_fmt_static_extension._clearflags(_f);
    }
}
@:dox(hide) typedef T_ppPointer = stdgo._internal.fmt.Fmt_t_pppointer.T_ppPointer;
@:dox(hide) class T_pp_static_extension {
    static public function _doPrintln(_p:T_pp, _a:Array<stdgo.AnyInterface>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        final _a = ([for (i in _a) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension._doPrintln(_p, _a);
    }
    static public function _doPrint(_p:T_pp, _a:Array<stdgo.AnyInterface>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        final _a = ([for (i in _a) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension._doPrint(_p, _a);
    }
    static public function _doPrintf(_p:T_pp, _format:String, _a:Array<stdgo.AnyInterface>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        final _format = (_format : stdgo.GoString);
        final _a = ([for (i in _a) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension._doPrintf(_p, _format, _a);
    }
    static public function _missingArg(_p:T_pp, _verb:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        final _verb = (_verb : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension._missingArg(_p, _verb);
    }
    static public function _badArgNum(_p:T_pp, _verb:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        final _verb = (_verb : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension._badArgNum(_p, _verb);
    }
    static public function _argNumber(_p:T_pp, _argNum:StdTypes.Int, _format:String, _i:StdTypes.Int, _numArgs:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        final _argNum = (_argNum : stdgo.GoInt);
        final _format = (_format : stdgo.GoString);
        final _i = (_i : stdgo.GoInt);
        final _numArgs = (_numArgs : stdgo.GoInt);
        return {
            final obj = stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension._argNumber(_p, _argNum, _format, _i, _numArgs);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _printValue(_p:T_pp, _value:stdgo._internal.reflect.Reflect_value.Value, _verb:StdTypes.Int, _depth:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        final _verb = (_verb : stdgo.GoInt32);
        final _depth = (_depth : stdgo.GoInt);
        stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension._printValue(_p, _value, _verb, _depth);
    }
    static public function _printArg(_p:T_pp, _arg:stdgo.AnyInterface, _verb:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        final _arg = (_arg : stdgo.AnyInterface);
        final _verb = (_verb : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension._printArg(_p, _arg, _verb);
    }
    static public function _handleMethods(_p:T_pp, _verb:StdTypes.Int):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        final _verb = (_verb : stdgo.GoInt32);
        return stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension._handleMethods(_p, _verb);
    }
    static public function _catchPanic(_p:T_pp, _arg:stdgo.AnyInterface, _verb:StdTypes.Int, _method:String):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        final _arg = (_arg : stdgo.AnyInterface);
        final _verb = (_verb : stdgo.GoInt32);
        final _method = (_method : stdgo.GoString);
        stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension._catchPanic(_p, _arg, _verb, _method);
    }
    static public function _fmtPointer(_p:T_pp, _value:stdgo._internal.reflect.Reflect_value.Value, _verb:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        final _verb = (_verb : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension._fmtPointer(_p, _value, _verb);
    }
    static public function _fmtBytes(_p:T_pp, _v:Array<std.UInt>, _verb:StdTypes.Int, _typeString:String):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        final _v = ([for (i in _v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _verb = (_verb : stdgo.GoInt32);
        final _typeString = (_typeString : stdgo.GoString);
        stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension._fmtBytes(_p, _v, _verb, _typeString);
    }
    static public function _fmtString(_p:T_pp, _v:String, _verb:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        final _v = (_v : stdgo.GoString);
        final _verb = (_verb : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension._fmtString(_p, _v, _verb);
    }
    static public function _fmtComplex(_p:T_pp, _v:stdgo.GoComplex128, _size:StdTypes.Int, _verb:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        final _v = (_v : stdgo.GoComplex128);
        final _size = (_size : stdgo.GoInt);
        final _verb = (_verb : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension._fmtComplex(_p, _v, _size, _verb);
    }
    static public function _fmtFloat(_p:T_pp, _v:StdTypes.Float, _size:StdTypes.Int, _verb:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        final _v = (_v : stdgo.GoFloat64);
        final _size = (_size : stdgo.GoInt);
        final _verb = (_verb : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension._fmtFloat(_p, _v, _size, _verb);
    }
    static public function _fmtInteger(_p:T_pp, _v:haxe.UInt64, _isSigned:Bool, _verb:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        final _v = (_v : stdgo.GoUInt64);
        final _verb = (_verb : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension._fmtInteger(_p, _v, _isSigned, _verb);
    }
    static public function _fmt0x64(_p:T_pp, _v:haxe.UInt64, _leading0x:Bool):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        final _v = (_v : stdgo.GoUInt64);
        stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension._fmt0x64(_p, _v, _leading0x);
    }
    static public function _fmtBool(_p:T_pp, _v:Bool, _verb:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        final _verb = (_verb : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension._fmtBool(_p, _v, _verb);
    }
    static public function _badVerb(_p:T_pp, _verb:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        final _verb = (_verb : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension._badVerb(_p, _verb);
    }
    static public function _unknownType(_p:T_pp, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension._unknownType(_p, _v);
    }
    static public function writeString(_p:T_pp, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension.writeString(_p, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_p:T_pp, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension.write(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function flag(_p:T_pp, _b:StdTypes.Int):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        final _b = (_b : stdgo.GoInt);
        return stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension.flag(_p, _b);
    }
    static public function precision(_p:T_pp):stdgo.Tuple<StdTypes.Int, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        return {
            final obj = stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension.precision(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function width(_p:T_pp):stdgo.Tuple<StdTypes.Int, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        return {
            final obj = stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension.width(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _free(_p:T_pp):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension._free(_p);
    }
}
@:dox(hide) typedef T_scanErrorPointer = stdgo._internal.fmt.Fmt_t_scanerrorpointer.T_scanErrorPointer;
@:dox(hide) class T_scanError_static_extension {

}
@:dox(hide) typedef T_ssPointer = stdgo._internal.fmt.Fmt_t_sspointer.T_ssPointer;
@:dox(hide) class T_ss_static_extension {
    static public function _doScanf(_s:T_ss, _format:String, _a:Array<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        final _format = (_format : stdgo.GoString);
        final _a = ([for (i in _a) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return {
            final obj = stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._doScanf(_s, _format, _a);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _advance(_s:T_ss, _format:String):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        final _format = (_format : stdgo.GoString);
        return stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._advance(_s, _format);
    }
    static public function _doScan(_s:T_ss, _a:Array<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        final _a = ([for (i in _a) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return {
            final obj = stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._doScan(_s, _a);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _scanOne(_s:T_ss, _verb:StdTypes.Int, _arg:stdgo.AnyInterface):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        final _verb = (_verb : stdgo.GoInt32);
        final _arg = (_arg : stdgo.AnyInterface);
        stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._scanOne(_s, _verb, _arg);
    }
    static public function _scanPercent(_s:T_ss):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._scanPercent(_s);
    }
    static public function _hexString(_s:T_ss):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        return stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._hexString(_s);
    }
    static public function _hexByte(_s:T_ss):stdgo.Tuple<std.UInt, Bool> {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        return {
            final obj = stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._hexByte(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _quotedString(_s:T_ss):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        return stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._quotedString(_s);
    }
    static public function _convertString(_s:T_ss, _verb:StdTypes.Int):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        final _verb = (_verb : stdgo.GoInt32);
        return stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._convertString(_s, _verb);
    }
    static public function _scanComplex(_s:T_ss, _verb:StdTypes.Int, _n:StdTypes.Int):stdgo.GoComplex128 {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        final _verb = (_verb : stdgo.GoInt32);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._scanComplex(_s, _verb, _n);
    }
    static public function _convertFloat(_s:T_ss, _str:String, _n:StdTypes.Int):StdTypes.Float {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        final _str = (_str : stdgo.GoString);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._convertFloat(_s, _str, _n);
    }
    static public function _complexTokens(_s:T_ss):stdgo.Tuple<String, String> {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        return {
            final obj = stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._complexTokens(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _floatToken(_s:T_ss):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        return stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._floatToken(_s);
    }
    static public function _scanUint(_s:T_ss, _verb:StdTypes.Int, _bitSize:StdTypes.Int):haxe.UInt64 {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        final _verb = (_verb : stdgo.GoInt32);
        final _bitSize = (_bitSize : stdgo.GoInt);
        return stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._scanUint(_s, _verb, _bitSize);
    }
    static public function _scanInt(_s:T_ss, _verb:StdTypes.Int, _bitSize:StdTypes.Int):haxe.Int64 {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        final _verb = (_verb : stdgo.GoInt32);
        final _bitSize = (_bitSize : stdgo.GoInt);
        return stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._scanInt(_s, _verb, _bitSize);
    }
    static public function _scanBasePrefix(_s:T_ss):stdgo.Tuple.Tuple3<StdTypes.Int, String, Bool> {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        return {
            final obj = stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._scanBasePrefix(_s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _scanRune(_s:T_ss, _bitSize:StdTypes.Int):haxe.Int64 {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        final _bitSize = (_bitSize : stdgo.GoInt);
        return stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._scanRune(_s, _bitSize);
    }
    static public function _scanNumber(_s:T_ss, _digits:String, _haveDigits:Bool):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        final _digits = (_digits : stdgo.GoString);
        return stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._scanNumber(_s, _digits, _haveDigits);
    }
    static public function _getBase(_s:T_ss, _verb:StdTypes.Int):stdgo.Tuple<StdTypes.Int, String> {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        final _verb = (_verb : stdgo.GoInt32);
        return {
            final obj = stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._getBase(_s, _verb);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _scanBool(_s:T_ss, _verb:StdTypes.Int):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        final _verb = (_verb : stdgo.GoInt32);
        return stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._scanBool(_s, _verb);
    }
    static public function _okVerb(_s:T_ss, _verb:StdTypes.Int, _okVerbs:String, _typ:String):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        final _verb = (_verb : stdgo.GoInt32);
        final _okVerbs = (_okVerbs : stdgo.GoString);
        final _typ = (_typ : stdgo.GoString);
        return stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._okVerb(_s, _verb, _okVerbs, _typ);
    }
    static public function _accept(_s:T_ss, _ok:String):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        final _ok = (_ok : stdgo.GoString);
        return stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._accept(_s, _ok);
    }
    static public function _notEOF(_s:T_ss):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._notEOF(_s);
    }
    static public function _peek(_s:T_ss, _ok:String):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        final _ok = (_ok : stdgo.GoString);
        return stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._peek(_s, _ok);
    }
    static public function _consume(_s:T_ss, _ok:String, _accept:Bool):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        final _ok = (_ok : stdgo.GoString);
        return stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._consume(_s, _ok, _accept);
    }
    static public function _token(_s:T_ss, _skipSpace:Bool, _f:StdTypes.Int -> Bool):Array<std.UInt> {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        final _f = _0 -> _f((_0 : stdgo.GoInt32));
        return [for (i in stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._token(_s, _skipSpace, _f)) i];
    }
    static public function skipSpace(_s:T_ss):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension.skipSpace(_s);
    }
    static public function _free(_s:T_ss, _old:T_ssave):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._free(_s, _old);
    }
    static public function token(_s:T_ss, _skipSpace:Bool, _f:StdTypes.Int -> Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        final _f = _0 -> _f((_0 : stdgo.GoInt32));
        return {
            final obj = stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension.token(_s, _skipSpace, _f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _errorString(_s:T_ss, _err:String):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        final _err = (_err : stdgo.GoString);
        stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._errorString(_s, _err);
    }
    static public function _error(_s:T_ss, _err:stdgo.Error):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._error(_s, _err);
    }
    static public function unreadRune(_s:T_ss):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        return stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension.unreadRune(_s);
    }
    static public function _mustReadRune(_s:T_ss):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        return stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._mustReadRune(_s);
    }
    static public function _getRune(_s:T_ss):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        return stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension._getRune(_s);
    }
    static public function width(_s:T_ss):stdgo.Tuple<StdTypes.Int, Bool> {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        return {
            final obj = stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension.width(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readRune(_s:T_ss):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        return {
            final obj = stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension.readRune(_s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function read(_s:T_ss, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension.read(_s, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_ssavePointer = stdgo._internal.fmt.Fmt_t_ssavepointer.T_ssavePointer;
@:dox(hide) class T_ssave_static_extension {

}
@:dox(hide) typedef T_readRunePointer = stdgo._internal.fmt.Fmt_t_readrunepointer.T_readRunePointer;
@:dox(hide) class T_readRune_static_extension {
    static public function unreadRune(_r:T_readRune):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.fmt.Fmt_t_readrune.T_readRune>);
        return stdgo._internal.fmt.Fmt_t_readrune_static_extension.T_readRune_static_extension.unreadRune(_r);
    }
    static public function readRune(_r:T_readRune):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.fmt.Fmt_t_readrune.T_readRune>);
        return {
            final obj = stdgo._internal.fmt.Fmt_t_readrune_static_extension.T_readRune_static_extension.readRune(_r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _readByte(_r:T_readRune):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.fmt.Fmt_t_readrune.T_readRune>);
        return {
            final obj = stdgo._internal.fmt.Fmt_t_readrune_static_extension.T_readRune_static_extension._readByte(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_bufferPointer = stdgo._internal.fmt.Fmt_t_bufferpointer.T_bufferPointer;
@:dox(hide) class T_buffer_static_extension {
    static public function _writeRune(_bp:T_buffer, _r:StdTypes.Int):Void {
        final _bp = (_bp : stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer>);
        final _r = (_r : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_t_buffer_static_extension.T_buffer_static_extension._writeRune(_bp, _r);
    }
    static public function _writeByte(_b:T_buffer, _c:std.UInt):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer>);
        final _c = (_c : stdgo.GoUInt8);
        stdgo._internal.fmt.Fmt_t_buffer_static_extension.T_buffer_static_extension._writeByte(_b, _c);
    }
    static public function _writeString(_b:T_buffer, _s:String):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer>);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.fmt.Fmt_t_buffer_static_extension.T_buffer_static_extension._writeString(_b, _s);
    }
    static public function _write(_b:T_buffer, _p:Array<std.UInt>):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt_t_buffer_static_extension.T_buffer_static_extension._write(_b, _p);
    }
}
@:dox(hide) typedef T_stringReaderPointer = stdgo._internal.fmt.Fmt_t_stringreaderpointer.T_stringReaderPointer;
@:dox(hide) class T_stringReader_static_extension {
    static public function read(_r:stdgo.Pointer<T_stringReader>, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.fmt.Fmt_t_stringreader_static_extension.T_stringReader_static_extension.read(_r, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    * 
    * Package fmt implements formatted I/O with functions analogous
    * to C's printf and scanf.  The format 'verbs' are derived from C's but
    * are simpler.
    * 
    * # Printing
    * 
    * The verbs:
    * 
    * General:
    * 
    * 	%v	the value in a default format
    * 		when printing structs, the plus flag (%+v) adds field names
    * 	%#v	a Go-syntax representation of the value
    * 	%T	a Go-syntax representation of the type of the value
    * 	%%	a literal percent sign; consumes no value
    * 
    * Boolean:
    * 
    * 	%t	the word true or false
    * 
    * Integer:
    * 
    * 	%b	base 2
    * 	%c	the character represented by the corresponding Unicode code point
    * 	%d	base 10
    * 	%o	base 8
    * 	%O	base 8 with 0o prefix
    * 	%q	a single-quoted character literal safely escaped with Go syntax.
    * 	%x	base 16, with lower-case letters for a-f
    * 	%X	base 16, with upper-case letters for A-F
    * 	%U	Unicode format: U+1234; same as "U+%04X"
    * 
    * Floating-point and complex constituents:
    * 
    * 	%b	decimalless scientific notation with exponent a power of two,
    * 		in the manner of strconv.FormatFloat with the 'b' format,
    * 		e.g. -123456p-78
    * 	%e	scientific notation, e.g. -1.234456e+78
    * 	%E	scientific notation, e.g. -1.234456E+78
    * 	%f	decimal point but no exponent, e.g. 123.456
    * 	%F	synonym for %f
    * 	%g	%e for large exponents, %f otherwise. Precision is discussed below.
    * 	%G	%E for large exponents, %F otherwise
    * 	%x	hexadecimal notation (with decimal power of two exponent), e.g. -0x1.23abcp+20
    * 	%X	upper-case hexadecimal notation, e.g. -0X1.23ABCP+20
    * 
    * String and slice of bytes (treated equivalently with these verbs):
    * 
    * 	%s	the uninterpreted bytes of the string or slice
    * 	%q	a double-quoted string safely escaped with Go syntax
    * 	%x	base 16, lower-case, two characters per byte
    * 	%X	base 16, upper-case, two characters per byte
    * 
    * Slice:
    * 
    * 	%p	address of 0th element in base 16 notation, with leading 0x
    * 
    * Pointer:
    * 
    * 	%p	base 16 notation, with leading 0x
    * 	The %b, %d, %o, %x and %X verbs also work with pointers,
    * 	formatting the value exactly as if it were an integer.
    * 
    * The default format for %v is:
    * 
    * 	bool:                    %t
    * 	int, int8 etc.:          %d
    * 	uint, uint8 etc.:        %d, %#x if printed with %#v
    * 	float32, complex64, etc: %g
    * 	string:                  %s
    * 	chan:                    %p
    * 	pointer:                 %p
    * 
    * For compound objects, the elements are printed using these rules, recursively,
    * laid out like this:
    * 
    * 	struct:             {field0 field1 ...}
    * 	array, slice:       [elem0 elem1 ...]
    * 	maps:               map[key1:value1 key2:value2 ...]
    * 	pointer to above:   &{}, &[], &map[]
    * 
    * Width is specified by an optional decimal number immediately preceding the verb.
    * If absent, the width is whatever is necessary to represent the value.
    * Precision is specified after the (optional) width by a period followed by a
    * decimal number. If no period is present, a default precision is used.
    * A period with no following number specifies a precision of zero.
    * Examples:
    * 
    * 	%f     default width, default precision
    * 	%9f    width 9, default precision
    * 	%.2f   default width, precision 2
    * 	%9.2f  width 9, precision 2
    * 	%9.f   width 9, precision 0
    * 
    * Width and precision are measured in units of Unicode code points,
    * that is, runes. (This differs from C's printf where the
    * units are always measured in bytes.) Either or both of the flags
    * may be replaced with the character '*', causing their values to be
    * obtained from the next operand (preceding the one to format),
    * which must be of type int.
    * 
    * For most values, width is the minimum number of runes to output,
    * padding the formatted form with spaces if necessary.
    * 
    * For strings, byte slices and byte arrays, however, precision
    * limits the length of the input to be formatted (not the size of
    * the output), truncating if necessary. Normally it is measured in
    * runes, but for these types when formatted with the %x or %X format
    * it is measured in bytes.
    * 
    * For floating-point values, width sets the minimum width of the field and
    * precision sets the number of places after the decimal, if appropriate,
    * except that for %g/%G precision sets the maximum number of significant
    * digits (trailing zeros are removed). For example, given 12.345 the format
    * %6.3f prints 12.345 while %.3g prints 12.3. The default precision for %e, %f
    * and %#g is 6; for %g it is the smallest number of digits necessary to identify
    * the value uniquely.
    * 
    * For complex numbers, the width and precision apply to the two
    * components independently and the result is parenthesized, so %f applied
    * to 1.2+3.4i produces (1.200000+3.400000i).
    * 
    * When formatting a single integer code point or a rune string (type []rune)
    * with %q, invalid Unicode code points are changed to the Unicode replacement
    * character, U+FFFD, as in strconv.QuoteRune.
    * 
    * Other flags:
    * 
    * 	'+'	always print a sign for numeric values;
    * 		guarantee ASCII-only output for %q (%+q)
    * 	'-'	pad with spaces on the right rather than the left (left-justify the field)
    * 	'#'	alternate format: add leading 0b for binary (%#b), 0 for octal (%#o),
    * 		0x or 0X for hex (%#x or %#X); suppress 0x for %p (%#p);
    * 		for %q, print a raw (backquoted) string if strconv.CanBackquote
    * 		returns true;
    * 		always print a decimal point for %e, %E, %f, %F, %g and %G;
    * 		do not remove trailing zeros for %g and %G;
    * 		write e.g. U+0078 'x' if the character is printable for %U (%#U).
    * 	' '	(space) leave a space for elided sign in numbers (% d);
    * 		put spaces between bytes printing strings or slices in hex (% x, % X)
    * 	'0'	pad with leading zeros rather than spaces;
    * 		for numbers, this moves the padding after the sign;
    * 		ignored for strings, byte slices and byte arrays
    * 
    * Flags are ignored by verbs that do not expect them.
    * For example there is no alternate decimal format, so %#d and %d
    * behave identically.
    * 
    * For each Printf-like function, there is also a Print function
    * that takes no format and is equivalent to saying %v for every
    * operand.  Another variant Println inserts blanks between
    * operands and appends a newline.
    * 
    * Regardless of the verb, if an operand is an interface value,
    * the internal concrete value is used, not the interface itself.
    * Thus:
    * 
    * 	var i interface{} = 23
    * 	fmt.Printf("%v\n", i)
    * 
    * will print 23.
    * 
    * Except when printed using the verbs %T and %p, special
    * formatting considerations apply for operands that implement
    * certain interfaces. In order of application:
    * 
    * 1. If the operand is a reflect.Value, the operand is replaced by the
    * concrete value that it holds, and printing continues with the next rule.
    * 
    * 2. If an operand implements the Formatter interface, it will
    * be invoked. In this case the interpretation of verbs and flags is
    * controlled by that implementation.
    * 
    * 3. If the %v verb is used with the # flag (%#v) and the operand
    * implements the GoStringer interface, that will be invoked.
    * 
    * If the format (which is implicitly %v for Println etc.) is valid
    * for a string (%s %q %v %x %X), the following two rules apply:
    * 
    * 4. If an operand implements the error interface, the Error method
    * will be invoked to convert the object to a string, which will then
    * be formatted as required by the verb (if any).
    * 
    * 5. If an operand implements method String() string, that method
    * will be invoked to convert the object to a string, which will then
    * be formatted as required by the verb (if any).
    * 
    * For compound operands such as slices and structs, the format
    * applies to the elements of each operand, recursively, not to the
    * operand as a whole. Thus %q will quote each element of a slice
    * of strings, and %6.2f will control formatting for each element
    * of a floating-point array.
    * 
    * However, when printing a byte slice with a string-like verb
    * (%s %q %x %X), it is treated identically to a string, as a single item.
    * 
    * To avoid recursion in cases such as
    * 
    * 	type X string
    * 	func (x X) String() string { return Sprintf("<%s>", x) }
    * 
    * convert the value before recurring:
    * 
    * 	func (x X) String() string { return Sprintf("<%s>", string(x)) }
    * 
    * Infinite recursion can also be triggered by self-referential data
    * structures, such as a slice that contains itself as an element, if
    * that type has a String method. Such pathologies are rare, however,
    * and the package does not protect against them.
    * 
    * When printing a struct, fmt cannot and therefore does not invoke
    * formatting methods such as Error or String on unexported fields.
    * 
    * # Explicit argument indexes
    * 
    * In Printf, Sprintf, and Fprintf, the default behavior is for each
    * formatting verb to format successive arguments passed in the call.
    * However, the notation [n] immediately before the verb indicates that the
    * nth one-indexed argument is to be formatted instead. The same notation
    * before a '*' for a width or precision selects the argument index holding
    * the value. After processing a bracketed expression [n], subsequent verbs
    * will use arguments n+1, n+2, etc. unless otherwise directed.
    * 
    * For example,
    * 
    * 	fmt.Sprintf("%[2]d %[1]d\n", 11, 22)
    * 
    * will yield "22 11", while
    * 
    * 	fmt.Sprintf("%[3]*.[2]*[1]f", 12.0, 2, 6)
    * 
    * equivalent to
    * 
    * 	fmt.Sprintf("%6.2f", 12.0)
    * 
    * will yield " 12.00". Because an explicit index affects subsequent verbs,
    * this notation can be used to print the same values multiple times
    * by resetting the index for the first argument to be repeated:
    * 
    * 	fmt.Sprintf("%d %d %#[1]x %#x", 16, 17)
    * 
    * will yield "16 17 0x10 0x11".
    * 
    * # Format errors
    * 
    * If an invalid argument is given for a verb, such as providing
    * a string to %d, the generated string will contain a
    * description of the problem, as in these examples:
    * 
    * 	Wrong type or unknown verb: %!verb(type=value)
    * 		Printf("%d", "hi"):        %!d(string=hi)
    * 	Too many arguments: %!(EXTRA type=value)
    * 		Printf("hi", "guys"):      hi%!(EXTRA string=guys)
    * 	Too few arguments: %!verb(MISSING)
    * 		Printf("hi%d"):            hi%!d(MISSING)
    * 	Non-int for width or precision: %!(BADWIDTH) or %!(BADPREC)
    * 		Printf("%*s", 4.5, "hi"):  %!(BADWIDTH)hi
    * 		Printf("%.*s", 4.5, "hi"): %!(BADPREC)hi
    * 	Invalid or invalid use of argument index: %!(BADINDEX)
    * 		Printf("%*[2]d", 7):       %!d(BADINDEX)
    * 		Printf("%.[2]d", 7):       %!d(BADINDEX)
    * 
    * All errors begin with the string "%!" followed sometimes
    * by a single character (the verb) and end with a parenthesized
    * description.
    * 
    * If an Error or String method triggers a panic when called by a
    * print routine, the fmt package reformats the error message
    * from the panic, decorating it with an indication that it came
    * through the fmt package.  For example, if a String method
    * calls panic("bad"), the resulting formatted message will look
    * like
    * 
    * 	%!s(PANIC=bad)
    * 
    * The %!s just shows the print verb in use when the failure
    * occurred. If the panic is caused by a nil receiver to an Error
    * or String method, however, the output is the undecorated
    * string, "<nil>".
    * 
    * # Scanning
    * 
    * An analogous set of functions scans formatted text to yield
    * values.  Scan, Scanf and Scanln read from os.Stdin; Fscan,
    * Fscanf and Fscanln read from a specified io.Reader; Sscan,
    * Sscanf and Sscanln read from an argument string.
    * 
    * Scan, Fscan, Sscan treat newlines in the input as spaces.
    * 
    * Scanln, Fscanln and Sscanln stop scanning at a newline and
    * require that the items be followed by a newline or EOF.
    * 
    * Scanf, Fscanf, and Sscanf parse the arguments according to a
    * format string, analogous to that of Printf. In the text that
    * follows, 'space' means any Unicode whitespace character
    * except newline.
    * 
    * In the format string, a verb introduced by the % character
    * consumes and parses input; these verbs are described in more
    * detail below. A character other than %, space, or newline in
    * the format consumes exactly that input character, which must
    * be present. A newline with zero or more spaces before it in
    * the format string consumes zero or more spaces in the input
    * followed by a single newline or the end of the input. A space
    * following a newline in the format string consumes zero or more
    * spaces in the input. Otherwise, any run of one or more spaces
    * in the format string consumes as many spaces as possible in
    * the input. Unless the run of spaces in the format string
    * appears adjacent to a newline, the run must consume at least
    * one space from the input or find the end of the input.
    * 
    * The handling of spaces and newlines differs from that of C's
    * scanf family: in C, newlines are treated as any other space,
    * and it is never an error when a run of spaces in the format
    * string finds no spaces to consume in the input.
    * 
    * The verbs behave analogously to those of Printf.
    * For example, %x will scan an integer as a hexadecimal number,
    * and %v will scan the default representation format for the value.
    * The Printf verbs %p and %T and the flags # and + are not implemented.
    * For floating-point and complex values, all valid formatting verbs
    * (%b %e %E %f %F %g %G %x %X and %v) are equivalent and accept
    * both decimal and hexadecimal notation (for example: "2.3e+7", "0x4.5p-8")
    * and digit-separating underscores (for example: "3.14159_26535_89793").
    * 
    * Input processed by verbs is implicitly space-delimited: the
    * implementation of every verb except %c starts by discarding
    * leading spaces from the remaining input, and the %s verb
    * (and %v reading into a string) stops consuming input at the first
    * space or newline character.
    * 
    * The familiar base-setting prefixes 0b (binary), 0o and 0 (octal),
    * and 0x (hexadecimal) are accepted when scanning integers
    * without a format or with the %v verb, as are digit-separating
    * underscores.
    * 
    * Width is interpreted in the input text but there is no
    * syntax for scanning with a precision (no %5.2f, just %5f).
    * If width is provided, it applies after leading spaces are
    * trimmed and specifies the maximum number of runes to read
    * to satisfy the verb. For example,
    * 
    * 	Sscanf(" 1234567 ", "%5s%d", &s, &i)
    * 
    * will set s to "12345" and i to 67 while
    * 
    * 	Sscanf(" 12 34 567 ", "%5s%d", &s, &i)
    * 
    * will set s to "12" and i to 34.
    * 
    * In all the scanning functions, a carriage return followed
    * immediately by a newline is treated as a plain newline
    * (\r\n means the same as \n).
    * 
    * In all the scanning functions, if an operand implements method
    * Scan (that is, it implements the Scanner interface) that
    * method will be used to scan the text for that operand.  Also,
    * if the number of arguments scanned is less than the number of
    * arguments provided, an error is returned.
    * 
    * All arguments to be scanned must be either pointers to basic
    * types or implementations of the Scanner interface.
    * 
    * Like Scanf and Fscanf, Sscanf need not consume its entire input.
    * There is no way to recover how much of the input string Sscanf used.
    * 
    * Note: Fscan etc. can read one character (rune) past the input
    * they return, which means that a loop calling a scan routine
    * may skip some of the input.  This is usually a problem only
    * when there is no space between input values.  If the reader
    * provided to Fscan implements ReadRune, that method will be used
    * to read characters.  If the reader also implements UnreadRune,
    * that method will be used to save the character and successive
    * calls will not lose data.  To attach ReadRune and UnreadRune
    * methods to a reader without that capability, use
    * bufio.NewReader.
    * 
**/
class Fmt {
    /**
        * Errorf formats according to a format specifier and returns the string as a
        * value that satisfies error.
        * 
        * If the format specifier includes a %w verb with an error operand,
        * the returned error will implement an Unwrap method returning the operand.
        * If there is more than one %w verb, the returned error will implement an
        * Unwrap method returning a []error containing all the %w operands in the
        * order they appear in the arguments.
        * It is invalid to supply the %w verb with an operand that does not implement
        * the error interface. The %w verb is otherwise a synonym for %v.
    **/
    static public inline function errorf(_format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        final _format = (_format : stdgo.GoString);
        return stdgo._internal.fmt.Fmt_errorf.errorf(_format, ...[for (i in _a) i]);
    }
    /**
        * FormatString returns a string representing the fully qualified formatting
        * directive captured by the State, followed by the argument verb. (State does not
        * itself contain the verb.) The result has a leading percent sign followed by any
        * flags, the width, and the precision. Missing flags, width, and precision are
        * omitted. This function allows a Formatter to reconstruct the original
        * directive triggering the call to Format.
    **/
    static public inline function formatString(_state:State, _verb:StdTypes.Int):String {
        final _verb = (_verb : stdgo.GoInt32);
        return stdgo._internal.fmt.Fmt_formatstring.formatString(_state, _verb);
    }
    /**
        * Fprintf formats according to a format specifier and writes to w.
        * It returns the number of bytes written and any write error encountered.
    **/
    static public inline function fprintf(_w:stdgo._internal.io.Io_writer.Writer, _format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _format = (_format : stdgo.GoString);
        return {
            final obj = stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, _format, ...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Printf formats according to a format specifier and writes to standard output.
        * It returns the number of bytes written and any write error encountered.
    **/
    static public inline function printf(_format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _format = (_format : stdgo.GoString);
        return {
            final obj = stdgo._internal.fmt.Fmt_printf.printf(_format, ...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Sprintf formats according to a format specifier and returns the resulting string.
    **/
    static public inline function sprintf(_format:String, _a:haxe.Rest<stdgo.AnyInterface>):String {
        final _format = (_format : stdgo.GoString);
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(_format, ...[for (i in _a) i]);
    }
    /**
        * Appendf formats according to a format specifier, appends the result to the byte
        * slice, and returns the updated slice.
    **/
    static public inline function appendf(_b:Array<std.UInt>, _format:String, _a:haxe.Rest<stdgo.AnyInterface>):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _format = (_format : stdgo.GoString);
        return [for (i in stdgo._internal.fmt.Fmt_appendf.appendf(_b, _format, ...[for (i in _a) i])) i];
    }
    /**
        * Fprint formats using the default formats for its operands and writes to w.
        * Spaces are added between operands when neither is a string.
        * It returns the number of bytes written and any write error encountered.
    **/
    static public inline function fprint(_w:stdgo._internal.io.Io_writer.Writer, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_fprint.fprint(_w, ...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Print formats using the default formats for its operands and writes to standard output.
        * Spaces are added between operands when neither is a string.
        * It returns the number of bytes written and any write error encountered.
    **/
    static public inline function print(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_print.print(...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Sprint formats using the default formats for its operands and returns the resulting string.
        * Spaces are added between operands when neither is a string.
    **/
    static public inline function sprint(_a:haxe.Rest<stdgo.AnyInterface>):String {
        return stdgo._internal.fmt.Fmt_sprint.sprint(...[for (i in _a) i]);
    }
    /**
        * Append formats using the default formats for its operands, appends the result to
        * the byte slice, and returns the updated slice.
    **/
    static public inline function append(_b:Array<std.UInt>, _a:haxe.Rest<stdgo.AnyInterface>):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.fmt.Fmt_append.append(_b, ...[for (i in _a) i])) i];
    }
    /**
        * Fprintln formats using the default formats for its operands and writes to w.
        * Spaces are always added between operands and a newline is appended.
        * It returns the number of bytes written and any write error encountered.
    **/
    static public inline function fprintln(_w:stdgo._internal.io.Io_writer.Writer, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_fprintln.fprintln(_w, ...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Println formats using the default formats for its operands and writes to standard output.
        * Spaces are always added between operands and a newline is appended.
        * It returns the number of bytes written and any write error encountered.
    **/
    static public inline function println(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_println.println(...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Sprintln formats using the default formats for its operands and returns the resulting string.
        * Spaces are always added between operands and a newline is appended.
    **/
    static public inline function sprintln(_a:haxe.Rest<stdgo.AnyInterface>):String {
        return stdgo._internal.fmt.Fmt_sprintln.sprintln(...[for (i in _a) i]);
    }
    /**
        * Appendln formats using the default formats for its operands, appends the result
        * to the byte slice, and returns the updated slice. Spaces are always added
        * between operands and a newline is appended.
    **/
    static public inline function appendln(_b:Array<std.UInt>, _a:haxe.Rest<stdgo.AnyInterface>):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.fmt.Fmt_appendln.appendln(_b, ...[for (i in _a) i])) i];
    }
    /**
        * Scan scans text read from standard input, storing successive
        * space-separated values into successive arguments. Newlines count
        * as space. It returns the number of items successfully scanned.
        * If that is less than the number of arguments, err will report why.
    **/
    static public inline function scan(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_scan.scan(...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Scanln is similar to Scan, but stops scanning at a newline and
        * after the final item there must be a newline or EOF.
    **/
    static public inline function scanln(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_scanln.scanln(...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Scanf scans text read from standard input, storing successive
        * space-separated values into successive arguments as determined by
        * the format. It returns the number of items successfully scanned.
        * If that is less than the number of arguments, err will report why.
        * Newlines in the input must match newlines in the format.
        * The one exception: the verb %c always scans the next rune in the
        * input, even if it is a space (or tab etc.) or newline.
    **/
    static public inline function scanf(_format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _format = (_format : stdgo.GoString);
        return {
            final obj = stdgo._internal.fmt.Fmt_scanf.scanf(_format, ...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Sscan scans the argument string, storing successive space-separated
        * values into successive arguments. Newlines count as space. It
        * returns the number of items successfully scanned. If that is less
        * than the number of arguments, err will report why.
    **/
    static public inline function sscan(_str:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _str = (_str : stdgo.GoString);
        return {
            final obj = stdgo._internal.fmt.Fmt_sscan.sscan(_str, ...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Sscanln is similar to Sscan, but stops scanning at a newline and
        * after the final item there must be a newline or EOF.
    **/
    static public inline function sscanln(_str:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _str = (_str : stdgo.GoString);
        return {
            final obj = stdgo._internal.fmt.Fmt_sscanln.sscanln(_str, ...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Sscanf scans the argument string, storing successive space-separated
        * values into successive arguments as determined by the format. It
        * returns the number of items successfully parsed.
        * Newlines in the input must match newlines in the format.
    **/
    static public inline function sscanf(_str:String, _format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _str = (_str : stdgo.GoString);
        final _format = (_format : stdgo.GoString);
        return {
            final obj = stdgo._internal.fmt.Fmt_sscanf.sscanf(_str, _format, ...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Fscan scans text read from r, storing successive space-separated
        * values into successive arguments. Newlines count as space. It
        * returns the number of items successfully scanned. If that is less
        * than the number of arguments, err will report why.
    **/
    static public inline function fscan(_r:stdgo._internal.io.Io_reader.Reader, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_fscan.fscan(_r, ...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Fscanln is similar to Fscan, but stops scanning at a newline and
        * after the final item there must be a newline or EOF.
    **/
    static public inline function fscanln(_r:stdgo._internal.io.Io_reader.Reader, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt_fscanln.fscanln(_r, ...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Fscanf scans text read from r, storing successive space-separated
        * values into successive arguments as determined by the format. It
        * returns the number of items successfully parsed.
        * Newlines in the input must match newlines in the format.
    **/
    static public inline function fscanf(_r:stdgo._internal.io.Io_reader.Reader, _format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _format = (_format : stdgo.GoString);
        return {
            final obj = stdgo._internal.fmt.Fmt_fscanf.fscanf(_r, _format, ...[for (i in _a) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
