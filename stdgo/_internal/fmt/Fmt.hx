package stdgo._internal.fmt;
private var __go2hxdoc__package : Bool;
final _ldigits : stdgo.GoString = ("0123456789abcdefx" : stdgo.GoString);
final _udigits : stdgo.GoString = ("0123456789ABCDEFX" : stdgo.GoString);
final _signed : Bool = true;
final _unsigned : Bool = false;
final _commaSpaceString : stdgo.GoString = (", " : stdgo.GoString);
final _nilAngleString : stdgo.GoString = ("<nil>" : stdgo.GoString);
final _nilParenString : stdgo.GoString = ("(nil)" : stdgo.GoString);
final _nilString : stdgo.GoString = ("nil" : stdgo.GoString);
final _mapString : stdgo.GoString = ("map[" : stdgo.GoString);
final _percentBangString : stdgo.GoString = ("%!" : stdgo.GoString);
final _missingString : stdgo.GoString = ("(MISSING)" : stdgo.GoString);
final _badIndexString : stdgo.GoString = ("(BADINDEX)" : stdgo.GoString);
final _panicString : stdgo.GoString = ("(PANIC=" : stdgo.GoString);
final _extraString : stdgo.GoString = ("%!(EXTRA " : stdgo.GoString);
final _badWidthString : stdgo.GoString = ("%!(BADWIDTH)" : stdgo.GoString);
final _badPrecString : stdgo.GoString = ("%!(BADPREC)" : stdgo.GoString);
final _noVerbString : stdgo.GoString = ("%!(NOVERB)" : stdgo.GoString);
final _invReflectString : stdgo.GoString = ("<invalid reflect.Value>" : stdgo.GoString);
final _eof : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final _binaryDigits : stdgo.GoString = ("01" : stdgo.GoString);
final _octalDigits : stdgo.GoString = ("01234567" : stdgo.GoString);
final _decimalDigits : stdgo.GoString = ("0123456789" : stdgo.GoString);
final _hexadecimalDigits : stdgo.GoString = ("0123456789aAbBcCdDeEfF" : stdgo.GoString);
final _sign : stdgo.GoString = ("+-" : stdgo.GoString);
final _period : stdgo.GoString = ("." : stdgo.GoString);
final _exponent : stdgo.GoString = ("eEpP" : stdgo.GoString);
final _floatVerbs : stdgo.GoString = ("beEfFgGv" : stdgo.GoString);
final _hugeWid : stdgo.GoUInt64 = (1073741824i64 : stdgo.GoUInt64);
final _intBits : stdgo.GoUInt64 = (32i64 : stdgo.GoUInt64);
final _uintptrBits : stdgo.GoUInt64 = (32i64 : stdgo.GoUInt64);
var _ppFree : stdgo._internal.sync.Sync.Pool = ({ new_ : function():stdgo.AnyInterface {
        return stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.fmt.Fmt.T_pp)) : stdgo.Ref<stdgo._internal.fmt.Fmt.T_pp>)));
    } } : stdgo._internal.sync.Sync.Pool);
var _space : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt16>> = (new stdgo.Slice<stdgo.GoArray<stdgo.GoUInt16>>(10, 10, ...[(new stdgo.GoArray<stdgo.GoUInt16>(2, 2, ...[(9 : stdgo.GoUInt16), (13 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt16>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt16>(2, 2, ...[(32 : stdgo.GoUInt16), (32 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt16>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt16>(2, 2, ...[(133 : stdgo.GoUInt16), (133 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt16>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt16>(2, 2, ...[(160 : stdgo.GoUInt16), (160 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt16>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt16>(2, 2, ...[(5760 : stdgo.GoUInt16), (5760 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt16>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt16>(2, 2, ...[(8192 : stdgo.GoUInt16), (8202 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt16>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt16>(2, 2, ...[(8232 : stdgo.GoUInt16), (8233 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt16>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt16>(2, 2, ...[(8239 : stdgo.GoUInt16), (8239 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt16>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt16>(2, 2, ...[(8287 : stdgo.GoUInt16), (8287 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt16>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt16>(2, 2, ...[(12288 : stdgo.GoUInt16), (12288 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt16>)?.__copy__()].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUInt16>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUInt16)])])) : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt16>>);
var _ssFree : stdgo._internal.sync.Sync.Pool = ({ new_ : function():stdgo.AnyInterface {
        return stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.fmt.Fmt.T_ss)) : stdgo.Ref<stdgo._internal.fmt.Fmt.T_ss>)));
    } } : stdgo._internal.sync.Sync.Pool);
var _errComplex : stdgo.Error = stdgo._internal.errors.Errors.new_(("syntax error scanning complex number" : stdgo.GoString));
var _errBool : stdgo.Error = stdgo._internal.errors.Errors.new_(("syntax error scanning boolean" : stdgo.GoString));
var isSpace : stdgo.GoInt32 -> Bool = _isSpace;
var parsenum : (stdgo.GoString, stdgo.GoInt, stdgo.GoInt) -> { var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoInt; } = _parsenum;
@:keep class State_static_extension {
    static public function flag(t:State, _c:stdgo.GoInt):Bool return t.flag(_c);
    static public function precision(t:State):{ var _0 : stdgo.GoInt; var _1 : Bool; } return t.precision();
    static public function width(t:State):{ var _0 : stdgo.GoInt; var _1 : Bool; } return t.width();
    static public function write(t:State, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.write(_b);
}
typedef State = stdgo.StructType & {
    /**
        Write is the function to call to emit formatted output to be printed.
        
        
    **/
    public dynamic function write(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    /**
        Width returns the value of the width option and whether it has been set.
        
        
    **/
    public dynamic function width():{ var _0 : stdgo.GoInt; var _1 : Bool; };
    /**
        Precision returns the value of the precision option and whether it has been set.
        
        
    **/
    public dynamic function precision():{ var _0 : stdgo.GoInt; var _1 : Bool; };
    /**
        Flag reports whether the flag c, a character, has been set.
        
        
    **/
    public dynamic function flag(_c:stdgo.GoInt):Bool;
};
@:keep class Formatter_static_extension {
    static public function format(t:Formatter, _f:State, _verb:stdgo.GoRune):Void t.format(_f, _verb);
}
typedef Formatter = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function format(_f:State, _verb:stdgo.GoRune):Void;
};
@:keep class Stringer_static_extension {
    static public function string(t:Stringer):stdgo.GoString return t.string();
}
typedef Stringer = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function string():stdgo.GoString;
};
@:keep class GoStringer_static_extension {
    static public function goString(t:GoStringer):stdgo.GoString return t.goString();
}
typedef GoStringer = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function goString():stdgo.GoString;
};
@:keep class ScanState_static_extension {
    static public function read(t:ScanState, _buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.read(_buf);
    static public function width(t:ScanState):{ var _0 : stdgo.GoInt; var _1 : Bool; } return t.width();
    static public function token(t:ScanState, _skipSpace:Bool, _f:stdgo.GoRune -> Bool):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return t.token(_skipSpace, _f);
    static public function skipSpace(t:ScanState):Void t.skipSpace();
    static public function unreadRune(t:ScanState):stdgo.Error return t.unreadRune();
    static public function readRune(t:ScanState):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return t.readRune();
}
typedef ScanState = stdgo.StructType & {
    /**
        ReadRune reads the next rune (Unicode code point) from the input.
        If invoked during Scanln, Fscanln, or Sscanln, ReadRune() will
        return EOF after returning the first '\n' or when reading beyond
        the specified width.
        
        
    **/
    public dynamic function readRune():{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; var _2 : stdgo.Error; };
    /**
        UnreadRune causes the next call to ReadRune to return the same rune.
        
        
    **/
    public dynamic function unreadRune():stdgo.Error;
    /**
        SkipSpace skips space in the input. Newlines are treated appropriately
        for the operation being performed; see the package documentation
        for more information.
        
        
    **/
    public dynamic function skipSpace():Void;
    /**
        Token skips space in the input if skipSpace is true, then returns the
        run of Unicode code points c satisfying f(c).  If f is nil,
        !unicode.IsSpace(c) is used; that is, the token will hold non-space
        characters. Newlines are treated appropriately for the operation being
        performed; see the package documentation for more information.
        The returned slice points to shared data that may be overwritten
        by the next call to Token, a call to a Scan function using the ScanState
        as input, or when the calling Scan method returns.
        
        
    **/
    public dynamic function token(_skipSpace:Bool, _f:stdgo.GoRune -> Bool):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; };
    /**
        Width returns the value of the width option and whether it has been set.
        The unit is Unicode code points.
        
        
    **/
    public dynamic function width():{ var _0 : stdgo.GoInt; var _1 : Bool; };
    /**
        Because ReadRune is implemented by the interface, Read should never be
        called by the scanning routines and a valid implementation of
        ScanState may choose always to return an error from Read.
        
        
    **/
    public dynamic function read(_buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};
@:keep class Scanner_static_extension {
    static public function scan(t:Scanner, _state:ScanState, _verb:stdgo.GoRune):stdgo.Error return t.scan(_state, _verb);
}
typedef Scanner = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function scan(_state:ScanState, _verb:stdgo.GoRune):stdgo.Error;
};
@:structInit @:private @:using(stdgo._internal.fmt.Fmt.T_wrapError_static_extension) class T_wrapError {
    public var _msg : stdgo.GoString = "";
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_msg:stdgo.GoString, ?_err:stdgo.Error) {
        if (_msg != null) this._msg = _msg;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_wrapError(_msg, _err);
    }
}
@:structInit @:private @:using(stdgo._internal.fmt.Fmt.T_wrapErrors_static_extension) class T_wrapErrors {
    public var _msg : stdgo.GoString = "";
    public var _errs : stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
    public function new(?_msg:stdgo.GoString, ?_errs:stdgo.Slice<stdgo.Error>) {
        if (_msg != null) this._msg = _msg;
        if (_errs != null) this._errs = _errs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_wrapErrors(_msg, _errs);
    }
}
@:structInit @:private class T_fmtFlags {
    public var _widPresent : Bool = false;
    public var _precPresent : Bool = false;
    public var _minus : Bool = false;
    public var _plus : Bool = false;
    public var _sharp : Bool = false;
    public var _space : Bool = false;
    public var _zero : Bool = false;
    public var _plusV : Bool = false;
    public var _sharpV : Bool = false;
    public function new(?_widPresent:Bool, ?_precPresent:Bool, ?_minus:Bool, ?_plus:Bool, ?_sharp:Bool, ?_space:Bool, ?_zero:Bool, ?_plusV:Bool, ?_sharpV:Bool) {
        if (_widPresent != null) this._widPresent = _widPresent;
        if (_precPresent != null) this._precPresent = _precPresent;
        if (_minus != null) this._minus = _minus;
        if (_plus != null) this._plus = _plus;
        if (_sharp != null) this._sharp = _sharp;
        if (_space != null) this._space = _space;
        if (_zero != null) this._zero = _zero;
        if (_plusV != null) this._plusV = _plusV;
        if (_sharpV != null) this._sharpV = _sharpV;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fmtFlags(_widPresent, _precPresent, _minus, _plus, _sharp, _space, _zero, _plusV, _sharpV);
    }
}
@:structInit @:private @:using(stdgo._internal.fmt.Fmt.T_fmt_static_extension) class T_fmt {
    public var _buf : stdgo.Ref<stdgo._internal.fmt.Fmt.T_buffer> = (null : stdgo.Ref<stdgo._internal.fmt.Fmt.T_buffer>);
    @:embedded
    public var _fmtFlags : stdgo._internal.fmt.Fmt.T_fmtFlags = ({} : stdgo._internal.fmt.Fmt.T_fmtFlags);
    public var _wid : stdgo.GoInt = 0;
    public var _prec : stdgo.GoInt = 0;
    public var _intbuf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(68, 68, ...[for (i in 0 ... 68) (0 : stdgo.GoUInt8)]);
    public function new(?_buf:stdgo.Ref<stdgo._internal.fmt.Fmt.T_buffer>, ?_fmtFlags:stdgo._internal.fmt.Fmt.T_fmtFlags, ?_wid:stdgo.GoInt, ?_prec:stdgo.GoInt, ?_intbuf:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_buf != null) this._buf = _buf;
        if (_fmtFlags != null) this._fmtFlags = _fmtFlags;
        if (_wid != null) this._wid = _wid;
        if (_prec != null) this._prec = _prec;
        if (_intbuf != null) this._intbuf = _intbuf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fmt(_buf, _fmtFlags, _wid, _prec, _intbuf);
    }
}
@:structInit @:private @:using(stdgo._internal.fmt.Fmt.T_pp_static_extension) class T_pp {
    public var _buf : stdgo._internal.fmt.Fmt.T_buffer = new stdgo._internal.fmt.Fmt.T_buffer(0, 0);
    public var _arg : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _value : stdgo._internal.reflect.Reflect.Value = ({} : stdgo._internal.reflect.Reflect.Value);
    public var _fmt : stdgo._internal.fmt.Fmt.T_fmt = ({} : stdgo._internal.fmt.Fmt.T_fmt);
    public var _reordered : Bool = false;
    public var _goodArgNum : Bool = false;
    public var _panicking : Bool = false;
    public var _erroring : Bool = false;
    public var _wrapErrs : Bool = false;
    public var _wrappedErrs : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_buf:stdgo._internal.fmt.Fmt.T_buffer, ?_arg:stdgo.AnyInterface, ?_value:stdgo._internal.reflect.Reflect.Value, ?_fmt:stdgo._internal.fmt.Fmt.T_fmt, ?_reordered:Bool, ?_goodArgNum:Bool, ?_panicking:Bool, ?_erroring:Bool, ?_wrapErrs:Bool, ?_wrappedErrs:stdgo.Slice<stdgo.GoInt>) {
        if (_buf != null) this._buf = _buf;
        if (_arg != null) this._arg = _arg;
        if (_value != null) this._value = _value;
        if (_fmt != null) this._fmt = _fmt;
        if (_reordered != null) this._reordered = _reordered;
        if (_goodArgNum != null) this._goodArgNum = _goodArgNum;
        if (_panicking != null) this._panicking = _panicking;
        if (_erroring != null) this._erroring = _erroring;
        if (_wrapErrs != null) this._wrapErrs = _wrapErrs;
        if (_wrappedErrs != null) this._wrappedErrs = _wrappedErrs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pp(_buf, _arg, _value, _fmt, _reordered, _goodArgNum, _panicking, _erroring, _wrapErrs, _wrappedErrs);
    }
}
@:structInit @:private class T_scanError {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_scanError(_err);
    }
}
@:structInit @:private @:using(stdgo._internal.fmt.Fmt.T_ss_static_extension) class T_ss {
    public var _rs : stdgo._internal.io.Io.RuneScanner = (null : stdgo._internal.io.Io.RuneScanner);
    public var _buf : stdgo._internal.fmt.Fmt.T_buffer = new stdgo._internal.fmt.Fmt.T_buffer(0, 0);
    public var _count : stdgo.GoInt = 0;
    public var _atEOF : Bool = false;
    @:embedded
    public var _ssave : stdgo._internal.fmt.Fmt.T_ssave = ({} : stdgo._internal.fmt.Fmt.T_ssave);
    public function new(?_rs:stdgo._internal.io.Io.RuneScanner, ?_buf:stdgo._internal.fmt.Fmt.T_buffer, ?_count:stdgo.GoInt, ?_atEOF:Bool, ?_ssave:stdgo._internal.fmt.Fmt.T_ssave) {
        if (_rs != null) this._rs = _rs;
        if (_buf != null) this._buf = _buf;
        if (_count != null) this._count = _count;
        if (_atEOF != null) this._atEOF = _atEOF;
        if (_ssave != null) this._ssave = _ssave;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ss(_rs, _buf, _count, _atEOF, _ssave);
    }
}
@:structInit @:private class T_ssave {
    public var _validSave : Bool = false;
    public var _nlIsEnd : Bool = false;
    public var _nlIsSpace : Bool = false;
    public var _argLimit : stdgo.GoInt = 0;
    public var _limit : stdgo.GoInt = 0;
    public var _maxWid : stdgo.GoInt = 0;
    public function new(?_validSave:Bool, ?_nlIsEnd:Bool, ?_nlIsSpace:Bool, ?_argLimit:stdgo.GoInt, ?_limit:stdgo.GoInt, ?_maxWid:stdgo.GoInt) {
        if (_validSave != null) this._validSave = _validSave;
        if (_nlIsEnd != null) this._nlIsEnd = _nlIsEnd;
        if (_nlIsSpace != null) this._nlIsSpace = _nlIsSpace;
        if (_argLimit != null) this._argLimit = _argLimit;
        if (_limit != null) this._limit = _limit;
        if (_maxWid != null) this._maxWid = _maxWid;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ssave(_validSave, _nlIsEnd, _nlIsSpace, _argLimit, _limit, _maxWid);
    }
}
@:structInit @:private @:using(stdgo._internal.fmt.Fmt.T_readRune_static_extension) class T_readRune {
    public var _reader : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
    public var _pending : stdgo.GoInt = 0;
    public var _pendBuf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
    public var _peekRune : stdgo.GoInt32 = 0;
    public function new(?_reader:stdgo._internal.io.Io.Reader, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_pending:stdgo.GoInt, ?_pendBuf:stdgo.GoArray<stdgo.GoUInt8>, ?_peekRune:stdgo.GoInt32) {
        if (_reader != null) this._reader = _reader;
        if (_buf != null) this._buf = _buf;
        if (_pending != null) this._pending = _pending;
        if (_pendBuf != null) this._pendBuf = _pendBuf;
        if (_peekRune != null) this._peekRune = _peekRune;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_readRune(_reader, _buf, _pending, _pendBuf, _peekRune);
    }
}
@:named @:using(stdgo._internal.fmt.Fmt.T_buffer_static_extension) typedef T_buffer = stdgo.Slice<stdgo.GoUInt8>;
@:named @:using(stdgo._internal.fmt.Fmt.T_stringReader_static_extension) typedef T_stringReader = stdgo.GoString;
function errorf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _p = _newPrinter();
        _p._wrapErrs = true;
        _p._doPrintf(_format?.__copy__(), _a);
        var _s = (_p._buf : stdgo.GoString)?.__copy__();
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            final __value__ = (_p._wrappedErrs.length);
            if (__value__ == ((0 : stdgo.GoInt))) {
                _err = stdgo._internal.errors.Errors.new_(_s?.__copy__());
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                var _w = (stdgo.Go.setRef(({ _msg : _s?.__copy__() } : stdgo._internal.fmt.Fmt.T_wrapError)) : stdgo.Ref<stdgo._internal.fmt.Fmt.T_wrapError>);
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_a[(_p._wrappedErrs[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.Error)) : stdgo.Error), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Error), _1 : false };
                    };
                    _w._err = __tmp__._0;
                };
                _err = stdgo.Go.asInterface(_w);
            } else {
                if (_p._reordered) {
                    stdgo._internal.sort.Sort.ints(_p._wrappedErrs);
                };
                var _errs:stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
                for (_i => _argNum in _p._wrappedErrs) {
                    if (((_i > (0 : stdgo.GoInt) : Bool) && (_p._wrappedErrs[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == _argNum) : Bool)) {
                        continue;
                    };
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((_a[(_argNum : stdgo.GoInt)] : stdgo.Error)) : stdgo.Error), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Error), _1 : false };
                        }, _e = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            _errs = (_errs.__append__(_e));
                        };
                    };
                };
                _err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.fmt.Fmt.T_wrapErrors(_s?.__copy__(), _errs) : stdgo._internal.fmt.Fmt.T_wrapErrors)) : stdgo.Ref<stdgo._internal.fmt.Fmt.T_wrapErrors>));
            };
        };
        _p._free();
        return _err;
    }
function formatString(_state:State, _verb:stdgo.GoRune):stdgo.GoString {
        var _tmp:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]);
        var _b = ((_tmp.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__((37 : stdgo.GoUInt8)));
        for (__0 => _c in (" +-#0" : stdgo.GoString)) {
            if (_state.flag((_c : stdgo.GoInt))) {
                _b = (_b.__append__((_c : stdgo.GoByte)));
            };
        };
        {
            var __tmp__ = _state.width(), _w:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _b = stdgo._internal.strconv.Strconv.appendInt(_b, (_w : stdgo.GoInt64), (10 : stdgo.GoInt));
            };
        };
        {
            var __tmp__ = _state.precision(), _p:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _b = (_b.__append__((46 : stdgo.GoUInt8)));
                _b = stdgo._internal.strconv.Strconv.appendInt(_b, (_p : stdgo.GoInt64), (10 : stdgo.GoInt));
            };
        };
        _b = stdgo._internal.unicode.utf8.Utf8.appendRune(_b, _verb);
        return (_b : stdgo.GoString)?.__copy__();
    }
function _newPrinter():stdgo.Ref<T_pp> {
        var _p = (stdgo.Go.typeAssert((_ppFree.get() : stdgo.Ref<T_pp>)) : stdgo.Ref<T_pp>);
        _p._panicking = false;
        _p._erroring = false;
        _p._wrapErrs = false;
        _p._fmt._init((stdgo.Go.setRef(_p._buf) : stdgo.Ref<stdgo._internal.fmt.Fmt.T_buffer>));
        return _p;
    }
function fprintf(_w:stdgo._internal.io.Io.Writer, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _p = _newPrinter();
        _p._doPrintf(_format?.__copy__(), _a);
        {
            var __tmp__ = _w.write(_p._buf);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _p._free();
        return { _0 : _n, _1 : _err };
    }
function printf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), _format?.__copy__(), ...(_a : Array<stdgo.AnyInterface>));
    }
function sprintf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _p = _newPrinter();
        _p._doPrintf(_format?.__copy__(), _a);
        var _s = (_p._buf : stdgo.GoString)?.__copy__();
        _p._free();
        return _s?.__copy__();
    }
function appendf(_b:stdgo.Slice<stdgo.GoByte>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoByte> {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _p = _newPrinter();
        _p._doPrintf(_format?.__copy__(), _a);
        _b = (_b.__append__(...(_p._buf : Array<stdgo.GoUInt8>)));
        _p._free();
        return _b;
    }
function fprint(_w:stdgo._internal.io.Io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _p = _newPrinter();
        _p._doPrint(_a);
        {
            var __tmp__ = _w.write(_p._buf);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _p._free();
        return { _0 : _n, _1 : _err };
    }
function print(_a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return fprint(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), ...(_a : Array<stdgo.AnyInterface>));
    }
function sprint(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _p = _newPrinter();
        _p._doPrint(_a);
        var _s = (_p._buf : stdgo.GoString)?.__copy__();
        _p._free();
        return _s?.__copy__();
    }
function append(_b:stdgo.Slice<stdgo.GoByte>, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoByte> {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _p = _newPrinter();
        _p._doPrint(_a);
        _b = (_b.__append__(...(_p._buf : Array<stdgo.GoUInt8>)));
        _p._free();
        return _b;
    }
function fprintln(_w:stdgo._internal.io.Io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _p = _newPrinter();
        _p._doPrintln(_a);
        {
            var __tmp__ = _w.write(_p._buf);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _p._free();
        return { _0 : _n, _1 : _err };
    }
function println(_a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return fprintln(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), ...(_a : Array<stdgo.AnyInterface>));
    }
function sprintln(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _p = _newPrinter();
        _p._doPrintln(_a);
        var _s = (_p._buf : stdgo.GoString)?.__copy__();
        _p._free();
        return _s?.__copy__();
    }
function appendln(_b:stdgo.Slice<stdgo.GoByte>, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoByte> {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _p = _newPrinter();
        _p._doPrintln(_a);
        _b = (_b.__append__(...(_p._buf : Array<stdgo.GoUInt8>)));
        _p._free();
        return _b;
    }
function _getField(_v:stdgo._internal.reflect.Reflect.Value, _i:stdgo.GoInt):stdgo._internal.reflect.Reflect.Value {
        var _val = _v.field(_i)?.__copy__();
        if (((_val.kind() == (20u32 : stdgo._internal.reflect.Reflect.Kind)) && !_val.isNil() : Bool)) {
            _val = _val.elem()?.__copy__();
        };
        return _val?.__copy__();
    }
function _tooLarge(_x:stdgo.GoInt):Bool {
        {};
        return ((_x > (1000000 : stdgo.GoInt) : Bool) || (_x < (-1000000 : stdgo.GoInt) : Bool) : Bool);
    }
function _parsenum(_s:stdgo.GoString, _start:stdgo.GoInt, _end:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoInt; } {
        var _num = (0 : stdgo.GoInt), _isnum = false, _newi = (0 : stdgo.GoInt);
        if ((_start >= _end : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : false, _2 : _end };
        };
        {
            _newi = _start;
            stdgo.Go.cfor((((_newi < _end : Bool) && ((48 : stdgo.GoUInt8) <= _s[(_newi : stdgo.GoInt)] : Bool) : Bool) && (_s[(_newi : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool), _newi++, {
                if (_tooLarge(_num)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : false, _2 : _end };
                };
                _num = ((_num * (10 : stdgo.GoInt) : stdgo.GoInt) + ((_s[(_newi : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt) : stdgo.GoInt);
                _isnum = true;
            });
        };
        return { _0 : _num, _1 : _isnum, _2 : _newi };
    }
function _intFromArg(_a:stdgo.Slice<stdgo.AnyInterface>, _argNum:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoInt; } {
        var _num = (0 : stdgo.GoInt), _isInt = false, _newArgNum = (0 : stdgo.GoInt);
        _newArgNum = _argNum;
        if ((_argNum < (_a.length) : Bool)) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_a[(_argNum : stdgo.GoInt)] : stdgo.GoInt)) : stdgo.GoInt), _1 : true };
                } catch(_) {
                    { _0 : (0 : stdgo.GoInt), _1 : false };
                };
                _num = __tmp__._0;
                _isInt = __tmp__._1;
            };
            if (!_isInt) {
                {
                    var _v = stdgo._internal.reflect.Reflect.valueOf(_a[(_argNum : stdgo.GoInt)])?.__copy__();
                    {
                        final __value__ = _v.kind();
                        if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect.Kind))) {
                            var _n = _v.int_();
                            if (((_n : stdgo.GoInt) : stdgo.GoInt64) == (_n)) {
                                _num = (_n : stdgo.GoInt);
                                _isInt = true;
                            };
                        } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect.Kind))) {
                            var _n = _v.uint();
                            if ((((_n : stdgo.GoInt64) >= (0i64 : stdgo.GoInt64) : Bool) && (((_n : stdgo.GoInt) : stdgo.GoUInt64) == _n) : Bool)) {
                                _num = (_n : stdgo.GoInt);
                                _isInt = true;
                            };
                        } else {};
                    };
                };
            };
            _newArgNum = (_argNum + (1 : stdgo.GoInt) : stdgo.GoInt);
            if (_tooLarge(_num)) {
                _num = (0 : stdgo.GoInt);
                _isInt = false;
            };
        };
        return { _0 : _num, _1 : _isInt, _2 : _newArgNum };
    }
function _parseArgNumber(_format:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } {
        var _index = (0 : stdgo.GoInt), _wid = (0 : stdgo.GoInt), _ok = false;
        if (((_format.length) < (3 : stdgo.GoInt) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (1 : stdgo.GoInt), _2 : false };
        };
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_format.length) : Bool), _i++, {
                if (_format[(_i : stdgo.GoInt)] == ((93 : stdgo.GoUInt8))) {
                    var __tmp__ = _parsenum(_format?.__copy__(), (1 : stdgo.GoInt), _i), _width:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1, _newi:stdgo.GoInt = __tmp__._2;
                    if ((!_ok || (_newi != _i) : Bool)) {
                        return { _0 : (0 : stdgo.GoInt), _1 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt), _2 : false };
                    };
                    return { _0 : (_width - (1 : stdgo.GoInt) : stdgo.GoInt), _1 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt), _2 : true };
                };
            });
        };
        return { _0 : (0 : stdgo.GoInt), _1 : (1 : stdgo.GoInt), _2 : false };
    }
function scan(_a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return fscan(stdgo.Go.asInterface(stdgo._internal.os.Os.stdin), ...(_a : Array<stdgo.AnyInterface>));
    }
function scanln(_a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return fscanln(stdgo.Go.asInterface(stdgo._internal.os.Os.stdin), ...(_a : Array<stdgo.AnyInterface>));
    }
function scanf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return fscanf(stdgo.Go.asInterface(stdgo._internal.os.Os.stdin), _format?.__copy__(), ...(_a : Array<stdgo.AnyInterface>));
    }
function sscan(_str:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return fscan(stdgo.Go.asInterface(new stdgo.Pointer<stdgo._internal.fmt.Fmt.T_stringReader>(() -> (stdgo.Go.pointer(_str).value : stdgo._internal.fmt.Fmt.T_stringReader), v -> (stdgo.Go.pointer(_str).value = (v : stdgo.GoString) : stdgo._internal.fmt.Fmt.T_stringReader))), ...(_a : Array<stdgo.AnyInterface>));
    }
function sscanln(_str:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return fscanln(stdgo.Go.asInterface(new stdgo.Pointer<stdgo._internal.fmt.Fmt.T_stringReader>(() -> (stdgo.Go.pointer(_str).value : stdgo._internal.fmt.Fmt.T_stringReader), v -> (stdgo.Go.pointer(_str).value = (v : stdgo.GoString) : stdgo._internal.fmt.Fmt.T_stringReader))), ...(_a : Array<stdgo.AnyInterface>));
    }
function sscanf(_str:stdgo.GoString, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return fscanf(stdgo.Go.asInterface(new stdgo.Pointer<stdgo._internal.fmt.Fmt.T_stringReader>(() -> (stdgo.Go.pointer(_str).value : stdgo._internal.fmt.Fmt.T_stringReader), v -> (stdgo.Go.pointer(_str).value = (v : stdgo.GoString) : stdgo._internal.fmt.Fmt.T_stringReader))), _format?.__copy__(), ...(_a : Array<stdgo.AnyInterface>));
    }
function fscan(_r:stdgo._internal.io.Io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var __tmp__ = _newScanState(_r, true, false), _s:stdgo.Ref<stdgo._internal.fmt.Fmt.T_ss> = __tmp__._0, _old:stdgo._internal.fmt.Fmt.T_ssave = __tmp__._1;
        {
            var __tmp__ = _s._doScan(_a);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _s._free(_old?.__copy__());
        return { _0 : _n, _1 : _err };
    }
function fscanln(_r:stdgo._internal.io.Io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var __tmp__ = _newScanState(_r, false, true), _s:stdgo.Ref<stdgo._internal.fmt.Fmt.T_ss> = __tmp__._0, _old:stdgo._internal.fmt.Fmt.T_ssave = __tmp__._1;
        {
            var __tmp__ = _s._doScan(_a);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _s._free(_old?.__copy__());
        return { _0 : _n, _1 : _err };
    }
function fscanf(_r:stdgo._internal.io.Io.Reader, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var __tmp__ = _newScanState(_r, false, false), _s:stdgo.Ref<stdgo._internal.fmt.Fmt.T_ss> = __tmp__._0, _old:stdgo._internal.fmt.Fmt.T_ssave = __tmp__._1;
        {
            var __tmp__ = _s._doScanf(_format?.__copy__(), _a);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _s._free(_old?.__copy__());
        return { _0 : _n, _1 : _err };
    }
function _isSpace(_r:stdgo.GoRune):Bool {
        if ((_r >= (65536 : stdgo.GoInt32) : Bool)) {
            return false;
        };
        var _rx = (_r : stdgo.GoUInt16);
        for (__0 => _rng in _space) {
            if ((_rx < _rng[(0 : stdgo.GoInt)] : Bool)) {
                return false;
            };
            if ((_rx <= _rng[(1 : stdgo.GoInt)] : Bool)) {
                return true;
            };
        };
        return false;
    }
function _notSpace(_r:stdgo.GoRune):Bool {
        return !_isSpace(_r);
    }
function _newScanState(_r:stdgo._internal.io.Io.Reader, _nlIsSpace:Bool, _nlIsEnd:Bool):{ var _0 : stdgo.Ref<T_ss>; var _1 : T_ssave; } {
        var _s = (null : stdgo.Ref<stdgo._internal.fmt.Fmt.T_ss>), _old = ({} : stdgo._internal.fmt.Fmt.T_ssave);
        _s = (stdgo.Go.typeAssert((_ssFree.get() : stdgo.Ref<T_ss>)) : stdgo.Ref<T_ss>);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.io.Io.RuneScanner)) : stdgo._internal.io.Io.RuneScanner), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io.RuneScanner), _1 : false };
            }, _rs = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _s._rs = _rs;
            } else {
                _s._rs = stdgo.Go.asInterface((stdgo.Go.setRef(({ _reader : _r, _peekRune : (-1 : stdgo.GoInt32) } : stdgo._internal.fmt.Fmt.T_readRune)) : stdgo.Ref<stdgo._internal.fmt.Fmt.T_readRune>));
            };
        };
        _s._ssave._nlIsSpace = _nlIsSpace;
        _s._ssave._nlIsEnd = _nlIsEnd;
        _s._atEOF = false;
        _s._ssave._limit = (1073741824 : stdgo.GoInt);
        _s._ssave._argLimit = (1073741824 : stdgo.GoInt);
        _s._ssave._maxWid = (1073741824 : stdgo.GoInt);
        _s._ssave._validSave = true;
        _s._count = (0 : stdgo.GoInt);
        return { _0 : _s, _1 : _old };
    }
function _indexRune(_s:stdgo.GoString, _r:stdgo.GoRune):stdgo.GoInt {
        for (_i => _c in _s) {
            if (_c == (_r)) {
                return _i;
            };
        };
        return (-1 : stdgo.GoInt);
    }
function _hasX(_s:stdgo.GoString):Bool {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                if (((_s[(_i : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(_i : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) {
                    return true;
                };
            });
        };
        return false;
    }
function _hexDigit(_d:stdgo.GoRune):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _digit = (_d : stdgo.GoInt);
        {
            final __value__ = _digit;
            if (__value__ == ((48 : stdgo.GoInt)) || __value__ == ((49 : stdgo.GoInt)) || __value__ == ((50 : stdgo.GoInt)) || __value__ == ((51 : stdgo.GoInt)) || __value__ == ((52 : stdgo.GoInt)) || __value__ == ((53 : stdgo.GoInt)) || __value__ == ((54 : stdgo.GoInt)) || __value__ == ((55 : stdgo.GoInt)) || __value__ == ((56 : stdgo.GoInt)) || __value__ == ((57 : stdgo.GoInt))) {
                return { _0 : (_digit - (48 : stdgo.GoInt) : stdgo.GoInt), _1 : true };
            } else if (__value__ == ((97 : stdgo.GoInt)) || __value__ == ((98 : stdgo.GoInt)) || __value__ == ((99 : stdgo.GoInt)) || __value__ == ((100 : stdgo.GoInt)) || __value__ == ((101 : stdgo.GoInt)) || __value__ == ((102 : stdgo.GoInt))) {
                return { _0 : (((10 : stdgo.GoInt) + _digit : stdgo.GoInt) - (97 : stdgo.GoInt) : stdgo.GoInt), _1 : true };
            } else if (__value__ == ((65 : stdgo.GoInt)) || __value__ == ((66 : stdgo.GoInt)) || __value__ == ((67 : stdgo.GoInt)) || __value__ == ((68 : stdgo.GoInt)) || __value__ == ((69 : stdgo.GoInt)) || __value__ == ((70 : stdgo.GoInt))) {
                return { _0 : (((10 : stdgo.GoInt) + _digit : stdgo.GoInt) - (65 : stdgo.GoInt) : stdgo.GoInt), _1 : true };
            };
        };
        return { _0 : (-1 : stdgo.GoInt), _1 : false };
    }
function _errorHandler(_errp:stdgo.Ref<stdgo.Error>):Void {
        {
            var _e = ({
                final r = stdgo.Go.recover_exception;
                stdgo.Go.recover_exception = null;
                r;
            });
            if (_e != null) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_e : T_scanError)) : T_scanError), _1 : true };
                    } catch(_) {
                        { _0 : ({} : stdgo._internal.fmt.Fmt.T_scanError), _1 : false };
                    }, _se = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        {
                            var __tmp__ = _se._err;
                            (_errp : stdgo.Error).error = __tmp__.error;
                        };
                    } else {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((_e : stdgo.Error)) : stdgo.Error), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Error), _1 : false };
                        }, _eof = __tmp__._0, _ok = __tmp__._1;
                        if ((_ok && (stdgo.Go.toInterface(_eof) == stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) : Bool)) {
                            {
                                var __tmp__ = _eof;
                                (_errp : stdgo.Error).error = __tmp__.error;
                            };
                        } else {
                            throw stdgo.Go.toInterface(_e);
                        };
                    };
                };
            };
        };
    }
class T_wrapError_asInterface {
    @:keep
    public dynamic function unwrap():stdgo.Error return __self__.value.unwrap();
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_wrapError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt.Fmt.T_wrapError_asInterface) class T_wrapError_static_extension {
    @:keep
    static public function unwrap( _e:stdgo.Ref<T_wrapError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<T_wrapError> = _e;
        return _e._err;
    }
    @:keep
    static public function error( _e:stdgo.Ref<T_wrapError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<T_wrapError> = _e;
        return _e._msg?.__copy__();
    }
}
class T_wrapErrors_asInterface {
    @:keep
    public dynamic function unwrap():stdgo.Slice<stdgo.Error> return __self__.value.unwrap();
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_wrapErrors>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt.Fmt.T_wrapErrors_asInterface) class T_wrapErrors_static_extension {
    @:keep
    static public function unwrap( _e:stdgo.Ref<T_wrapErrors>):stdgo.Slice<stdgo.Error> {
        @:recv var _e:stdgo.Ref<T_wrapErrors> = _e;
        return _e._errs;
    }
    @:keep
    static public function error( _e:stdgo.Ref<T_wrapErrors>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<T_wrapErrors> = _e;
        return _e._msg?.__copy__();
    }
}
class T_fmt_asInterface {
    @:keep
    public dynamic function _fmtFloat(_v:stdgo.GoFloat64, _size:stdgo.GoInt, _verb:stdgo.GoRune, _prec:stdgo.GoInt):Void __self__.value._fmtFloat(_v, _size, _verb, _prec);
    @:keep
    public dynamic function _fmtQc(_c:stdgo.GoUInt64):Void __self__.value._fmtQc(_c);
    @:keep
    public dynamic function _fmtC(_c:stdgo.GoUInt64):Void __self__.value._fmtC(_c);
    @:keep
    public dynamic function _fmtQ(_s:stdgo.GoString):Void __self__.value._fmtQ(_s);
    @:keep
    public dynamic function _fmtBx(_b:stdgo.Slice<stdgo.GoByte>, _digits:stdgo.GoString):Void __self__.value._fmtBx(_b, _digits);
    @:keep
    public dynamic function _fmtSx(_s:stdgo.GoString, _digits:stdgo.GoString):Void __self__.value._fmtSx(_s, _digits);
    @:keep
    public dynamic function _fmtSbx(_s:stdgo.GoString, _b:stdgo.Slice<stdgo.GoByte>, _digits:stdgo.GoString):Void __self__.value._fmtSbx(_s, _b, _digits);
    @:keep
    public dynamic function _fmtBs(_b:stdgo.Slice<stdgo.GoByte>):Void __self__.value._fmtBs(_b);
    @:keep
    public dynamic function _fmtS(_s:stdgo.GoString):Void __self__.value._fmtS(_s);
    @:keep
    public dynamic function _truncate(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> return __self__.value._truncate(_b);
    @:keep
    public dynamic function _truncateString(_s:stdgo.GoString):stdgo.GoString return __self__.value._truncateString(_s);
    @:keep
    public dynamic function _fmtInteger(_u:stdgo.GoUInt64, _base:stdgo.GoInt, _isSigned:Bool, _verb:stdgo.GoRune, _digits:stdgo.GoString):Void __self__.value._fmtInteger(_u, _base, _isSigned, _verb, _digits);
    @:keep
    public dynamic function _fmtUnicode(_u:stdgo.GoUInt64):Void __self__.value._fmtUnicode(_u);
    @:keep
    public dynamic function _fmtBoolean(_v:Bool):Void __self__.value._fmtBoolean(_v);
    @:keep
    public dynamic function _padString(_s:stdgo.GoString):Void __self__.value._padString(_s);
    @:keep
    public dynamic function _pad(_b:stdgo.Slice<stdgo.GoByte>):Void __self__.value._pad(_b);
    @:keep
    public dynamic function _writePadding(_n:stdgo.GoInt):Void __self__.value._writePadding(_n);
    @:keep
    public dynamic function _init(_buf:stdgo.Ref<T_buffer>):Void __self__.value._init(_buf);
    @:keep
    public dynamic function _clearflags():Void __self__.value._clearflags();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_fmt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt.Fmt.T_fmt_asInterface) class T_fmt_static_extension {
    @:keep
    static public function _fmtFloat( _f:stdgo.Ref<T_fmt>, _v:stdgo.GoFloat64, _size:stdgo.GoInt, _verb:stdgo.GoRune, _prec:stdgo.GoInt):Void {
        @:recv var _f:stdgo.Ref<T_fmt> = _f;
        if (_f._fmtFlags._precPresent) {
            _prec = _f._prec;
        };
        var _num = stdgo._internal.strconv.Strconv.appendFloat((_f._intbuf.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _v, (_verb : stdgo.GoByte), _prec, _size);
        if (((_num[(1 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) || (_num[(1 : stdgo.GoInt)] == (43 : stdgo.GoUInt8)) : Bool)) {
            _num = (_num.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _num[(0 : stdgo.GoInt)] = (43 : stdgo.GoUInt8);
        };
        if (((_f._fmtFlags._space && _num[(0 : stdgo.GoInt)] == ((43 : stdgo.GoUInt8)) : Bool) && !_f._fmtFlags._plus : Bool)) {
            _num[(0 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        };
        if (((_num[(1 : stdgo.GoInt)] == (73 : stdgo.GoUInt8)) || (_num[(1 : stdgo.GoInt)] == (78 : stdgo.GoUInt8)) : Bool)) {
            var _oldZero = _f._fmtFlags._zero;
            _f._fmtFlags._zero = false;
            if (((_num[(1 : stdgo.GoInt)] == ((78 : stdgo.GoUInt8)) && !_f._fmtFlags._space : Bool) && !_f._fmtFlags._plus : Bool)) {
                _num = (_num.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            _f._pad(_num);
            _f._fmtFlags._zero = _oldZero;
            return;
        };
        if ((_f._fmtFlags._sharp && (_verb != (98 : stdgo.GoInt32)) : Bool)) {
            var _digits = (0 : stdgo.GoInt);
            {
                final __value__ = _verb;
                if (__value__ == ((118 : stdgo.GoInt32)) || __value__ == ((103 : stdgo.GoInt32)) || __value__ == ((71 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32))) {
                    _digits = _prec;
                    if (_digits == ((-1 : stdgo.GoInt))) {
                        _digits = (6 : stdgo.GoInt);
                    };
                };
            };
            var _tailBuf:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(6, 6, ...[for (i in 0 ... 6) (0 : stdgo.GoUInt8)]);
            var _tail = (_tailBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            var _hasDecimalPoint = false;
            var _sawNonzeroDigit = false;
            {
                var _i = (1 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_num.length) : Bool), _i++, {
                    {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _num[(_i : stdgo.GoInt)];
                                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (46 : stdgo.GoUInt8)))) {
                                    _hasDecimalPoint = true;
                                    break;
                                    break;
                                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == ((112 : stdgo.GoUInt8)) || __value__ == ((80 : stdgo.GoUInt8))))) {
                                    _tail = (_tail.__append__(...((_num.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                                    _num = (_num.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
                                    break;
                                    break;
                                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == ((101 : stdgo.GoUInt8)) || __value__ == ((69 : stdgo.GoUInt8))))) {
                                    if (((_verb != (120 : stdgo.GoInt32)) && (_verb != (88 : stdgo.GoInt32)) : Bool)) {
                                        _tail = (_tail.__append__(...((_num.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                                        _num = (_num.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
                                        break;
                                    };
                                    @:fallthrough {
                                        __switchIndex__ = 3;
                                        __run__ = true;
                                        continue;
                                    };
                                    break;
                                } else {
                                    if (_num[(_i : stdgo.GoInt)] != ((48 : stdgo.GoUInt8))) {
                                        _sawNonzeroDigit = true;
                                    };
                                    if (_sawNonzeroDigit) {
                                        _digits--;
                                    };
                                    break;
                                };
                            };
                            break;
                        };
                    };
                });
            };
            if (!_hasDecimalPoint) {
                if (((_num.length == (2 : stdgo.GoInt)) && (_num[(1 : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
                    _digits--;
                };
                _num = (_num.__append__((46 : stdgo.GoUInt8)));
            };
            while ((_digits > (0 : stdgo.GoInt) : Bool)) {
                _num = (_num.__append__((48 : stdgo.GoUInt8)));
                _digits--;
            };
            _num = (_num.__append__(...(_tail : Array<stdgo.GoUInt8>)));
        };
        if ((_f._fmtFlags._plus || (_num[(0 : stdgo.GoInt)] != (43 : stdgo.GoUInt8)) : Bool)) {
            if (((_f._fmtFlags._zero && _f._fmtFlags._widPresent : Bool) && (_f._wid > (_num.length) : Bool) : Bool)) {
                _f._buf._writeByte(_num[(0 : stdgo.GoInt)]);
                _f._writePadding((_f._wid - (_num.length) : stdgo.GoInt));
                _f._buf._write((_num.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                return;
            };
            _f._pad(_num);
            return;
        };
        _f._pad((_num.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    static public function _fmtQc( _f:stdgo.Ref<T_fmt>, _c:stdgo.GoUInt64):Void {
        @:recv var _f:stdgo.Ref<T_fmt> = _f;
        var _r = (_c : stdgo.GoRune);
        if ((_c > (1114111i64 : stdgo.GoUInt64) : Bool)) {
            _r = (65533 : stdgo.GoInt32);
        };
        var _buf = (_f._intbuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        if (_f._fmtFlags._plus) {
            _f._pad(stdgo._internal.strconv.Strconv.appendQuoteRuneToASCII(_buf, _r));
        } else {
            _f._pad(stdgo._internal.strconv.Strconv.appendQuoteRune(_buf, _r));
        };
    }
    @:keep
    static public function _fmtC( _f:stdgo.Ref<T_fmt>, _c:stdgo.GoUInt64):Void {
        @:recv var _f:stdgo.Ref<T_fmt> = _f;
        var _r = (_c : stdgo.GoRune);
        if ((_c > (1114111i64 : stdgo.GoUInt64) : Bool)) {
            _r = (65533 : stdgo.GoInt32);
        };
        var _buf = (_f._intbuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _f._pad(stdgo._internal.unicode.utf8.Utf8.appendRune(_buf, _r));
    }
    @:keep
    static public function _fmtQ( _f:stdgo.Ref<T_fmt>, _s:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<T_fmt> = _f;
        _s = _f._truncateString(_s?.__copy__())?.__copy__();
        if ((_f._fmtFlags._sharp && stdgo._internal.strconv.Strconv.canBackquote(_s?.__copy__()) : Bool)) {
            _f._padString(((("`" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + ("`" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            return;
        };
        var _buf = (_f._intbuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        if (_f._fmtFlags._plus) {
            _f._pad(stdgo._internal.strconv.Strconv.appendQuoteToASCII(_buf, _s?.__copy__()));
        } else {
            _f._pad(stdgo._internal.strconv.Strconv.appendQuote(_buf, _s?.__copy__()));
        };
    }
    @:keep
    static public function _fmtBx( _f:stdgo.Ref<T_fmt>, _b:stdgo.Slice<stdgo.GoByte>, _digits:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<T_fmt> = _f;
        _f._fmtSbx(stdgo.Go.str()?.__copy__(), _b, _digits?.__copy__());
    }
    @:keep
    static public function _fmtSx( _f:stdgo.Ref<T_fmt>, _s:stdgo.GoString, _digits:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<T_fmt> = _f;
        _f._fmtSbx(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _digits?.__copy__());
    }
    @:keep
    static public function _fmtSbx( _f:stdgo.Ref<T_fmt>, _s:stdgo.GoString, _b:stdgo.Slice<stdgo.GoByte>, _digits:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<T_fmt> = _f;
        var _length = (_b.length);
        if (_b == null) {
            _length = (_s.length);
        };
        if ((_f._fmtFlags._precPresent && (_f._prec < _length : Bool) : Bool)) {
            _length = _f._prec;
        };
        var _width = ((2 : stdgo.GoInt) * _length : stdgo.GoInt);
        if ((_width > (0 : stdgo.GoInt) : Bool)) {
            if (_f._fmtFlags._space) {
                if (_f._fmtFlags._sharp) {
                    _width = (_width * ((2 : stdgo.GoInt)) : stdgo.GoInt);
                };
                _width = (_width + ((_length - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (_f._fmtFlags._sharp) {
                _width = (_width + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        } else {
            if (_f._fmtFlags._widPresent) {
                _f._writePadding(_f._wid);
            };
            return;
        };
        if (((_f._fmtFlags._widPresent && (_f._wid > _width : Bool) : Bool) && !_f._fmtFlags._minus : Bool)) {
            _f._writePadding((_f._wid - _width : stdgo.GoInt));
        };
        var _buf = (_f._buf : stdgo._internal.fmt.Fmt.T_buffer);
        if (_f._fmtFlags._sharp) {
            _buf = (_buf.__append__((48 : stdgo.GoUInt8), _digits[(16 : stdgo.GoInt)]));
        };
        var _c:stdgo.GoByte = (0 : stdgo.GoUInt8);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _length : Bool), _i++, {
                if ((_f._fmtFlags._space && (_i > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _buf = (_buf.__append__((32 : stdgo.GoUInt8)));
                    if (_f._fmtFlags._sharp) {
                        _buf = (_buf.__append__((48 : stdgo.GoUInt8), _digits[(16 : stdgo.GoInt)]));
                    };
                };
                if (_b != null) {
                    _c = _b[(_i : stdgo.GoInt)];
                } else {
                    _c = _s[(_i : stdgo.GoInt)];
                };
                _buf = (_buf.__append__(_digits[((_c >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)], _digits[((_c & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]));
            });
        };
        (_f._buf : stdgo._internal.fmt.Fmt.T_buffer).__setData__(_buf);
        if (((_f._fmtFlags._widPresent && (_f._wid > _width : Bool) : Bool) && _f._fmtFlags._minus : Bool)) {
            _f._writePadding((_f._wid - _width : stdgo.GoInt));
        };
    }
    @:keep
    static public function _fmtBs( _f:stdgo.Ref<T_fmt>, _b:stdgo.Slice<stdgo.GoByte>):Void {
        @:recv var _f:stdgo.Ref<T_fmt> = _f;
        _b = _f._truncate(_b);
        _f._pad(_b);
    }
    @:keep
    static public function _fmtS( _f:stdgo.Ref<T_fmt>, _s:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<T_fmt> = _f;
        _s = _f._truncateString(_s?.__copy__())?.__copy__();
        _f._padString(_s?.__copy__());
    }
    @:keep
    static public function _truncate( _f:stdgo.Ref<T_fmt>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        @:recv var _f:stdgo.Ref<T_fmt> = _f;
        if (_f._fmtFlags._precPresent) {
            var _n = _f._prec;
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (_b.length) : Bool)) {
                    _n--;
                    if ((_n < (0 : stdgo.GoInt) : Bool)) {
                        return (_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    var _wid = (1 : stdgo.GoInt);
                    if ((_b[(_i : stdgo.GoInt)] >= (128 : stdgo.GoUInt8) : Bool)) {
                        {
                            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
                            _wid = __tmp__._1;
                        };
                    };
                    _i = (_i + (_wid) : stdgo.GoInt);
                };
            };
        };
        return _b;
    }
    @:keep
    static public function _truncateString( _f:stdgo.Ref<T_fmt>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _f:stdgo.Ref<T_fmt> = _f;
        if (_f._fmtFlags._precPresent) {
            var _n = _f._prec;
            for (_i => _ in _s) {
                _n--;
                if ((_n < (0 : stdgo.GoInt) : Bool)) {
                    return (_s.__slice__(0, _i) : stdgo.GoString)?.__copy__();
                };
            };
        };
        return _s?.__copy__();
    }
    @:keep
    static public function _fmtInteger( _f:stdgo.Ref<T_fmt>, _u:stdgo.GoUInt64, _base:stdgo.GoInt, _isSigned:Bool, _verb:stdgo.GoRune, _digits:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<T_fmt> = _f;
        var _negative = (_isSigned && ((_u : stdgo.GoInt64) < (0i64 : stdgo.GoInt64) : Bool) : Bool);
        if (_negative) {
            _u = -_u;
        };
        var _buf = (_f._intbuf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        if ((_f._fmtFlags._widPresent || _f._fmtFlags._precPresent : Bool)) {
            var _width = (((3 : stdgo.GoInt) + _f._wid : stdgo.GoInt) + _f._prec : stdgo.GoInt);
            if ((_width > (_buf.length) : Bool)) {
                _buf = (new stdgo.Slice<stdgo.GoUInt8>((_width : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        var _prec = (0 : stdgo.GoInt);
        if (_f._fmtFlags._precPresent) {
            _prec = _f._prec;
            if (((_prec == (0 : stdgo.GoInt)) && (_u == (0i64 : stdgo.GoUInt64)) : Bool)) {
                var _oldZero = _f._fmtFlags._zero;
                _f._fmtFlags._zero = false;
                _f._writePadding(_f._wid);
                _f._fmtFlags._zero = _oldZero;
                return;
            };
        } else if ((_f._fmtFlags._zero && _f._fmtFlags._widPresent : Bool)) {
            _prec = _f._wid;
            if (((_negative || _f._fmtFlags._plus : Bool) || _f._fmtFlags._space : Bool)) {
                _prec--;
            };
        };
        var _i = (_buf.length);
        {
            final __value__ = _base;
            if (__value__ == ((10 : stdgo.GoInt))) {
                while ((_u >= (10i64 : stdgo.GoUInt64) : Bool)) {
                    _i--;
                    var _next = (_u / (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _buf[(_i : stdgo.GoInt)] = ((((48i64 : stdgo.GoUInt64) + _u : stdgo.GoUInt64) - (_next * (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
                    _u = _next;
                };
            } else if (__value__ == ((16 : stdgo.GoInt))) {
                while ((_u >= (16i64 : stdgo.GoUInt64) : Bool)) {
                    _i--;
                    _buf[(_i : stdgo.GoInt)] = _digits[((_u & (15i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)];
                    _u = (_u >> ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                };
            } else if (__value__ == ((8 : stdgo.GoInt))) {
                while ((_u >= (8i64 : stdgo.GoUInt64) : Bool)) {
                    _i--;
                    _buf[(_i : stdgo.GoInt)] = (((48i64 : stdgo.GoUInt64) + (_u & (7i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
                    _u = (_u >> ((3i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                };
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                while ((_u >= (2i64 : stdgo.GoUInt64) : Bool)) {
                    _i--;
                    _buf[(_i : stdgo.GoInt)] = (((48i64 : stdgo.GoUInt64) + (_u & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
                    _u = (_u >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                };
            } else {
                throw stdgo.Go.toInterface(("fmt: unknown base; can\'t happen" : stdgo.GoString));
            };
        };
        _i--;
        _buf[(_i : stdgo.GoInt)] = _digits[(_u : stdgo.GoInt)];
        while (((_i > (0 : stdgo.GoInt) : Bool) && (_prec > ((_buf.length) - _i : stdgo.GoInt) : Bool) : Bool)) {
            _i--;
            _buf[(_i : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
        };
        if (_f._fmtFlags._sharp) {
            {
                final __value__ = _base;
                if (__value__ == ((2 : stdgo.GoInt))) {
                    _i--;
                    _buf[(_i : stdgo.GoInt)] = (98 : stdgo.GoUInt8);
                    _i--;
                    _buf[(_i : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
                } else if (__value__ == ((8 : stdgo.GoInt))) {
                    if (_buf[(_i : stdgo.GoInt)] != ((48 : stdgo.GoUInt8))) {
                        _i--;
                        _buf[(_i : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
                    };
                } else if (__value__ == ((16 : stdgo.GoInt))) {
                    _i--;
                    _buf[(_i : stdgo.GoInt)] = _digits[(16 : stdgo.GoInt)];
                    _i--;
                    _buf[(_i : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
                };
            };
        };
        if (_verb == ((79 : stdgo.GoInt32))) {
            _i--;
            _buf[(_i : stdgo.GoInt)] = (111 : stdgo.GoUInt8);
            _i--;
            _buf[(_i : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
        };
        if (_negative) {
            _i--;
            _buf[(_i : stdgo.GoInt)] = (45 : stdgo.GoUInt8);
        } else if (_f._fmtFlags._plus) {
            _i--;
            _buf[(_i : stdgo.GoInt)] = (43 : stdgo.GoUInt8);
        } else if (_f._fmtFlags._space) {
            _i--;
            _buf[(_i : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        };
        var _oldZero = _f._fmtFlags._zero;
        _f._fmtFlags._zero = false;
        _f._pad((_buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
        _f._fmtFlags._zero = _oldZero;
    }
    @:keep
    static public function _fmtUnicode( _f:stdgo.Ref<T_fmt>, _u:stdgo.GoUInt64):Void {
        @:recv var _f:stdgo.Ref<T_fmt> = _f;
        var _buf = (_f._intbuf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _prec = (4 : stdgo.GoInt);
        if ((_f._fmtFlags._precPresent && (_f._prec > (4 : stdgo.GoInt) : Bool) : Bool)) {
            _prec = _f._prec;
            var _width = (((((2 : stdgo.GoInt) + _prec : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt) + (4 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            if ((_width > (_buf.length) : Bool)) {
                _buf = (new stdgo.Slice<stdgo.GoUInt8>((_width : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        var _i = (_buf.length);
        if (((_f._fmtFlags._sharp && (_u <= (1114111i64 : stdgo.GoUInt64) : Bool) : Bool) && stdgo._internal.strconv.Strconv.isPrint((_u : stdgo.GoRune)) : Bool)) {
            _i--;
            _buf[(_i : stdgo.GoInt)] = (39 : stdgo.GoUInt8);
            _i = (_i - (stdgo._internal.unicode.utf8.Utf8.runeLen((_u : stdgo.GoRune))) : stdgo.GoInt);
            stdgo._internal.unicode.utf8.Utf8.encodeRune((_buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), (_u : stdgo.GoRune));
            _i--;
            _buf[(_i : stdgo.GoInt)] = (39 : stdgo.GoUInt8);
            _i--;
            _buf[(_i : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        };
        while ((_u >= (16i64 : stdgo.GoUInt64) : Bool)) {
            _i--;
            _buf[(_i : stdgo.GoInt)] = ("0123456789ABCDEFX" : stdgo.GoString)[((_u & (15i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)];
            _prec--;
            _u = (_u >> ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        _i--;
        _buf[(_i : stdgo.GoInt)] = ("0123456789ABCDEFX" : stdgo.GoString)[(_u : stdgo.GoInt)];
        _prec--;
        while ((_prec > (0 : stdgo.GoInt) : Bool)) {
            _i--;
            _buf[(_i : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
            _prec--;
        };
        _i--;
        _buf[(_i : stdgo.GoInt)] = (43 : stdgo.GoUInt8);
        _i--;
        _buf[(_i : stdgo.GoInt)] = (85 : stdgo.GoUInt8);
        var _oldZero = _f._fmtFlags._zero;
        _f._fmtFlags._zero = false;
        _f._pad((_buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
        _f._fmtFlags._zero = _oldZero;
    }
    @:keep
    static public function _fmtBoolean( _f:stdgo.Ref<T_fmt>, _v:Bool):Void {
        @:recv var _f:stdgo.Ref<T_fmt> = _f;
        if (_v) {
            _f._padString(("true" : stdgo.GoString));
        } else {
            _f._padString(("false" : stdgo.GoString));
        };
    }
    @:keep
    static public function _padString( _f:stdgo.Ref<T_fmt>, _s:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<T_fmt> = _f;
        if ((!_f._fmtFlags._widPresent || (_f._wid == (0 : stdgo.GoInt)) : Bool)) {
            _f._buf._writeString(_s?.__copy__());
            return;
        };
        var _width = (_f._wid - stdgo._internal.unicode.utf8.Utf8.runeCountInString(_s?.__copy__()) : stdgo.GoInt);
        if (!_f._fmtFlags._minus) {
            _f._writePadding(_width);
            _f._buf._writeString(_s?.__copy__());
        } else {
            _f._buf._writeString(_s?.__copy__());
            _f._writePadding(_width);
        };
    }
    @:keep
    static public function _pad( _f:stdgo.Ref<T_fmt>, _b:stdgo.Slice<stdgo.GoByte>):Void {
        @:recv var _f:stdgo.Ref<T_fmt> = _f;
        if ((!_f._fmtFlags._widPresent || (_f._wid == (0 : stdgo.GoInt)) : Bool)) {
            _f._buf._write(_b);
            return;
        };
        var _width = (_f._wid - stdgo._internal.unicode.utf8.Utf8.runeCount(_b) : stdgo.GoInt);
        if (!_f._fmtFlags._minus) {
            _f._writePadding(_width);
            _f._buf._write(_b);
        } else {
            _f._buf._write(_b);
            _f._writePadding(_width);
        };
    }
    @:keep
    static public function _writePadding( _f:stdgo.Ref<T_fmt>, _n:stdgo.GoInt):Void {
        @:recv var _f:stdgo.Ref<T_fmt> = _f;
        if ((_n <= (0 : stdgo.GoInt) : Bool)) {
            return;
        };
        var _buf = (_f._buf : stdgo._internal.fmt.Fmt.T_buffer);
        var _oldLen = (_buf.length);
        var _newLen = (_oldLen + _n : stdgo.GoInt);
        if ((_newLen > _buf.capacity : Bool)) {
            _buf = (new stdgo.Slice<stdgo.GoUInt8>(((_buf.capacity * (2 : stdgo.GoInt) : stdgo.GoInt) + _n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.fmt.Fmt.T_buffer);
            stdgo.Go.copySlice(_buf, (_f._buf : stdgo._internal.fmt.Fmt.T_buffer));
        };
        var _padByte = ((32 : stdgo.GoUInt8) : stdgo.GoByte);
        if (_f._fmtFlags._zero) {
            _padByte = ((48 : stdgo.GoUInt8) : stdgo.GoByte);
        };
        var _padding = (_buf.__slice__(_oldLen, _newLen) : stdgo._internal.fmt.Fmt.T_buffer);
        for (_i => _ in _padding) {
            _padding[(_i : stdgo.GoInt)] = _padByte;
        };
        (_f._buf : stdgo._internal.fmt.Fmt.T_buffer).__setData__((_buf.__slice__(0, _newLen) : stdgo._internal.fmt.Fmt.T_buffer));
    }
    @:keep
    static public function _init( _f:stdgo.Ref<T_fmt>, _buf:stdgo.Ref<T_buffer>):Void {
        @:recv var _f:stdgo.Ref<T_fmt> = _f;
        _f._buf = _buf;
        _f._clearflags();
    }
    @:keep
    static public function _clearflags( _f:stdgo.Ref<T_fmt>):Void {
        @:recv var _f:stdgo.Ref<T_fmt> = _f;
        _f._fmtFlags = (new stdgo._internal.fmt.Fmt.T_fmtFlags() : stdgo._internal.fmt.Fmt.T_fmtFlags);
    }
}
class T_pp_asInterface {
    @:keep
    public dynamic function _doPrintln(_a:stdgo.Slice<stdgo.AnyInterface>):Void __self__.value._doPrintln(_a);
    @:keep
    public dynamic function _doPrint(_a:stdgo.Slice<stdgo.AnyInterface>):Void __self__.value._doPrint(_a);
    @:keep
    public dynamic function _doPrintf(_format:stdgo.GoString, _a:stdgo.Slice<stdgo.AnyInterface>):Void __self__.value._doPrintf(_format, _a);
    @:keep
    public dynamic function _missingArg(_verb:stdgo.GoRune):Void __self__.value._missingArg(_verb);
    @:keep
    public dynamic function _badArgNum(_verb:stdgo.GoRune):Void __self__.value._badArgNum(_verb);
    @:keep
    public dynamic function _argNumber(_argNum:stdgo.GoInt, _format:stdgo.GoString, _i:stdgo.GoInt, _numArgs:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } return __self__.value._argNumber(_argNum, _format, _i, _numArgs);
    @:keep
    public dynamic function _printValue(_value:stdgo._internal.reflect.Reflect.Value, _verb:stdgo.GoRune, _depth:stdgo.GoInt):Void __self__.value._printValue(_value, _verb, _depth);
    @:keep
    public dynamic function _printArg(_arg:stdgo.AnyInterface, _verb:stdgo.GoRune):Void __self__.value._printArg(_arg, _verb);
    @:keep
    public dynamic function _handleMethods(_verb:stdgo.GoRune):Bool return __self__.value._handleMethods(_verb);
    @:keep
    public dynamic function _catchPanic(_arg:stdgo.AnyInterface, _verb:stdgo.GoRune, _method:stdgo.GoString):Void __self__.value._catchPanic(_arg, _verb, _method);
    @:keep
    public dynamic function _fmtPointer(_value:stdgo._internal.reflect.Reflect.Value, _verb:stdgo.GoRune):Void __self__.value._fmtPointer(_value, _verb);
    @:keep
    public dynamic function _fmtBytes(_v:stdgo.Slice<stdgo.GoByte>, _verb:stdgo.GoRune, _typeString:stdgo.GoString):Void __self__.value._fmtBytes(_v, _verb, _typeString);
    @:keep
    public dynamic function _fmtString(_v:stdgo.GoString, _verb:stdgo.GoRune):Void __self__.value._fmtString(_v, _verb);
    @:keep
    public dynamic function _fmtComplex(_v:stdgo.GoComplex128, _size:stdgo.GoInt, _verb:stdgo.GoRune):Void __self__.value._fmtComplex(_v, _size, _verb);
    @:keep
    public dynamic function _fmtFloat(_v:stdgo.GoFloat64, _size:stdgo.GoInt, _verb:stdgo.GoRune):Void __self__.value._fmtFloat(_v, _size, _verb);
    @:keep
    public dynamic function _fmtInteger(_v:stdgo.GoUInt64, _isSigned:Bool, _verb:stdgo.GoRune):Void __self__.value._fmtInteger(_v, _isSigned, _verb);
    @:keep
    public dynamic function _fmt0x64(_v:stdgo.GoUInt64, _leading0x:Bool):Void __self__.value._fmt0x64(_v, _leading0x);
    @:keep
    public dynamic function _fmtBool(_v:Bool, _verb:stdgo.GoRune):Void __self__.value._fmtBool(_v, _verb);
    @:keep
    public dynamic function _badVerb(_verb:stdgo.GoRune):Void __self__.value._badVerb(_verb);
    @:keep
    public dynamic function _unknownType(_v:stdgo._internal.reflect.Reflect.Value):Void __self__.value._unknownType(_v);
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_s);
    @:keep
    public dynamic function write(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    @:keep
    public dynamic function flag(_b:stdgo.GoInt):Bool return __self__.value.flag(_b);
    @:keep
    public dynamic function precision():{ var _0 : stdgo.GoInt; var _1 : Bool; } return __self__.value.precision();
    @:keep
    public dynamic function width():{ var _0 : stdgo.GoInt; var _1 : Bool; } return __self__.value.width();
    @:keep
    public dynamic function _free():Void __self__.value._free();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_pp>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt.Fmt.T_pp_asInterface) class T_pp_static_extension {
    @:keep
    static public function _doPrintln( _p:stdgo.Ref<T_pp>, _a:stdgo.Slice<stdgo.AnyInterface>):Void {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        for (_argNum => _arg in _a) {
            if ((_argNum > (0 : stdgo.GoInt) : Bool)) {
                _p._buf._writeByte((32 : stdgo.GoUInt8));
            };
            _p._printArg(_arg, (118 : stdgo.GoInt32));
        };
        _p._buf._writeByte((10 : stdgo.GoUInt8));
    }
    @:keep
    static public function _doPrint( _p:stdgo.Ref<T_pp>, _a:stdgo.Slice<stdgo.AnyInterface>):Void {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        var _prevString = false;
        for (_argNum => _arg in _a) {
            var _isString = ((_arg != null) && (stdgo._internal.reflect.Reflect.typeOf(_arg).kind() == (24u32 : stdgo._internal.reflect.Reflect.Kind)) : Bool);
            if ((((_argNum > (0 : stdgo.GoInt) : Bool) && !_isString : Bool) && !_prevString : Bool)) {
                _p._buf._writeByte((32 : stdgo.GoUInt8));
            };
            _p._printArg(_arg, (118 : stdgo.GoInt32));
            _prevString = _isString;
        };
    }
    @:keep
    static public function _doPrintf( _p:stdgo.Ref<T_pp>, _format:stdgo.GoString, _a:stdgo.Slice<stdgo.AnyInterface>):Void {
        stdgo._internal.internal.Macro.controlFlow({
            @:recv var _p:stdgo.Ref<T_pp> = _p;
            var _end = (_format.length);
            var _argNum = (0 : stdgo.GoInt);
            var _afterIndex = false;
            _p._reordered = false;
            @:label("formatLoop") {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _end : Bool)) {
                    _p._goodArgNum = true;
                    var _lasti = _i;
                    while (((_i < _end : Bool) && (_format[(_i : stdgo.GoInt)] != (37 : stdgo.GoUInt8)) : Bool)) {
                        _i++;
                    };
                    if ((_i > _lasti : Bool)) {
                        _p._buf._writeString((_format.__slice__(_lasti, _i) : stdgo.GoString)?.__copy__());
                    };
                    if ((_i >= _end : Bool)) {
                        break;
                    };
                    _i++;
                    _p._fmt._clearflags();
                    @:label("simpleFormat") stdgo.Go.cfor((_i < _end : Bool), _i++, {
                        var _c = _format[(_i : stdgo.GoInt)];
                        {
                            var __switchIndex__ = -1;
                            var __run__ = true;
                            while (__run__) {
                                __run__ = false;
                                {
                                    final __value__ = _c;
                                    if (__value__ == ((35 : stdgo.GoUInt8))) {
                                        _p._fmt._fmtFlags._sharp = true;
                                        break;
                                    } else if (__value__ == ((48 : stdgo.GoUInt8))) {
                                        _p._fmt._fmtFlags._zero = !_p._fmt._fmtFlags._minus;
                                        break;
                                    } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                        _p._fmt._fmtFlags._plus = true;
                                        break;
                                    } else if (__value__ == ((45 : stdgo.GoUInt8))) {
                                        _p._fmt._fmtFlags._minus = true;
                                        _p._fmt._fmtFlags._zero = false;
                                        break;
                                    } else if (__value__ == ((32 : stdgo.GoUInt8))) {
                                        _p._fmt._fmtFlags._space = true;
                                        break;
                                    } else {
                                        if (((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool) && (_argNum < (_a.length) : Bool) : Bool)) {
                                            {
                                                var __switchIndex__ = -1;
                                                var __run__ = true;
                                                while (__run__) {
                                                    __run__ = false;
                                                    {
                                                        final __value__ = _c;
                                                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (119 : stdgo.GoUInt8)))) {
                                                            _p._wrappedErrs = (_p._wrappedErrs.__append__(_argNum));
                                                            @:fallthrough {
                                                                __switchIndex__ = 1;
                                                                __run__ = true;
                                                                continue;
                                                            };
                                                            break;
                                                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (118 : stdgo.GoUInt8)))) {
                                                            _p._fmt._fmtFlags._sharpV = _p._fmt._fmtFlags._sharp;
                                                            _p._fmt._fmtFlags._sharp = false;
                                                            _p._fmt._fmtFlags._plusV = _p._fmt._fmtFlags._plus;
                                                            _p._fmt._fmtFlags._plus = false;
                                                            break;
                                                            break;
                                                        };
                                                    };
                                                    break;
                                                };
                                            };
                                            _p._printArg(_a[(_argNum : stdgo.GoInt)], (_c : stdgo.GoRune));
                                            _argNum++;
                                            _i++;
                                            @:jump("formatLoop") continue;
                                        };
                                        @:jump("simpleFormat") break;
                                    };
                                };
                                break;
                            };
                        };
                    });
                    {
                        var __tmp__ = _p._argNumber(_argNum, _format?.__copy__(), _i, (_a.length));
                        _argNum = __tmp__._0;
                        _i = __tmp__._1;
                        _afterIndex = __tmp__._2;
                    };
                    if (((_i < _end : Bool) && (_format[(_i : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _i++;
                        {
                            var __tmp__ = _intFromArg(_a, _argNum);
                            _p._fmt._wid = __tmp__._0;
                            _p._fmt._fmtFlags._widPresent = __tmp__._1;
                            _argNum = __tmp__._2;
                        };
                        if (!_p._fmt._fmtFlags._widPresent) {
                            _p._buf._writeString(("%!(BADWIDTH)" : stdgo.GoString));
                        };
                        if ((_p._fmt._wid < (0 : stdgo.GoInt) : Bool)) {
                            _p._fmt._wid = -_p._fmt._wid;
                            _p._fmt._fmtFlags._minus = true;
                            _p._fmt._fmtFlags._zero = false;
                        };
                        _afterIndex = false;
                    } else {
                        {
                            var __tmp__ = _parsenum(_format?.__copy__(), _i, _end);
                            _p._fmt._wid = __tmp__._0;
                            _p._fmt._fmtFlags._widPresent = __tmp__._1;
                            _i = __tmp__._2;
                        };
                        if ((_afterIndex && _p._fmt._fmtFlags._widPresent : Bool)) {
                            _p._goodArgNum = false;
                        };
                    };
                    if ((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < _end : Bool) && (_format[(_i : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                        _i++;
                        if (_afterIndex) {
                            _p._goodArgNum = false;
                        };
                        {
                            var __tmp__ = _p._argNumber(_argNum, _format?.__copy__(), _i, (_a.length));
                            _argNum = __tmp__._0;
                            _i = __tmp__._1;
                            _afterIndex = __tmp__._2;
                        };
                        if (((_i < _end : Bool) && (_format[(_i : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                            _i++;
                            {
                                var __tmp__ = _intFromArg(_a, _argNum);
                                _p._fmt._prec = __tmp__._0;
                                _p._fmt._fmtFlags._precPresent = __tmp__._1;
                                _argNum = __tmp__._2;
                            };
                            if ((_p._fmt._prec < (0 : stdgo.GoInt) : Bool)) {
                                _p._fmt._prec = (0 : stdgo.GoInt);
                                _p._fmt._fmtFlags._precPresent = false;
                            };
                            if (!_p._fmt._fmtFlags._precPresent) {
                                _p._buf._writeString(("%!(BADPREC)" : stdgo.GoString));
                            };
                            _afterIndex = false;
                        } else {
                            {
                                var __tmp__ = _parsenum(_format?.__copy__(), _i, _end);
                                _p._fmt._prec = __tmp__._0;
                                _p._fmt._fmtFlags._precPresent = __tmp__._1;
                                _i = __tmp__._2;
                            };
                            if (!_p._fmt._fmtFlags._precPresent) {
                                _p._fmt._prec = (0 : stdgo.GoInt);
                                _p._fmt._fmtFlags._precPresent = true;
                            };
                        };
                    };
                    if (!_afterIndex) {
                        {
                            var __tmp__ = _p._argNumber(_argNum, _format?.__copy__(), _i, (_a.length));
                            _argNum = __tmp__._0;
                            _i = __tmp__._1;
                            _afterIndex = __tmp__._2;
                        };
                    };
                    if ((_i >= _end : Bool)) {
                        _p._buf._writeString(("%!(NOVERB)" : stdgo.GoString));
                        break;
                    };
                    var __0 = (_format[(_i : stdgo.GoInt)] : stdgo.GoRune), __1 = (1 : stdgo.GoInt);
var _size = __1, _verb = __0;
                    if ((_verb >= (128 : stdgo.GoInt32) : Bool)) {
                        {
                            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString((_format.__slice__(_i) : stdgo.GoString)?.__copy__());
                            _verb = __tmp__._0;
                            _size = __tmp__._1;
                        };
                    };
                    _i = (_i + (_size) : stdgo.GoInt);
                    {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_verb == (37 : stdgo.GoInt32)))) {
                                _p._buf._writeByte((37 : stdgo.GoUInt8));
                                break;
                                break;
                            } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && !_p._goodArgNum)) {
                                _p._badArgNum(_verb);
                                break;
                                break;
                            } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (_argNum >= (_a.length) : Bool))) {
                                _p._missingArg(_verb);
                                break;
                                break;
                            } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (_verb == (119 : stdgo.GoInt32)))) {
                                _p._wrappedErrs = (_p._wrappedErrs.__append__(_argNum));
                                @:fallthrough {
                                    __switchIndex__ = 4;
                                    __run__ = true;
                                    continue;
                                };
                                break;
                            } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (_verb == (118 : stdgo.GoInt32)))) {
                                _p._fmt._fmtFlags._sharpV = _p._fmt._fmtFlags._sharp;
                                _p._fmt._fmtFlags._sharp = false;
                                _p._fmt._fmtFlags._plusV = _p._fmt._fmtFlags._plus;
                                _p._fmt._fmtFlags._plus = false;
                                @:fallthrough {
                                    __switchIndex__ = 5;
                                    __run__ = true;
                                    continue;
                                };
                                break;
                            } else {
                                _p._printArg(_a[(_argNum : stdgo.GoInt)], _verb);
                                _argNum++;
                                break;
                            };
                            break;
                        };
                    };
                };
            };
            if ((!_p._reordered && (_argNum < (_a.length) : Bool) : Bool)) {
                _p._fmt._clearflags();
                _p._buf._writeString(("%!(EXTRA " : stdgo.GoString));
                for (_i => _arg in (_a.__slice__(_argNum) : stdgo.Slice<stdgo.AnyInterface>)) {
                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                        _p._buf._writeString((", " : stdgo.GoString));
                    };
                    if (_arg == null) {
                        _p._buf._writeString(("<nil>" : stdgo.GoString));
                    } else {
                        _p._buf._writeString((stdgo._internal.reflect.Reflect.typeOf(_arg).string() : stdgo.GoString)?.__copy__());
                        _p._buf._writeByte((61 : stdgo.GoUInt8));
                        _p._printArg(_arg, (118 : stdgo.GoInt32));
                    };
                };
                _p._buf._writeByte((41 : stdgo.GoUInt8));
            };
        });
    }
    @:keep
    static public function _missingArg( _p:stdgo.Ref<T_pp>, _verb:stdgo.GoRune):Void {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        _p._buf._writeString(("%!" : stdgo.GoString));
        _p._buf._writeRune(_verb);
        _p._buf._writeString(("(MISSING)" : stdgo.GoString));
    }
    @:keep
    static public function _badArgNum( _p:stdgo.Ref<T_pp>, _verb:stdgo.GoRune):Void {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        _p._buf._writeString(("%!" : stdgo.GoString));
        _p._buf._writeRune(_verb);
        _p._buf._writeString(("(BADINDEX)" : stdgo.GoString));
    }
    @:keep
    static public function _argNumber( _p:stdgo.Ref<T_pp>, _argNum:stdgo.GoInt, _format:stdgo.GoString, _i:stdgo.GoInt, _numArgs:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        var _newArgNum = (0 : stdgo.GoInt), _newi = (0 : stdgo.GoInt), _found = false;
        if ((((_format.length) <= _i : Bool) || (_format[(_i : stdgo.GoInt)] != (91 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : _argNum, _1 : _i, _2 : false };
        };
        _p._reordered = true;
        var __tmp__ = _parseArgNumber((_format.__slice__(_i) : stdgo.GoString)?.__copy__()), _index:stdgo.GoInt = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
        if (((_ok && ((0 : stdgo.GoInt) <= _index : Bool) : Bool) && (_index < _numArgs : Bool) : Bool)) {
            return { _0 : _index, _1 : (_i + _wid : stdgo.GoInt), _2 : true };
        };
        _p._goodArgNum = false;
        return { _0 : _argNum, _1 : (_i + _wid : stdgo.GoInt), _2 : _ok };
    }
    @:keep
    static public function _printValue( _p:stdgo.Ref<T_pp>, _value:stdgo._internal.reflect.Reflect.Value, _verb:stdgo.GoRune, _depth:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        if ((((_depth > (0 : stdgo.GoInt) : Bool) && _value.isValid() : Bool) && _value.canInterface() : Bool)) {
            _p._arg = _value.interface_();
            if (_p._handleMethods(_verb)) {
                return;
            };
        };
        _p._arg = (null : stdgo.AnyInterface);
        _p._value = _value?.__copy__();
        {
            var _f = _value?.__copy__();
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _value.kind();
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (0u32 : stdgo._internal.reflect.Reflect.Kind)))) {
                            if (_depth == ((0 : stdgo.GoInt))) {
                                _p._buf._writeString(("<invalid reflect.Value>" : stdgo.GoString));
                            } else {
                                {
                                    final __value__ = _verb;
                                    if (__value__ == ((118 : stdgo.GoInt32))) {
                                        _p._buf._writeString(("<nil>" : stdgo.GoString));
                                    } else {
                                        _p._badVerb(_verb);
                                    };
                                };
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (1u32 : stdgo._internal.reflect.Reflect.Kind)))) {
                            _p._fmtBool(_f.bool_(), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == ((2u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect.Kind))))) {
                            _p._fmtInteger((_f.int_() : stdgo.GoUInt64), true, _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == ((7u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect.Kind))))) {
                            _p._fmtInteger(_f.uint(), false, _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (__value__ == (13u32 : stdgo._internal.reflect.Reflect.Kind)))) {
                            _p._fmtFloat(_f.float_(), (32 : stdgo.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 5 || (__switchIndex__ == -1 && (__value__ == (14u32 : stdgo._internal.reflect.Reflect.Kind)))) {
                            _p._fmtFloat(_f.float_(), (64 : stdgo.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 6 || (__switchIndex__ == -1 && (__value__ == (15u32 : stdgo._internal.reflect.Reflect.Kind)))) {
                            _p._fmtComplex(_f.complex(), (64 : stdgo.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 7 || (__switchIndex__ == -1 && (__value__ == (16u32 : stdgo._internal.reflect.Reflect.Kind)))) {
                            _p._fmtComplex(_f.complex(), (128 : stdgo.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 8 || (__switchIndex__ == -1 && (__value__ == (24u32 : stdgo._internal.reflect.Reflect.Kind)))) {
                            _p._fmtString((_f.string() : stdgo.GoString)?.__copy__(), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 9 || (__switchIndex__ == -1 && (__value__ == (21u32 : stdgo._internal.reflect.Reflect.Kind)))) {
                            if (_p._fmt._fmtFlags._sharpV) {
                                _p._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                                if (_f.isNil()) {
                                    _p._buf._writeString(("(nil)" : stdgo.GoString));
                                    return;
                                };
                                _p._buf._writeByte((123 : stdgo.GoUInt8));
                            } else {
                                _p._buf._writeString(("map[" : stdgo.GoString));
                            };
                            var _sorted = stdgo._internal.internal.fmtsort.Fmtsort.sort(_f?.__copy__());
                            for (_i => _key in _sorted.key) {
                                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                    if (_p._fmt._fmtFlags._sharpV) {
                                        _p._buf._writeString((", " : stdgo.GoString));
                                    } else {
                                        _p._buf._writeByte((32 : stdgo.GoUInt8));
                                    };
                                };
                                _p._printValue(_key?.__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                _p._buf._writeByte((58 : stdgo.GoUInt8));
                                _p._printValue(_sorted.value[(_i : stdgo.GoInt)], _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                            };
                            if (_p._fmt._fmtFlags._sharpV) {
                                _p._buf._writeByte((125 : stdgo.GoUInt8));
                            } else {
                                _p._buf._writeByte((93 : stdgo.GoUInt8));
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 10 || (__switchIndex__ == -1 && (__value__ == (25u32 : stdgo._internal.reflect.Reflect.Kind)))) {
                            if (_p._fmt._fmtFlags._sharpV) {
                                _p._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                            };
                            _p._buf._writeByte((123 : stdgo.GoUInt8));
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < _f.numField() : Bool), _i++, {
                                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                        if (_p._fmt._fmtFlags._sharpV) {
                                            _p._buf._writeString((", " : stdgo.GoString));
                                        } else {
                                            _p._buf._writeByte((32 : stdgo.GoUInt8));
                                        };
                                    };
                                    if ((_p._fmt._fmtFlags._plusV || _p._fmt._fmtFlags._sharpV : Bool)) {
                                        {
                                            var _name = _f.type().field(_i).name?.__copy__();
                                            if (_name != (stdgo.Go.str())) {
                                                _p._buf._writeString(_name?.__copy__());
                                                _p._buf._writeByte((58 : stdgo.GoUInt8));
                                            };
                                        };
                                    };
                                    _p._printValue(_getField(_f?.__copy__(), _i)?.__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                });
                            };
                            _p._buf._writeByte((125 : stdgo.GoUInt8));
                            break;
                            break;
                        } else if (__switchIndex__ == 11 || (__switchIndex__ == -1 && (__value__ == (20u32 : stdgo._internal.reflect.Reflect.Kind)))) {
                            var _value = _f.elem()?.__copy__();
                            if (!_value.isValid()) {
                                if (_p._fmt._fmtFlags._sharpV) {
                                    _p._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                                    _p._buf._writeString(("(nil)" : stdgo.GoString));
                                } else {
                                    _p._buf._writeString(("<nil>" : stdgo.GoString));
                                };
                            } else {
                                _p._printValue(_value?.__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 12 || (__switchIndex__ == -1 && (__value__ == ((17u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect.Kind))))) {
                            {
                                final __value__ = _verb;
                                if (__value__ == ((115 : stdgo.GoInt32)) || __value__ == ((113 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32))) {
                                    var _t = _f.type();
                                    if (_t.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect.Kind))) {
                                        var _bytes:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
                                        if (_f.kind() == ((23u32 : stdgo._internal.reflect.Reflect.Kind))) {
                                            _bytes = _f.bytes();
                                        } else if (_f.canAddr()) {
                                            _bytes = _f.slice((0 : stdgo.GoInt), _f.len()).bytes();
                                        } else {
                                            _bytes = (new stdgo.Slice<stdgo.GoUInt8>((_f.len() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                                            for (_i => _ in _bytes) {
                                                _bytes[(_i : stdgo.GoInt)] = (_f.index(_i).uint() : stdgo.GoByte);
                                            };
                                        };
                                        _p._fmtBytes(_bytes, _verb, (_t.string() : stdgo.GoString)?.__copy__());
                                        return;
                                    };
                                };
                            };
                            if (_p._fmt._fmtFlags._sharpV) {
                                _p._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                                if (((_f.kind() == (23u32 : stdgo._internal.reflect.Reflect.Kind)) && _f.isNil() : Bool)) {
                                    _p._buf._writeString(("(nil)" : stdgo.GoString));
                                    return;
                                };
                                _p._buf._writeByte((123 : stdgo.GoUInt8));
                                {
                                    var _i = (0 : stdgo.GoInt);
                                    stdgo.Go.cfor((_i < _f.len() : Bool), _i++, {
                                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                            _p._buf._writeString((", " : stdgo.GoString));
                                        };
                                        _p._printValue(_f.index(_i)?.__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                    });
                                };
                                _p._buf._writeByte((125 : stdgo.GoUInt8));
                            } else {
                                _p._buf._writeByte((91 : stdgo.GoUInt8));
                                {
                                    var _i = (0 : stdgo.GoInt);
                                    stdgo.Go.cfor((_i < _f.len() : Bool), _i++, {
                                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                            _p._buf._writeByte((32 : stdgo.GoUInt8));
                                        };
                                        _p._printValue(_f.index(_i)?.__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                    });
                                };
                                _p._buf._writeByte((93 : stdgo.GoUInt8));
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 13 || (__switchIndex__ == -1 && (__value__ == (22u32 : stdgo._internal.reflect.Reflect.Kind)))) {
                            if (((_depth == (0 : stdgo.GoInt)) && (_f.pointer() != (0 : stdgo.GoUIntptr)) : Bool)) {
                                {
                                    var _a = _f.elem()?.__copy__();
                                    {
                                        final __value__ = _a.kind();
                                        if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((25u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect.Kind))) {
                                            _p._buf._writeByte((38 : stdgo.GoUInt8));
                                            _p._printValue(_a?.__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                            return;
                                        };
                                    };
                                };
                            };
                            @:fallthrough {
                                __switchIndex__ = 14;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 14 || (__switchIndex__ == -1 && (__value__ == ((18u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((19u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((26u32 : stdgo._internal.reflect.Reflect.Kind))))) {
                            _p._fmtPointer(_f?.__copy__(), _verb);
                            break;
                            break;
                        } else {
                            _p._unknownType(_f?.__copy__());
                            break;
                        };
                    };
                    break;
                };
            };
        };
    }
    @:keep
    static public function _printArg( _p:stdgo.Ref<T_pp>, _arg:stdgo.AnyInterface, _verb:stdgo.GoRune):Void {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        _p._arg = _arg;
        _p._value = (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value);
        if (_arg == null) {
            {
                final __value__ = _verb;
                if (__value__ == ((84 : stdgo.GoInt32)) || __value__ == ((118 : stdgo.GoInt32))) {
                    _p._fmt._padString(("<nil>" : stdgo.GoString));
                } else {
                    _p._badVerb(_verb);
                };
            };
            return;
        };
        {
            final __value__ = _verb;
            if (__value__ == ((84 : stdgo.GoInt32))) {
                _p._fmt._fmtS((stdgo._internal.reflect.Reflect.typeOf(_arg).string() : stdgo.GoString)?.__copy__());
                return;
            } else if (__value__ == ((112 : stdgo.GoInt32))) {
                _p._fmtPointer(stdgo._internal.reflect.Reflect.valueOf(_arg)?.__copy__(), (112 : stdgo.GoInt32));
                return;
            };
        };
        {
            final __type__ = _arg;
            if (stdgo.Go.typeEquals((__type__ : Bool))) {
                var _f:Bool = __type__ == null ? false : __type__.__underlying__() == null ? false : __type__ == null ? false : __type__.__underlying__().value;
                _p._fmtBool(_f, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat32))) {
                var _f:stdgo.GoFloat32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtFloat((_f : stdgo.GoFloat64), (32 : stdgo.GoInt), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat64))) {
                var _f:stdgo.GoFloat64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtFloat(_f, (64 : stdgo.GoInt), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoComplex64))) {
                var _f:stdgo.GoComplex64 = __type__ == null ? new stdgo.GoComplex64(0, 0) : __type__.__underlying__() == null ? new stdgo.GoComplex64(0, 0) : __type__ == null ? new stdgo.GoComplex64(0, 0) : __type__.__underlying__().value;
                _p._fmtComplex((_f : stdgo.GoComplex128), (64 : stdgo.GoInt), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoComplex128))) {
                var _f:stdgo.GoComplex128 = __type__ == null ? new stdgo.GoComplex128(0, 0) : __type__.__underlying__() == null ? new stdgo.GoComplex128(0, 0) : __type__ == null ? new stdgo.GoComplex128(0, 0) : __type__.__underlying__().value;
                _p._fmtComplex(_f, (128 : stdgo.GoInt), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt))) {
                var _f:stdgo.GoInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt8))) {
                var _f:stdgo.GoInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt16))) {
                var _f:stdgo.GoInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt32))) {
                var _f:stdgo.GoInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt64))) {
                var _f:stdgo.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt))) {
                var _f:stdgo.GoUInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt8))) {
                var _f:stdgo.GoUInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt16))) {
                var _f:stdgo.GoUInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt32))) {
                var _f:stdgo.GoUInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt64))) {
                var _f:stdgo.GoUInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger(_f, false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUIntptr))) {
                var _f:stdgo.GoUIntptr = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                var _f:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                _p._fmtString(_f?.__copy__(), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoByte>))) {
                var _f:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                _p._fmtBytes(_f, _verb, ("[]byte" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.reflect.Reflect.Value))) {
                var _f:stdgo._internal.reflect.Reflect.Value = __type__ == null ? ({} : stdgo._internal.reflect.Reflect.Value) : __type__.__underlying__() == null ? ({} : stdgo._internal.reflect.Reflect.Value) : __type__ == null ? ({} : stdgo._internal.reflect.Reflect.Value) : __type__.__underlying__().value;
                if ((_f.isValid() && _f.canInterface() : Bool)) {
                    _p._arg = _f.interface_();
                    if (_p._handleMethods(_verb)) {
                        return;
                    };
                };
                _p._printValue(_f?.__copy__(), _verb, (0 : stdgo.GoInt));
            } else {
                var _f:stdgo.AnyInterface = __type__?.__underlying__();
                if (!_p._handleMethods(_verb)) {
                    _p._printValue(stdgo._internal.reflect.Reflect.valueOf(_f)?.__copy__(), _verb, (0 : stdgo.GoInt));
                };
            };
        };
    }
    @:keep
    static public function _handleMethods( _p:stdgo.Ref<T_pp>, _verb:stdgo.GoRune):Bool {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        var _handled = false;
        try {
            if (_p._erroring) {
                return _handled;
            };
            if (_verb == ((119 : stdgo.GoInt32))) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_p._arg : stdgo.Error)) : stdgo.Error), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Error), _1 : false };
                }, __0 = __tmp__._0, _ok = __tmp__._1;
                if ((!_ok || !_p._wrapErrs : Bool)) {
                    _p._badVerb(_verb);
                    return true;
                };
                _verb = (118 : stdgo.GoInt32);
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_p._arg : Formatter)) : Formatter), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.fmt.Fmt.Formatter), _1 : false };
                }, _formatter = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _handled = true;
                    {
                        var _a0 = _p._arg;
                        var _a1 = _verb;
                        var _a2 = ("Format" : stdgo.GoString);
                        __deferstack__.unshift(() -> _p._catchPanic(_a0, _a1, _a2?.__copy__()));
                    };
                    _formatter.format(stdgo.Go.asInterface(_p), _verb);
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _handled;
                    };
                };
            };
            if (_p._fmt._fmtFlags._sharpV) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_p._arg : GoStringer)) : GoStringer), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.fmt.Fmt.GoStringer), _1 : false };
                    }, _stringer = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _handled = true;
                        {
                            var _a0 = _p._arg;
                            var _a1 = _verb;
                            var _a2 = ("GoString" : stdgo.GoString);
                            __deferstack__.unshift(() -> _p._catchPanic(_a0, _a1, _a2?.__copy__()));
                        };
                        _p._fmt._fmtS(_stringer.goString()?.__copy__());
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return _handled;
                        };
                    };
                };
            } else {
                {
                    final __value__ = _verb;
                    if (__value__ == ((118 : stdgo.GoInt32)) || __value__ == ((115 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32)) || __value__ == ((113 : stdgo.GoInt32))) {
                        {
                            final __type__ = _p._arg;
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Error))) {
                                var _v:stdgo.Error = __type__ == null ? (null : stdgo.Error) : __type__.__underlying__() == null ? (null : stdgo.Error) : __type__ == null ? (null : stdgo.Error) : __type__.__underlying__().value;
                                _handled = true;
                                {
                                    var _a0 = _p._arg;
                                    var _a1 = _verb;
                                    var _a2 = ("Error" : stdgo.GoString);
                                    __deferstack__.unshift(() -> _p._catchPanic(_a0, _a1, _a2?.__copy__()));
                                };
                                _p._fmtString(_v.error()?.__copy__(), _verb);
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return _handled;
                                };
                            } else if (stdgo.Go.typeEquals((__type__ : Stringer))) {
                                var _v:stdgo._internal.fmt.Fmt.Stringer = __type__ == null ? (null : stdgo._internal.fmt.Fmt.Stringer) : __type__.__underlying__() == null ? (null : stdgo._internal.fmt.Fmt.Stringer) : __type__ == null ? (null : stdgo._internal.fmt.Fmt.Stringer) : __type__.__underlying__().value;
                                _handled = true;
                                {
                                    var _a0 = _p._arg;
                                    var _a1 = _verb;
                                    var _a2 = ("String" : stdgo.GoString);
                                    __deferstack__.unshift(() -> _p._catchPanic(_a0, _a1, _a2?.__copy__()));
                                };
                                _p._fmtString((_v.string() : stdgo.GoString)?.__copy__(), _verb);
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return _handled;
                                };
                            };
                        };
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return false;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _handled;
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
            return _handled;
        };
    }
    @:keep
    static public function _catchPanic( _p:stdgo.Ref<T_pp>, _arg:stdgo.AnyInterface, _verb:stdgo.GoRune, _method:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        {
            var _err = ({
                final r = stdgo.Go.recover_exception;
                stdgo.Go.recover_exception = null;
                r;
            });
            if (_err != null) {
                {
                    var _v = stdgo._internal.reflect.Reflect.valueOf(_arg)?.__copy__();
                    if (((_v.kind() == (22u32 : stdgo._internal.reflect.Reflect.Kind)) && _v.isNil() : Bool)) {
                        _p._buf._writeString(("<nil>" : stdgo.GoString));
                        return;
                    };
                };
                if (_p._panicking) {
                    throw stdgo.Go.toInterface(_err);
                };
                var _oldFlags = _p._fmt._fmtFlags?.__copy__();
                _p._fmt._clearflags();
                _p._buf._writeString(("%!" : stdgo.GoString));
                _p._buf._writeRune(_verb);
                _p._buf._writeString(("(PANIC=" : stdgo.GoString));
                _p._buf._writeString(_method?.__copy__());
                _p._buf._writeString((" method: " : stdgo.GoString));
                _p._panicking = true;
                _p._printArg(_err, (118 : stdgo.GoInt32));
                _p._panicking = false;
                _p._buf._writeByte((41 : stdgo.GoUInt8));
                _p._fmt._fmtFlags = _oldFlags?.__copy__();
            };
        };
    }
    @:keep
    static public function _fmtPointer( _p:stdgo.Ref<T_pp>, _value:stdgo._internal.reflect.Reflect.Value, _verb:stdgo.GoRune):Void {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        var _u:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        {
            final __value__ = _value.kind();
            if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((19u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((22u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((26u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _u = _value.pointer();
            } else {
                _p._badVerb(_verb);
                return;
            };
        };
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32))) {
                if (_p._fmt._fmtFlags._sharpV) {
                    _p._buf._writeByte((40 : stdgo.GoUInt8));
                    _p._buf._writeString((_value.type().string() : stdgo.GoString)?.__copy__());
                    _p._buf._writeString((")(" : stdgo.GoString));
                    if (_u == ((0 : stdgo.GoUIntptr))) {
                        _p._buf._writeString(("nil" : stdgo.GoString));
                    } else {
                        _p._fmt0x64((_u : stdgo.GoUInt64), true);
                    };
                    _p._buf._writeByte((41 : stdgo.GoUInt8));
                } else {
                    if (_u == ((0 : stdgo.GoUIntptr))) {
                        _p._fmt._padString(("<nil>" : stdgo.GoString));
                    } else {
                        _p._fmt0x64((_u : stdgo.GoUInt64), !_p._fmt._fmtFlags._sharp);
                    };
                };
            } else if (__value__ == ((112 : stdgo.GoInt32))) {
                _p._fmt0x64((_u : stdgo.GoUInt64), !_p._fmt._fmtFlags._sharp);
            } else if (__value__ == ((98 : stdgo.GoInt32)) || __value__ == ((111 : stdgo.GoInt32)) || __value__ == ((100 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32))) {
                _p._fmtInteger((_u : stdgo.GoUInt64), false, _verb);
            } else {
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    static public function _fmtBytes( _p:stdgo.Ref<T_pp>, _v:stdgo.Slice<stdgo.GoByte>, _verb:stdgo.GoRune, _typeString:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32)) || __value__ == ((100 : stdgo.GoInt32))) {
                if (_p._fmt._fmtFlags._sharpV) {
                    _p._buf._writeString(_typeString?.__copy__());
                    if (_v == null) {
                        _p._buf._writeString(("(nil)" : stdgo.GoString));
                        return;
                    };
                    _p._buf._writeByte((123 : stdgo.GoUInt8));
                    for (_i => _c in _v) {
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            _p._buf._writeString((", " : stdgo.GoString));
                        };
                        _p._fmt0x64((_c : stdgo.GoUInt64), true);
                    };
                    _p._buf._writeByte((125 : stdgo.GoUInt8));
                } else {
                    _p._buf._writeByte((91 : stdgo.GoUInt8));
                    for (_i => _c in _v) {
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            _p._buf._writeByte((32 : stdgo.GoUInt8));
                        };
                        _p._fmt._fmtInteger((_c : stdgo.GoUInt64), (10 : stdgo.GoInt), false, _verb, ("0123456789abcdefx" : stdgo.GoString));
                    };
                    _p._buf._writeByte((93 : stdgo.GoUInt8));
                };
            } else if (__value__ == ((115 : stdgo.GoInt32))) {
                _p._fmt._fmtBs(_v);
            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                _p._fmt._fmtBx(_v, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((88 : stdgo.GoInt32))) {
                _p._fmt._fmtBx(_v, ("0123456789ABCDEFX" : stdgo.GoString));
            } else if (__value__ == ((113 : stdgo.GoInt32))) {
                _p._fmt._fmtQ((_v : stdgo.GoString)?.__copy__());
            } else {
                _p._printValue(stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(_v))?.__copy__(), _verb, (0 : stdgo.GoInt));
            };
        };
    }
    @:keep
    static public function _fmtString( _p:stdgo.Ref<T_pp>, _v:stdgo.GoString, _verb:stdgo.GoRune):Void {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32))) {
                if (_p._fmt._fmtFlags._sharpV) {
                    _p._fmt._fmtQ(_v?.__copy__());
                } else {
                    _p._fmt._fmtS(_v?.__copy__());
                };
            } else if (__value__ == ((115 : stdgo.GoInt32))) {
                _p._fmt._fmtS(_v?.__copy__());
            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                _p._fmt._fmtSx(_v?.__copy__(), ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((88 : stdgo.GoInt32))) {
                _p._fmt._fmtSx(_v?.__copy__(), ("0123456789ABCDEFX" : stdgo.GoString));
            } else if (__value__ == ((113 : stdgo.GoInt32))) {
                _p._fmt._fmtQ(_v?.__copy__());
            } else {
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    static public function _fmtComplex( _p:stdgo.Ref<T_pp>, _v:stdgo.GoComplex128, _size:stdgo.GoInt, _verb:stdgo.GoRune):Void {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32)) || __value__ == ((98 : stdgo.GoInt32)) || __value__ == ((103 : stdgo.GoInt32)) || __value__ == ((71 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32)) || __value__ == ((102 : stdgo.GoInt32)) || __value__ == ((70 : stdgo.GoInt32)) || __value__ == ((101 : stdgo.GoInt32)) || __value__ == ((69 : stdgo.GoInt32))) {
                var _oldPlus = _p._fmt._fmtFlags._plus;
                _p._buf._writeByte((40 : stdgo.GoUInt8));
                _p._fmtFloat(_v.real, (_size / (2 : stdgo.GoInt) : stdgo.GoInt), _verb);
                _p._fmt._fmtFlags._plus = true;
                _p._fmtFloat(_v.imag, (_size / (2 : stdgo.GoInt) : stdgo.GoInt), _verb);
                _p._buf._writeString(("i)" : stdgo.GoString));
                _p._fmt._fmtFlags._plus = _oldPlus;
            } else {
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    static public function _fmtFloat( _p:stdgo.Ref<T_pp>, _v:stdgo.GoFloat64, _size:stdgo.GoInt, _verb:stdgo.GoRune):Void {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32))) {
                _p._fmt._fmtFloat(_v, _size, (103 : stdgo.GoInt32), (-1 : stdgo.GoInt));
            } else if (__value__ == ((98 : stdgo.GoInt32)) || __value__ == ((103 : stdgo.GoInt32)) || __value__ == ((71 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32))) {
                _p._fmt._fmtFloat(_v, _size, _verb, (-1 : stdgo.GoInt));
            } else if (__value__ == ((102 : stdgo.GoInt32)) || __value__ == ((101 : stdgo.GoInt32)) || __value__ == ((69 : stdgo.GoInt32))) {
                _p._fmt._fmtFloat(_v, _size, _verb, (6 : stdgo.GoInt));
            } else if (__value__ == ((70 : stdgo.GoInt32))) {
                _p._fmt._fmtFloat(_v, _size, (102 : stdgo.GoInt32), (6 : stdgo.GoInt));
            } else {
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    static public function _fmtInteger( _p:stdgo.Ref<T_pp>, _v:stdgo.GoUInt64, _isSigned:Bool, _verb:stdgo.GoRune):Void {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32))) {
                if ((_p._fmt._fmtFlags._sharpV && !_isSigned : Bool)) {
                    _p._fmt0x64(_v, true);
                } else {
                    _p._fmt._fmtInteger(_v, (10 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
                };
            } else if (__value__ == ((100 : stdgo.GoInt32))) {
                _p._fmt._fmtInteger(_v, (10 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((98 : stdgo.GoInt32))) {
                _p._fmt._fmtInteger(_v, (2 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((111 : stdgo.GoInt32)) || __value__ == ((79 : stdgo.GoInt32))) {
                _p._fmt._fmtInteger(_v, (8 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                _p._fmt._fmtInteger(_v, (16 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((88 : stdgo.GoInt32))) {
                _p._fmt._fmtInteger(_v, (16 : stdgo.GoInt), _isSigned, _verb, ("0123456789ABCDEFX" : stdgo.GoString));
            } else if (__value__ == ((99 : stdgo.GoInt32))) {
                _p._fmt._fmtC(_v);
            } else if (__value__ == ((113 : stdgo.GoInt32))) {
                _p._fmt._fmtQc(_v);
            } else if (__value__ == ((85 : stdgo.GoInt32))) {
                _p._fmt._fmtUnicode(_v);
            } else {
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    static public function _fmt0x64( _p:stdgo.Ref<T_pp>, _v:stdgo.GoUInt64, _leading0x:Bool):Void {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        var _sharp = _p._fmt._fmtFlags._sharp;
        _p._fmt._fmtFlags._sharp = _leading0x;
        _p._fmt._fmtInteger(_v, (16 : stdgo.GoInt), false, (118 : stdgo.GoInt32), ("0123456789abcdefx" : stdgo.GoString));
        _p._fmt._fmtFlags._sharp = _sharp;
    }
    @:keep
    static public function _fmtBool( _p:stdgo.Ref<T_pp>, _v:Bool, _verb:stdgo.GoRune):Void {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((116 : stdgo.GoInt32)) || __value__ == ((118 : stdgo.GoInt32))) {
                _p._fmt._fmtBoolean(_v);
            } else {
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    static public function _badVerb( _p:stdgo.Ref<T_pp>, _verb:stdgo.GoRune):Void {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        _p._erroring = true;
        _p._buf._writeString(("%!" : stdgo.GoString));
        _p._buf._writeRune(_verb);
        _p._buf._writeByte((40 : stdgo.GoUInt8));
        if (_p._arg != null) {
            _p._buf._writeString((stdgo._internal.reflect.Reflect.typeOf(_p._arg).string() : stdgo.GoString)?.__copy__());
            _p._buf._writeByte((61 : stdgo.GoUInt8));
            _p._printArg(_p._arg, (118 : stdgo.GoInt32));
        } else if (_p._value.isValid()) {
            _p._buf._writeString((_p._value.type().string() : stdgo.GoString)?.__copy__());
            _p._buf._writeByte((61 : stdgo.GoUInt8));
            _p._printValue(_p._value?.__copy__(), (118 : stdgo.GoInt32), (0 : stdgo.GoInt));
        } else {
            _p._buf._writeString(("<nil>" : stdgo.GoString));
        };
        _p._buf._writeByte((41 : stdgo.GoUInt8));
        _p._erroring = false;
    }
    @:keep
    static public function _unknownType( _p:stdgo.Ref<T_pp>, _v:stdgo._internal.reflect.Reflect.Value):Void {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        if (!_v.isValid()) {
            _p._buf._writeString(("<nil>" : stdgo.GoString));
            return;
        };
        _p._buf._writeByte((63 : stdgo.GoUInt8));
        _p._buf._writeString((_v.type().string() : stdgo.GoString)?.__copy__());
        _p._buf._writeByte((63 : stdgo.GoUInt8));
    }
    @:keep
    static public function writeString( _p:stdgo.Ref<T_pp>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        var _ret = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _p._buf._writeString(_s?.__copy__());
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function write( _p:stdgo.Ref<T_pp>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        var _ret = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _p._buf._write(_b);
        return { _0 : (_b.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function flag( _p:stdgo.Ref<T_pp>, _b:stdgo.GoInt):Bool {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        {
            final __value__ = _b;
            if (__value__ == ((45 : stdgo.GoInt))) {
                return _p._fmt._fmtFlags._minus;
            } else if (__value__ == ((43 : stdgo.GoInt))) {
                return (_p._fmt._fmtFlags._plus || _p._fmt._fmtFlags._plusV : Bool);
            } else if (__value__ == ((35 : stdgo.GoInt))) {
                return (_p._fmt._fmtFlags._sharp || _p._fmt._fmtFlags._sharpV : Bool);
            } else if (__value__ == ((32 : stdgo.GoInt))) {
                return _p._fmt._fmtFlags._space;
            } else if (__value__ == ((48 : stdgo.GoInt))) {
                return _p._fmt._fmtFlags._zero;
            };
        };
        return false;
    }
    @:keep
    static public function precision( _p:stdgo.Ref<T_pp>):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        var _prec = (0 : stdgo.GoInt), _ok = false;
        return { _0 : _p._fmt._prec, _1 : _p._fmt._fmtFlags._precPresent };
    }
    @:keep
    static public function width( _p:stdgo.Ref<T_pp>):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        var _wid = (0 : stdgo.GoInt), _ok = false;
        return { _0 : _p._fmt._wid, _1 : _p._fmt._fmtFlags._widPresent };
    }
    @:keep
    static public function _free( _p:stdgo.Ref<T_pp>):Void {
        @:recv var _p:stdgo.Ref<T_pp> = _p;
        if ((_p._buf.capacity > (65536 : stdgo.GoInt) : Bool)) {
            _p._buf = null;
        } else {
            _p._buf = (_p._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.fmt.Fmt.T_buffer);
        };
        if ((_p._wrappedErrs.capacity > (8 : stdgo.GoInt) : Bool)) {
            _p._wrappedErrs = (null : stdgo.Slice<stdgo.GoInt>);
        };
        _p._arg = (null : stdgo.AnyInterface);
        _p._value = (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value);
        _p._wrappedErrs = (_p._wrappedErrs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        _ppFree.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_p)));
    }
}
class T_ss_asInterface {
    @:keep
    public dynamic function _doScanf(_format:stdgo.GoString, _a:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._doScanf(_format, _a);
    @:keep
    public dynamic function _advance(_format:stdgo.GoString):stdgo.GoInt return __self__.value._advance(_format);
    @:keep
    public dynamic function _doScan(_a:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._doScan(_a);
    @:keep
    public dynamic function _scanOne(_verb:stdgo.GoRune, _arg:stdgo.AnyInterface):Void __self__.value._scanOne(_verb, _arg);
    @:keep
    public dynamic function _scanPercent():Void __self__.value._scanPercent();
    @:keep
    public dynamic function _hexString():stdgo.GoString return __self__.value._hexString();
    @:keep
    public dynamic function _hexByte():{ var _0 : stdgo.GoByte; var _1 : Bool; } return __self__.value._hexByte();
    @:keep
    public dynamic function _quotedString():stdgo.GoString return __self__.value._quotedString();
    @:keep
    public dynamic function _convertString(_verb:stdgo.GoRune):stdgo.GoString return __self__.value._convertString(_verb);
    @:keep
    public dynamic function _scanComplex(_verb:stdgo.GoRune, _n:stdgo.GoInt):stdgo.GoComplex128 return __self__.value._scanComplex(_verb, _n);
    @:keep
    public dynamic function _convertFloat(_str:stdgo.GoString, _n:stdgo.GoInt):stdgo.GoFloat64 return __self__.value._convertFloat(_str, _n);
    @:keep
    public dynamic function _complexTokens():{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return __self__.value._complexTokens();
    @:keep
    public dynamic function _floatToken():stdgo.GoString return __self__.value._floatToken();
    @:keep
    public dynamic function _scanUint(_verb:stdgo.GoRune, _bitSize:stdgo.GoInt):stdgo.GoUInt64 return __self__.value._scanUint(_verb, _bitSize);
    @:keep
    public dynamic function _scanInt(_verb:stdgo.GoRune, _bitSize:stdgo.GoInt):stdgo.GoInt64 return __self__.value._scanInt(_verb, _bitSize);
    @:keep
    public dynamic function _scanBasePrefix():{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } return __self__.value._scanBasePrefix();
    @:keep
    public dynamic function _scanRune(_bitSize:stdgo.GoInt):stdgo.GoInt64 return __self__.value._scanRune(_bitSize);
    @:keep
    public dynamic function _scanNumber(_digits:stdgo.GoString, _haveDigits:Bool):stdgo.GoString return __self__.value._scanNumber(_digits, _haveDigits);
    @:keep
    public dynamic function _getBase(_verb:stdgo.GoRune):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; } return __self__.value._getBase(_verb);
    @:keep
    public dynamic function _scanBool(_verb:stdgo.GoRune):Bool return __self__.value._scanBool(_verb);
    @:keep
    public dynamic function _okVerb(_verb:stdgo.GoRune, _okVerbs:stdgo.GoString, _typ:stdgo.GoString):Bool return __self__.value._okVerb(_verb, _okVerbs, _typ);
    @:keep
    public dynamic function _accept(_ok:stdgo.GoString):Bool return __self__.value._accept(_ok);
    @:keep
    public dynamic function _notEOF():Void __self__.value._notEOF();
    @:keep
    public dynamic function _peek(_ok:stdgo.GoString):Bool return __self__.value._peek(_ok);
    @:keep
    public dynamic function _consume(_ok:stdgo.GoString, _accept:Bool):Bool return __self__.value._consume(_ok, _accept);
    @:keep
    public dynamic function _token(_skipSpace:Bool, _f:stdgo.GoRune -> Bool):stdgo.Slice<stdgo.GoByte> return __self__.value._token(_skipSpace, _f);
    @:keep
    public dynamic function skipSpace():Void __self__.value.skipSpace();
    @:keep
    public dynamic function _free(_old:T_ssave):Void __self__.value._free(_old);
    @:keep
    public dynamic function token(_skipSpace:Bool, _f:stdgo.GoRune -> Bool):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.token(_skipSpace, _f);
    @:keep
    public dynamic function _errorString(_err:stdgo.GoString):Void __self__.value._errorString(_err);
    @:keep
    public dynamic function _error(_err:stdgo.Error):Void __self__.value._error(_err);
    @:keep
    public dynamic function unreadRune():stdgo.Error return __self__.value.unreadRune();
    @:keep
    public dynamic function _mustReadRune():stdgo.GoRune return __self__.value._mustReadRune();
    @:keep
    public dynamic function _getRune():stdgo.GoRune return __self__.value._getRune();
    @:keep
    public dynamic function width():{ var _0 : stdgo.GoInt; var _1 : Bool; } return __self__.value.width();
    @:keep
    public dynamic function readRune():{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value.readRune();
    @:keep
    public dynamic function read(_buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_buf);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_ss>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt.Fmt.T_ss_asInterface) class T_ss_static_extension {
    @:keep
    static public function _doScanf( _s:stdgo.Ref<T_ss>, _format:stdgo.GoString, _a:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        var _numProcessed = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            {
                var _a0 = (stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>);
                __deferstack__.unshift(() -> _errorHandler(_a0));
            };
            var _end = ((_format.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i <= _end : Bool)) {
                    var _w = _s._advance((_format.__slice__(_i) : stdgo.GoString)?.__copy__());
                    if ((_w > (0 : stdgo.GoInt) : Bool)) {
                        _i = (_i + (_w) : stdgo.GoInt);
                        continue;
                    };
                    if (_format[(_i : stdgo.GoInt)] != ((37 : stdgo.GoUInt8))) {
                        if ((_w < (0 : stdgo.GoInt) : Bool)) {
                            _s._errorString(("input does not match format" : stdgo.GoString));
                        };
                        break;
                    };
                    _i++;
                    var _widPresent:Bool = false;
                    {
                        var __tmp__ = _parsenum(_format?.__copy__(), _i, _end);
                        _s._ssave._maxWid = __tmp__._0;
                        _widPresent = __tmp__._1;
                        _i = __tmp__._2;
                    };
                    if (!_widPresent) {
                        _s._ssave._maxWid = (1073741824 : stdgo.GoInt);
                    };
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString((_format.__slice__(_i) : stdgo.GoString)?.__copy__()), _c:stdgo.GoInt32 = __tmp__._0, _w:stdgo.GoInt = __tmp__._1;
                    _i = (_i + (_w) : stdgo.GoInt);
                    if (_c != ((99 : stdgo.GoInt32))) {
                        _s.skipSpace();
                    };
                    if (_c == ((37 : stdgo.GoInt32))) {
                        _s._scanPercent();
                        continue;
                    };
                    _s._ssave._argLimit = _s._ssave._limit;
                    {
                        var _f = (_s._count + _s._ssave._maxWid : stdgo.GoInt);
                        if ((_f < _s._ssave._argLimit : Bool)) {
                            _s._ssave._argLimit = _f;
                        };
                    };
                    if ((_numProcessed >= (_a.length) : Bool)) {
                        _s._errorString(((("too few operands for format \'%" : stdgo.GoString) + (_format.__slice__((_i - _w : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("\'" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                        break;
                    };
                    var _arg = _a[(_numProcessed : stdgo.GoInt)];
                    _s._scanOne(_c, _arg);
                    _numProcessed++;
                    _s._ssave._argLimit = _s._ssave._limit;
                };
            };
            if ((_numProcessed < (_a.length) : Bool)) {
                _s._errorString(("too many operands" : stdgo.GoString));
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _numProcessed, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _numProcessed, _1 : _err };
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
            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _numProcessed, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _advance( _s:stdgo.Ref<T_ss>, _format:stdgo.GoString):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        var _i = (0 : stdgo.GoInt);
        while ((_i < (_format.length) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString((_format.__slice__(_i) : stdgo.GoString)?.__copy__()), _fmtc:stdgo.GoInt32 = __tmp__._0, _w:stdgo.GoInt = __tmp__._1;
            if (_isSpace(_fmtc)) {
                var _newlines = (0 : stdgo.GoInt);
                var _trailingSpace = false;
                while ((_isSpace(_fmtc) && (_i < (_format.length) : Bool) : Bool)) {
                    if (_fmtc == ((10 : stdgo.GoInt32))) {
                        _newlines++;
                        _trailingSpace = false;
                    } else {
                        _trailingSpace = true;
                    };
                    _i = (_i + (_w) : stdgo.GoInt);
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString((_format.__slice__(_i) : stdgo.GoString)?.__copy__());
                        _fmtc = __tmp__._0;
                        _w = __tmp__._1;
                    };
                };
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < _newlines : Bool), _j++, {
                        var _inputc = _s._getRune();
                        while ((_isSpace(_inputc) && (_inputc != (10 : stdgo.GoInt32)) : Bool)) {
                            _inputc = _s._getRune();
                        };
                        if (((_inputc != (10 : stdgo.GoInt32)) && (_inputc != (-1 : stdgo.GoInt32)) : Bool)) {
                            _s._errorString(("newline in format does not match input" : stdgo.GoString));
                        };
                    });
                };
                if (_trailingSpace) {
                    var _inputc = _s._getRune();
                    if (_newlines == ((0 : stdgo.GoInt))) {
                        if ((!_isSpace(_inputc) && (_inputc != (-1 : stdgo.GoInt32)) : Bool)) {
                            _s._errorString(("expected space in input to match format" : stdgo.GoString));
                        };
                        if (_inputc == ((10 : stdgo.GoInt32))) {
                            _s._errorString(("newline in input does not match format" : stdgo.GoString));
                        };
                    };
                    while ((_isSpace(_inputc) && (_inputc != (10 : stdgo.GoInt32)) : Bool)) {
                        _inputc = _s._getRune();
                    };
                    if (_inputc != ((-1 : stdgo.GoInt32))) {
                        _s.unreadRune();
                    };
                };
                continue;
            };
            if (_fmtc == ((37 : stdgo.GoInt32))) {
                if ((_i + _w : stdgo.GoInt) == ((_format.length))) {
                    _s._errorString(("missing verb: % at end of format string" : stdgo.GoString));
                };
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString((_format.__slice__((_i + _w : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _nextc:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
                if (_nextc != ((37 : stdgo.GoInt32))) {
                    return _i;
                };
                _i = (_i + (_w) : stdgo.GoInt);
            };
            var _inputc = _s._mustReadRune();
            if (_fmtc != (_inputc)) {
                _s.unreadRune();
                return (-1 : stdgo.GoInt);
            };
            _i = (_i + (_w) : stdgo.GoInt);
        };
        return _i;
    }
    @:keep
    static public function _doScan( _s:stdgo.Ref<T_ss>, _a:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        var _numProcessed = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            {
                var _a0 = (stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>);
                __deferstack__.unshift(() -> _errorHandler(_a0));
            };
            for (__0 => _arg in _a) {
                _s._scanOne((118 : stdgo.GoInt32), _arg);
                _numProcessed++;
            };
            if (_s._ssave._nlIsEnd) {
                while (true) {
                    var _r = _s._getRune();
                    if (((_r == (10 : stdgo.GoInt32)) || (_r == (-1 : stdgo.GoInt32)) : Bool)) {
                        break;
                    };
                    if (!_isSpace(_r)) {
                        _s._errorString(("expected newline" : stdgo.GoString));
                        break;
                    };
                };
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _numProcessed, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _numProcessed, _1 : _err };
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
            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _numProcessed, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _scanOne( _s:stdgo.Ref<T_ss>, _verb:stdgo.GoRune, _arg:stdgo.AnyInterface):Void {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        _s._buf = (_s._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.fmt.Fmt.T_buffer);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_arg : Scanner)) : Scanner), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.fmt.Fmt.Scanner), _1 : false };
            }, _v = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _err = _v.scan(stdgo.Go.asInterface(_s), _verb);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                        _err = stdgo._internal.io.Io.errUnexpectedEOF;
                    };
                    _s._error(_err);
                };
                return;
            };
        };
        {
            final __type__ = _arg;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<Bool>))) {
                var _v:stdgo.Pointer<Bool> = __type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<Bool>) : __type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__().value;
                _v.value = _s._scanBool(_verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoComplex64>))) {
                var _v:stdgo.Pointer<stdgo.GoComplex64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoComplex64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoComplex64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoComplex64>) : __type__.__underlying__().value;
                _v.value = (_s._scanComplex(_verb, (64 : stdgo.GoInt)) : stdgo.GoComplex64);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoComplex128>))) {
                var _v:stdgo.Pointer<stdgo.GoComplex128> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoComplex128>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoComplex128>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoComplex128>) : __type__.__underlying__().value;
                _v.value = _s._scanComplex(_verb, (128 : stdgo.GoInt));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt>))) {
                var _v:stdgo.Pointer<stdgo.GoInt> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt>) : __type__.__underlying__().value;
                _v.value = (_s._scanInt(_verb, (32 : stdgo.GoInt)) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt8>))) {
                var _v:stdgo.Pointer<stdgo.GoInt8> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt8>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt8>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt8>) : __type__.__underlying__().value;
                _v.value = (_s._scanInt(_verb, (8 : stdgo.GoInt)) : stdgo.GoInt8);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt16>))) {
                var _v:stdgo.Pointer<stdgo.GoInt16> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt16>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt16>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt16>) : __type__.__underlying__().value;
                _v.value = (_s._scanInt(_verb, (16 : stdgo.GoInt)) : stdgo.GoInt16);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt32>))) {
                var _v:stdgo.Pointer<stdgo.GoInt32> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt32>) : __type__.__underlying__().value;
                _v.value = (_s._scanInt(_verb, (32 : stdgo.GoInt)) : stdgo.GoInt32);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt64>))) {
                var _v:stdgo.Pointer<stdgo.GoInt64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt64>) : __type__.__underlying__().value;
                _v.value = _s._scanInt(_verb, (64 : stdgo.GoInt));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt>))) {
                var _v:stdgo.Pointer<stdgo.GoUInt> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt>) : __type__.__underlying__().value;
                _v.value = (_s._scanUint(_verb, (32 : stdgo.GoInt)) : stdgo.GoUInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt8>))) {
                var _v:stdgo.Pointer<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt8>) : __type__.__underlying__().value;
                _v.value = (_s._scanUint(_verb, (8 : stdgo.GoInt)) : stdgo.GoUInt8);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt16>))) {
                var _v:stdgo.Pointer<stdgo.GoUInt16> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt16>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt16>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt16>) : __type__.__underlying__().value;
                _v.value = (_s._scanUint(_verb, (16 : stdgo.GoInt)) : stdgo.GoUInt16);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt32>))) {
                var _v:stdgo.Pointer<stdgo.GoUInt32> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt32>) : __type__.__underlying__().value;
                _v.value = (_s._scanUint(_verb, (32 : stdgo.GoInt)) : stdgo.GoUInt32);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt64>))) {
                var _v:stdgo.Pointer<stdgo.GoUInt64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt64>) : __type__.__underlying__().value;
                _v.value = _s._scanUint(_verb, (64 : stdgo.GoInt));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUIntptr>))) {
                var _v:stdgo.Pointer<stdgo.GoUIntptr> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUIntptr>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUIntptr>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUIntptr>) : __type__.__underlying__().value;
                _v.value = (_s._scanUint(_verb, (32 : stdgo.GoInt)) : stdgo.GoUIntptr);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoFloat32>))) {
                var _v:stdgo.Pointer<stdgo.GoFloat32> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoFloat32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat32>) : __type__.__underlying__().value;
                if (_s._okVerb(_verb, ("beEfFgGv" : stdgo.GoString), ("float32" : stdgo.GoString))) {
                    _s.skipSpace();
                    _s._notEOF();
                    _v.value = (_s._convertFloat(_s._floatToken()?.__copy__(), (32 : stdgo.GoInt)) : stdgo.GoFloat32);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoFloat64>))) {
                var _v:stdgo.Pointer<stdgo.GoFloat64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoFloat64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat64>) : __type__.__underlying__().value;
                if (_s._okVerb(_verb, ("beEfFgGv" : stdgo.GoString), ("float64" : stdgo.GoString))) {
                    _s.skipSpace();
                    _s._notEOF();
                    _v.value = _s._convertFloat(_s._floatToken()?.__copy__(), (64 : stdgo.GoInt));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoString>))) {
                var _v:stdgo.Pointer<stdgo.GoString> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__().value;
                _v.value = _s._convertString(_verb)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.Slice<stdgo.GoByte>>))) {
                var _v:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>> = __type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__().value;
                (_v : stdgo.Slice<stdgo.GoUInt8>).__setData__((_s._convertString(_verb) : stdgo.Slice<stdgo.GoByte>));
            } else {
                var _v:stdgo.AnyInterface = __type__?.__underlying__();
                var _val = stdgo._internal.reflect.Reflect.valueOf(_v)?.__copy__();
                var _ptr = _val?.__copy__();
                if (_ptr.kind() != ((22u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    _s._errorString((("type not a pointer: " : stdgo.GoString) + (_val.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    return;
                };
                {
                    var _v = _ptr.elem()?.__copy__();
                    {
                        final __value__ = _v.kind();
                        if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect.Kind))) {
                            _v.setBool(_s._scanBool(_verb));
                        } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect.Kind))) {
                            _v.setInt(_s._scanInt(_verb, _v.type().bits()));
                        } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect.Kind))) {
                            _v.setUint(_s._scanUint(_verb, _v.type().bits()));
                        } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect.Kind))) {
                            _v.setString(_s._convertString(_verb)?.__copy__());
                        } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect.Kind))) {
                            var _typ = _v.type();
                            if (_typ.elem().kind() != ((8u32 : stdgo._internal.reflect.Reflect.Kind))) {
                                _s._errorString((("can\'t scan type: " : stdgo.GoString) + (_val.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                            };
                            var _str = _s._convertString(_verb)?.__copy__();
                            _v.set(stdgo._internal.reflect.Reflect.makeSlice(_typ, (_str.length), (_str.length))?.__copy__());
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < (_str.length) : Bool), _i++, {
                                    _v.index(_i).setUint((_str[(_i : stdgo.GoInt)] : stdgo.GoUInt64));
                                });
                            };
                        } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect.Kind))) {
                            _s.skipSpace();
                            _s._notEOF();
                            _v.setFloat(_s._convertFloat(_s._floatToken()?.__copy__(), _v.type().bits()));
                        } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect.Kind))) {
                            _v.setComplex(_s._scanComplex(_verb, _v.type().bits()));
                        } else {
                            _s._errorString((("can\'t scan type: " : stdgo.GoString) + (_val.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                        };
                    };
                };
            };
        };
    }
    @:keep
    static public function _scanPercent( _s:stdgo.Ref<T_ss>):Void {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        _s.skipSpace();
        _s._notEOF();
        if (!_s._accept(("%" : stdgo.GoString))) {
            _s._errorString(("missing literal %" : stdgo.GoString));
        };
    }
    @:keep
    static public function _hexString( _s:stdgo.Ref<T_ss>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        _s._notEOF();
        while (true) {
            var __tmp__ = _s._hexByte(), _b:stdgo.GoUInt8 = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                break;
            };
            _s._buf._writeByte(_b);
        };
        if ((_s._buf.length) == ((0 : stdgo.GoInt))) {
            _s._errorString(("no hex data for %x string" : stdgo.GoString));
            return stdgo.Go.str()?.__copy__();
        };
        return (_s._buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _hexByte( _s:stdgo.Ref<T_ss>):{ var _0 : stdgo.GoByte; var _1 : Bool; } {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        var _b = (0 : stdgo.GoUInt8), _ok = false;
        var _rune1 = _s._getRune();
        if (_rune1 == ((-1 : stdgo.GoInt32))) {
            return { _0 : _b, _1 : _ok };
        };
        var __tmp__ = _hexDigit(_rune1), _value1:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _s.unreadRune();
            return { _0 : _b, _1 : _ok };
        };
        var __tmp__ = _hexDigit(_s._mustReadRune()), _value2:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _s._errorString(("illegal hex digit" : stdgo.GoString));
            return { _0 : _b, _1 : _ok };
        };
        return { _0 : (((_value1 << (4i64 : stdgo.GoUInt64) : stdgo.GoInt) | _value2 : stdgo.GoInt) : stdgo.GoByte), _1 : true };
    }
    @:keep
    static public function _quotedString( _s:stdgo.Ref<T_ss>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        _s._notEOF();
        var _quote = _s._getRune();
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _quote;
                    if (__value__ == ((96 : stdgo.GoInt32))) {
                        while (true) {
                            var _r = _s._mustReadRune();
                            if (_r == (_quote)) {
                                break;
                            };
                            _s._buf._writeRune(_r);
                        };
                        return (_s._buf : stdgo.GoString)?.__copy__();
                        break;
                    } else if (__value__ == ((34 : stdgo.GoInt32))) {
                        _s._buf._writeByte((34 : stdgo.GoUInt8));
                        while (true) {
                            var _r = _s._mustReadRune();
                            _s._buf._writeRune(_r);
                            if (_r == ((92 : stdgo.GoInt32))) {
                                _s._buf._writeRune(_s._mustReadRune());
                            } else if (_r == ((34 : stdgo.GoInt32))) {
                                break;
                            };
                        };
                        var __tmp__ = stdgo._internal.strconv.Strconv.unquote((_s._buf : stdgo.GoString)?.__copy__()), _result:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _s._error(_err);
                        };
                        return _result?.__copy__();
                        break;
                    } else {
                        _s._errorString(("expected quoted string" : stdgo.GoString));
                    };
                };
                break;
            };
        };
        return stdgo.Go.str()?.__copy__();
    }
    @:keep
    static public function _convertString( _s:stdgo.Ref<T_ss>, _verb:stdgo.GoRune):stdgo.GoString {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        var _str = ("" : stdgo.GoString);
        if (!_s._okVerb(_verb, ("svqxX" : stdgo.GoString), ("string" : stdgo.GoString))) {
            return stdgo.Go.str()?.__copy__();
        };
        _s.skipSpace();
        _s._notEOF();
        {
            final __value__ = _verb;
            if (__value__ == ((113 : stdgo.GoInt32))) {
                _str = _s._quotedString()?.__copy__();
            } else if (__value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32))) {
                _str = _s._hexString()?.__copy__();
            } else {
                _str = (_s._token(true, _notSpace) : stdgo.GoString)?.__copy__();
            };
        };
        return _str;
    }
    @:keep
    static public function _scanComplex( _s:stdgo.Ref<T_ss>, _verb:stdgo.GoRune, _n:stdgo.GoInt):stdgo.GoComplex128 {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        if (!_s._okVerb(_verb, ("beEfFgGv" : stdgo.GoString), ("complex" : stdgo.GoString))) {
            return ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64));
        };
        _s.skipSpace();
        _s._notEOF();
        var __tmp__ = _s._complexTokens(), _sreal:stdgo.GoString = __tmp__._0, _simag:stdgo.GoString = __tmp__._1;
        var _real = _s._convertFloat(_sreal?.__copy__(), (_n / (2 : stdgo.GoInt) : stdgo.GoInt));
        var _imag = _s._convertFloat(_simag?.__copy__(), (_n / (2 : stdgo.GoInt) : stdgo.GoInt));
        return new stdgo.GoComplex128(_real, _imag);
    }
    @:keep
    static public function _convertFloat( _s:stdgo.Ref<T_ss>, _str:stdgo.GoString, _n:stdgo.GoInt):stdgo.GoFloat64 {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        {
            var _p = _indexRune(_str?.__copy__(), (112 : stdgo.GoInt32));
            if (((_p >= (0 : stdgo.GoInt) : Bool) && !_hasX(_str?.__copy__()) : Bool)) {
                var __tmp__ = stdgo._internal.strconv.Strconv.parseFloat((_str.__slice__(0, _p) : stdgo.GoString)?.__copy__(), _n), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>), _1 : false };
                        }, _e = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            _e.num = _str?.__copy__();
                        };
                    };
                    _s._error(_err);
                };
                var __tmp__ = stdgo._internal.strconv.Strconv.atoi((_str.__slice__((_p + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _m:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>), _1 : false };
                        }, _e = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            _e.num = _str?.__copy__();
                        };
                    };
                    _s._error(_err);
                };
                return stdgo._internal.math.Math.ldexp(_f, _m);
            };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv.parseFloat(_str?.__copy__(), _n), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _s._error(_err);
        };
        return _f;
    }
    @:keep
    static public function _complexTokens( _s:stdgo.Ref<T_ss>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        var _real = ("" : stdgo.GoString), _imag = ("" : stdgo.GoString);
        var _parens = _s._accept(("(" : stdgo.GoString));
        _real = _s._floatToken()?.__copy__();
        _s._buf = (_s._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.fmt.Fmt.T_buffer);
        if (!_s._accept(("+-" : stdgo.GoString))) {
            _s._error(_errComplex);
        };
        var _imagSign = (_s._buf : stdgo.GoString)?.__copy__();
        _imag = _s._floatToken()?.__copy__();
        if (!_s._accept(("i" : stdgo.GoString))) {
            _s._error(_errComplex);
        };
        if ((_parens && !_s._accept((")" : stdgo.GoString)) : Bool)) {
            _s._error(_errComplex);
        };
        return { _0 : _real?.__copy__(), _1 : (_imagSign + _imag?.__copy__() : stdgo.GoString)?.__copy__() };
    }
    @:keep
    static public function _floatToken( _s:stdgo.Ref<T_ss>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        _s._buf = (_s._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.fmt.Fmt.T_buffer);
        if (((_s._accept(("nN" : stdgo.GoString)) && _s._accept(("aA" : stdgo.GoString)) : Bool) && _s._accept(("nN" : stdgo.GoString)) : Bool)) {
            return (_s._buf : stdgo.GoString)?.__copy__();
        };
        _s._accept(("+-" : stdgo.GoString));
        if (((_s._accept(("iI" : stdgo.GoString)) && _s._accept(("nN" : stdgo.GoString)) : Bool) && _s._accept(("fF" : stdgo.GoString)) : Bool)) {
            return (_s._buf : stdgo.GoString)?.__copy__();
        };
        var _digits = ("0123456789_" : stdgo.GoString);
        var _exp = ("eEpP" : stdgo.GoString);
        if ((_s._accept(("0" : stdgo.GoString)) && _s._accept(("xX" : stdgo.GoString)) : Bool)) {
            _digits = ("0123456789aAbBcCdDeEfF_" : stdgo.GoString);
            _exp = ("pP" : stdgo.GoString);
        };
        while (_s._accept(_digits?.__copy__())) {};
        if (_s._accept(("." : stdgo.GoString))) {
            while (_s._accept(_digits?.__copy__())) {};
        };
        if (_s._accept(_exp?.__copy__())) {
            _s._accept(("+-" : stdgo.GoString));
            while (_s._accept(("0123456789_" : stdgo.GoString))) {};
        };
        return (_s._buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _scanUint( _s:stdgo.Ref<T_ss>, _verb:stdgo.GoRune, _bitSize:stdgo.GoInt):stdgo.GoUInt64 {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        if (_verb == ((99 : stdgo.GoInt32))) {
            return (_s._scanRune(_bitSize) : stdgo.GoUInt64);
        };
        _s.skipSpace();
        _s._notEOF();
        var __tmp__ = _s._getBase(_verb), _base:stdgo.GoInt = __tmp__._0, _digits:stdgo.GoString = __tmp__._1;
        var _haveDigits = false;
        if (_verb == ((85 : stdgo.GoInt32))) {
            if ((!_s._consume(("U" : stdgo.GoString), false) || !_s._consume(("+" : stdgo.GoString), false) : Bool)) {
                _s._errorString(("bad unicode format " : stdgo.GoString));
            };
        } else if (_verb == ((118 : stdgo.GoInt32))) {
            {
                var __tmp__ = _s._scanBasePrefix();
                _base = __tmp__._0;
                _digits = __tmp__._1?.__copy__();
                _haveDigits = __tmp__._2;
            };
        };
        var _tok = _s._scanNumber(_digits?.__copy__(), _haveDigits)?.__copy__();
        var __tmp__ = stdgo._internal.strconv.Strconv.parseUint(_tok?.__copy__(), _base, (64 : stdgo.GoInt)), _i:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _s._error(_err);
        };
        var _n = (_bitSize : stdgo.GoUInt);
        var _x = (((_i << (((64u32 : stdgo.GoUInt) - _n : stdgo.GoUInt)) : stdgo.GoUInt64)) >> (((64u32 : stdgo.GoUInt) - _n : stdgo.GoUInt)) : stdgo.GoUInt64);
        if (_x != (_i)) {
            _s._errorString((("unsigned integer overflow on token " : stdgo.GoString) + _tok?.__copy__() : stdgo.GoString)?.__copy__());
        };
        return _i;
    }
    @:keep
    static public function _scanInt( _s:stdgo.Ref<T_ss>, _verb:stdgo.GoRune, _bitSize:stdgo.GoInt):stdgo.GoInt64 {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        if (_verb == ((99 : stdgo.GoInt32))) {
            return _s._scanRune(_bitSize);
        };
        _s.skipSpace();
        _s._notEOF();
        var __tmp__ = _s._getBase(_verb), _base:stdgo.GoInt = __tmp__._0, _digits:stdgo.GoString = __tmp__._1;
        var _haveDigits = false;
        if (_verb == ((85 : stdgo.GoInt32))) {
            if ((!_s._consume(("U" : stdgo.GoString), false) || !_s._consume(("+" : stdgo.GoString), false) : Bool)) {
                _s._errorString(("bad unicode format " : stdgo.GoString));
            };
        } else {
            _s._accept(("+-" : stdgo.GoString));
            if (_verb == ((118 : stdgo.GoInt32))) {
                {
                    var __tmp__ = _s._scanBasePrefix();
                    _base = __tmp__._0;
                    _digits = __tmp__._1?.__copy__();
                    _haveDigits = __tmp__._2;
                };
            };
        };
        var _tok = _s._scanNumber(_digits?.__copy__(), _haveDigits)?.__copy__();
        var __tmp__ = stdgo._internal.strconv.Strconv.parseInt(_tok?.__copy__(), _base, (64 : stdgo.GoInt)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _s._error(_err);
        };
        var _n = (_bitSize : stdgo.GoUInt);
        var _x = (((_i << (((64u32 : stdgo.GoUInt) - _n : stdgo.GoUInt)) : stdgo.GoInt64)) >> (((64u32 : stdgo.GoUInt) - _n : stdgo.GoUInt)) : stdgo.GoInt64);
        if (_x != (_i)) {
            _s._errorString((("integer overflow on token " : stdgo.GoString) + _tok?.__copy__() : stdgo.GoString)?.__copy__());
        };
        return _i;
    }
    @:keep
    static public function _scanBasePrefix( _s:stdgo.Ref<T_ss>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        var _base = (0 : stdgo.GoInt), _digits = ("" : stdgo.GoString), _zeroFound = false;
        if (!_s._peek(("0" : stdgo.GoString))) {
            return { _0 : (0 : stdgo.GoInt), _1 : ("0123456789_" : stdgo.GoString), _2 : false };
        };
        _s._accept(("0" : stdgo.GoString));
        if (_s._peek(("bB" : stdgo.GoString))) {
            _s._consume(("bB" : stdgo.GoString), true);
            return { _0 : (0 : stdgo.GoInt), _1 : ("01_" : stdgo.GoString), _2 : true };
        } else if (_s._peek(("oO" : stdgo.GoString))) {
            _s._consume(("oO" : stdgo.GoString), true);
            return { _0 : (0 : stdgo.GoInt), _1 : ("01234567_" : stdgo.GoString), _2 : true };
        } else if (_s._peek(("xX" : stdgo.GoString))) {
            _s._consume(("xX" : stdgo.GoString), true);
            return { _0 : (0 : stdgo.GoInt), _1 : ("0123456789aAbBcCdDeEfF_" : stdgo.GoString), _2 : true };
        } else {
            return { _0 : (0 : stdgo.GoInt), _1 : ("01234567_" : stdgo.GoString), _2 : true };
        };
    }
    @:keep
    static public function _scanRune( _s:stdgo.Ref<T_ss>, _bitSize:stdgo.GoInt):stdgo.GoInt64 {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        _s._notEOF();
        var _r = _s._getRune();
        var _n = (_bitSize : stdgo.GoUInt);
        var _x = ((((_r : stdgo.GoInt64) << (((64u32 : stdgo.GoUInt) - _n : stdgo.GoUInt)) : stdgo.GoInt64)) >> (((64u32 : stdgo.GoUInt) - _n : stdgo.GoUInt)) : stdgo.GoInt64);
        if (_x != ((_r : stdgo.GoInt64))) {
            _s._errorString((("overflow on character value " : stdgo.GoString) + (_r : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        };
        return (_r : stdgo.GoInt64);
    }
    @:keep
    static public function _scanNumber( _s:stdgo.Ref<T_ss>, _digits:stdgo.GoString, _haveDigits:Bool):stdgo.GoString {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        if (!_haveDigits) {
            _s._notEOF();
            if (!_s._accept(_digits?.__copy__())) {
                _s._errorString(("expected integer" : stdgo.GoString));
            };
        };
        while (_s._accept(_digits?.__copy__())) {};
        return (_s._buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _getBase( _s:stdgo.Ref<T_ss>, _verb:stdgo.GoRune):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; } {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        var _base = (0 : stdgo.GoInt), _digits = ("" : stdgo.GoString);
        _s._okVerb(_verb, ("bdoUxXv" : stdgo.GoString), ("integer" : stdgo.GoString));
        _base = (10 : stdgo.GoInt);
        _digits = ("0123456789" : stdgo.GoString);
        {
            final __value__ = _verb;
            if (__value__ == ((98 : stdgo.GoInt32))) {
                _base = (2 : stdgo.GoInt);
                _digits = ("01" : stdgo.GoString);
            } else if (__value__ == ((111 : stdgo.GoInt32))) {
                _base = (8 : stdgo.GoInt);
                _digits = ("01234567" : stdgo.GoString);
            } else if (__value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32)) || __value__ == ((85 : stdgo.GoInt32))) {
                _base = (16 : stdgo.GoInt);
                _digits = ("0123456789aAbBcCdDeEfF" : stdgo.GoString);
            };
        };
        return { _0 : _base, _1 : _digits };
    }
    @:keep
    static public function _scanBool( _s:stdgo.Ref<T_ss>, _verb:stdgo.GoRune):Bool {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        _s.skipSpace();
        _s._notEOF();
        if (!_s._okVerb(_verb, ("tv" : stdgo.GoString), ("boolean" : stdgo.GoString))) {
            return false;
        };
        {
            final __value__ = _s._getRune();
            if (__value__ == ((48 : stdgo.GoInt32))) {
                return false;
            } else if (__value__ == ((49 : stdgo.GoInt32))) {
                return true;
            } else if (__value__ == ((116 : stdgo.GoInt32)) || __value__ == ((84 : stdgo.GoInt32))) {
                if ((_s._accept(("rR" : stdgo.GoString)) && ((!_s._accept(("uU" : stdgo.GoString)) || !_s._accept(("eE" : stdgo.GoString)) : Bool)) : Bool)) {
                    _s._error(_errBool);
                };
                return true;
            } else if (__value__ == ((102 : stdgo.GoInt32)) || __value__ == ((70 : stdgo.GoInt32))) {
                if ((_s._accept(("aA" : stdgo.GoString)) && (((!_s._accept(("lL" : stdgo.GoString)) || !_s._accept(("sS" : stdgo.GoString)) : Bool) || !_s._accept(("eE" : stdgo.GoString)) : Bool)) : Bool)) {
                    _s._error(_errBool);
                };
                return false;
            };
        };
        return false;
    }
    @:keep
    static public function _okVerb( _s:stdgo.Ref<T_ss>, _verb:stdgo.GoRune, _okVerbs:stdgo.GoString, _typ:stdgo.GoString):Bool {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        for (__0 => _v in _okVerbs) {
            if (_v == (_verb)) {
                return true;
            };
        };
        _s._errorString((((("bad verb \'%" : stdgo.GoString) + (_verb : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("\' for " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _typ?.__copy__() : stdgo.GoString)?.__copy__());
        return false;
    }
    @:keep
    static public function _accept( _s:stdgo.Ref<T_ss>, _ok:stdgo.GoString):Bool {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        return _s._consume(_ok?.__copy__(), true);
    }
    @:keep
    static public function _notEOF( _s:stdgo.Ref<T_ss>):Void {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        {
            var _r = _s._getRune();
            if (_r == ((-1 : stdgo.GoInt32))) {
                throw stdgo.Go.toInterface(stdgo._internal.io.Io.eof);
            };
        };
        _s.unreadRune();
    }
    @:keep
    static public function _peek( _s:stdgo.Ref<T_ss>, _ok:stdgo.GoString):Bool {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        var _r = _s._getRune();
        if (_r != ((-1 : stdgo.GoInt32))) {
            _s.unreadRune();
        };
        return (_indexRune(_ok?.__copy__(), _r) >= (0 : stdgo.GoInt) : Bool);
    }
    @:keep
    static public function _consume( _s:stdgo.Ref<T_ss>, _ok:stdgo.GoString, _accept:Bool):Bool {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        var _r = _s._getRune();
        if (_r == ((-1 : stdgo.GoInt32))) {
            return false;
        };
        if ((_indexRune(_ok?.__copy__(), _r) >= (0 : stdgo.GoInt) : Bool)) {
            if (_accept) {
                _s._buf._writeRune(_r);
            };
            return true;
        };
        if (((_r != (-1 : stdgo.GoInt32)) && _accept : Bool)) {
            _s.unreadRune();
        };
        return false;
    }
    @:keep
    static public function _token( _s:stdgo.Ref<T_ss>, _skipSpace:Bool, _f:stdgo.GoRune -> Bool):stdgo.Slice<stdgo.GoByte> {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        if (_skipSpace) {
            _s.skipSpace();
        };
        while (true) {
            var _r = _s._getRune();
            if (_r == ((-1 : stdgo.GoInt32))) {
                break;
            };
            if (!_f(_r)) {
                _s.unreadRune();
                break;
            };
            _s._buf._writeRune(_r);
        };
        return _s._buf;
    }
    @:keep
    static public function skipSpace( _s:stdgo.Ref<T_ss>):Void {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        while (true) {
            var _r = _s._getRune();
            if (_r == ((-1 : stdgo.GoInt32))) {
                return;
            };
            if (((_r == (13 : stdgo.GoInt32)) && _s._peek(("\n" : stdgo.GoString)) : Bool)) {
                continue;
            };
            if (_r == ((10 : stdgo.GoInt32))) {
                if (_s._ssave._nlIsSpace) {
                    continue;
                };
                _s._errorString(("unexpected newline" : stdgo.GoString));
                return;
            };
            if (!_isSpace(_r)) {
                _s.unreadRune();
                break;
            };
        };
    }
    @:keep
    static public function _free( _s:stdgo.Ref<T_ss>, _old:T_ssave):Void {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        if (_old._validSave) {
            _s._ssave = _old?.__copy__();
            return;
        };
        if ((_s._buf.capacity > (1024 : stdgo.GoInt) : Bool)) {
            return;
        };
        _s._buf = (_s._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.fmt.Fmt.T_buffer);
        _s._rs = (null : stdgo._internal.io.Io.RuneScanner);
        _ssFree.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
    }
    @:keep
    static public function token( _s:stdgo.Ref<T_ss>, _skipSpace:Bool, _f:stdgo.GoRune -> Bool):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        var _tok = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _e = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_e != null) {
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((_e : T_scanError)) : T_scanError), _1 : true };
                                } catch(_) {
                                    { _0 : ({} : stdgo._internal.fmt.Fmt.T_scanError), _1 : false };
                                }, _se = __tmp__._0, _ok = __tmp__._1;
                                if (_ok) {
                                    _err = _se._err;
                                } else {
                                    throw stdgo.Go.toInterface(_e);
                                };
                            };
                        };
                    };
                };
                a();
            });
            if (_f == null) {
                _f = _notSpace;
            };
            _s._buf = (_s._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.fmt.Fmt.T_buffer);
            _tok = _s._token(_skipSpace, _f);
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } = { _0 : _tok, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } = { _0 : _tok, _1 : _err };
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
            final __ret__:{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } = { _0 : _tok, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _errorString( _s:stdgo.Ref<T_ss>, _err:stdgo.GoString):Void {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        throw stdgo.Go.toInterface((new stdgo._internal.fmt.Fmt.T_scanError(stdgo._internal.errors.Errors.new_(_err?.__copy__())) : stdgo._internal.fmt.Fmt.T_scanError));
    }
    @:keep
    static public function _error( _s:stdgo.Ref<T_ss>, _err:stdgo.Error):Void {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        throw stdgo.Go.toInterface((new stdgo._internal.fmt.Fmt.T_scanError(_err) : stdgo._internal.fmt.Fmt.T_scanError));
    }
    @:keep
    static public function unreadRune( _s:stdgo.Ref<T_ss>):stdgo.Error {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        _s._rs.unreadRune();
        _s._atEOF = false;
        _s._count--;
        return (null : stdgo.Error);
    }
    @:keep
    static public function _mustReadRune( _s:stdgo.Ref<T_ss>):stdgo.GoRune {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        var _r = (0 : stdgo.GoInt32);
        _r = _s._getRune();
        if (_r == ((-1 : stdgo.GoInt32))) {
            _s._error(stdgo._internal.io.Io.errUnexpectedEOF);
        };
        return _r;
    }
    @:keep
    static public function _getRune( _s:stdgo.Ref<T_ss>):stdgo.GoRune {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        var _r = (0 : stdgo.GoInt32);
        var __tmp__ = _s.readRune(), _r:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                return (-1 : stdgo.GoInt32);
            };
            _s._error(_err);
        };
        return _r;
    }
    @:keep
    static public function width( _s:stdgo.Ref<T_ss>):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        var _wid = (0 : stdgo.GoInt), _ok = false;
        if (_s._ssave._maxWid == ((1073741824 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoInt), _1 : false };
        };
        return { _0 : _s._ssave._maxWid, _1 : true };
    }
    @:keep
    static public function readRune( _s:stdgo.Ref<T_ss>):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        var _r = (0 : stdgo.GoInt32), _size = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_s._atEOF || (_s._count >= _s._ssave._argLimit : Bool) : Bool)) {
            _err = stdgo._internal.io.Io.eof;
            return { _0 : _r, _1 : _size, _2 : _err };
        };
        {
            var __tmp__ = _s._rs.readRune();
            _r = __tmp__._0;
            _size = __tmp__._1;
            _err = __tmp__._2;
        };
        if (_err == null) {
            _s._count++;
            if ((_s._ssave._nlIsEnd && (_r == (10 : stdgo.GoInt32)) : Bool)) {
                _s._atEOF = true;
            };
        } else if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
            _s._atEOF = true;
        };
        return { _0 : _r, _1 : _size, _2 : _err };
    }
    @:keep
    static public function read( _s:stdgo.Ref<T_ss>, _buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<T_ss> = _s;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors.new_(("ScanState\'s Read should not be called. Use ReadRune" : stdgo.GoString)) };
    }
}
class T_readRune_asInterface {
    @:keep
    public dynamic function unreadRune():stdgo.Error return __self__.value.unreadRune();
    @:keep
    public dynamic function readRune():{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value.readRune();
    @:keep
    public dynamic function _readByte():{ var _0 : stdgo.GoByte; var _1 : stdgo.Error; } return __self__.value._readByte();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_readRune>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt.Fmt.T_readRune_asInterface) class T_readRune_static_extension {
    @:keep
    static public function unreadRune( _r:stdgo.Ref<T_readRune>):stdgo.Error {
        @:recv var _r:stdgo.Ref<T_readRune> = _r;
        if ((_r._peekRune >= (0 : stdgo.GoInt32) : Bool)) {
            return stdgo._internal.errors.Errors.new_(("fmt: scanning called UnreadRune with no rune available" : stdgo.GoString));
        };
        _r._peekRune = (-1 ^ _r._peekRune);
        return (null : stdgo.Error);
    }
    @:keep
    static public function readRune( _r:stdgo.Ref<T_readRune>):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_readRune> = _r;
        var _rr = (0 : stdgo.GoInt32), _size = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_r._peekRune >= (0 : stdgo.GoInt32) : Bool)) {
            _rr = _r._peekRune;
            _r._peekRune = (-1 ^ _r._peekRune);
            _size = stdgo._internal.unicode.utf8.Utf8.runeLen(_rr);
            return { _0 : _rr, _1 : _size, _2 : _err };
        };
        {
            var __tmp__ = _r._readByte();
            _r._buf[(0 : stdgo.GoInt)] = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _rr, _1 : _size, _2 : _err };
        };
        if ((_r._buf[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
            _rr = (_r._buf[(0 : stdgo.GoInt)] : stdgo.GoRune);
            _size = (1 : stdgo.GoInt);
            _r._peekRune = (-1 ^ _rr);
            return { _0 : _rr, _1 : _size, _2 : _err };
        };
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            _n = (1 : stdgo.GoInt);
            stdgo.Go.cfor(!stdgo._internal.unicode.utf8.Utf8.fullRune((_r._buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)), _n++, {
                {
                    var __tmp__ = _r._readByte();
                    _r._buf[(_n : stdgo.GoInt)] = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                        _err = (null : stdgo.Error);
                        break;
                    };
                    return { _0 : _rr, _1 : _size, _2 : _err };
                };
            });
        };
        {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune((_r._buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
            _rr = __tmp__._0;
            _size = __tmp__._1;
        };
        if ((_size < _n : Bool)) {
            stdgo.Go.copySlice((_r._pendBuf.__slice__(_r._pending) : stdgo.Slice<stdgo.GoUInt8>), (_r._buf.__slice__(_size, _n) : stdgo.Slice<stdgo.GoUInt8>));
            _r._pending = (_r._pending + ((_n - _size : stdgo.GoInt)) : stdgo.GoInt);
        };
        _r._peekRune = (-1 ^ _rr);
        return { _0 : _rr, _1 : _size, _2 : _err };
    }
    @:keep
    static public function _readByte( _r:stdgo.Ref<T_readRune>):{ var _0 : stdgo.GoByte; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_readRune> = _r;
        var _b = (0 : stdgo.GoUInt8), _err = (null : stdgo.Error);
        if ((_r._pending > (0 : stdgo.GoInt) : Bool)) {
            _b = _r._pendBuf[(0 : stdgo.GoInt)];
            stdgo.Go.copySlice((_r._pendBuf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_r._pendBuf.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _r._pending--;
            return { _0 : _b, _1 : _err };
        };
        var __tmp__ = stdgo._internal.io.Io.readFull(_r._reader, (_r._pendBuf.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n != ((1 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoUInt8), _1 : _err };
        };
        return { _0 : _r._pendBuf[(0 : stdgo.GoInt)], _1 : _err };
    }
}
class T_buffer_asInterface {
    @:keep
    public dynamic function _writeRune(_r:stdgo.GoRune):Void __self__.value._writeRune(_r);
    @:keep
    public dynamic function _writeByte(_c:stdgo.GoByte):Void __self__.value._writeByte(_c);
    @:keep
    public dynamic function _writeString(_s:stdgo.GoString):Void __self__.value._writeString(_s);
    @:keep
    public dynamic function _write(_p:stdgo.Slice<stdgo.GoByte>):Void __self__.value._write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_buffer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt.Fmt.T_buffer_asInterface) class T_buffer_static_extension {
    @:keep
    static public function _writeRune( _bp:stdgo.Ref<T_buffer>, _r:stdgo.GoRune):Void {
        @:recv var _bp:stdgo.Ref<T_buffer> = _bp;
        (_bp : stdgo._internal.fmt.Fmt.T_buffer).__setData__(stdgo._internal.unicode.utf8.Utf8.appendRune((_bp : stdgo._internal.fmt.Fmt.T_buffer), _r));
    }
    @:keep
    static public function _writeByte( _b:stdgo.Ref<T_buffer>, _c:stdgo.GoByte):Void {
        @:recv var _b:stdgo.Ref<T_buffer> = _b;
        (_b : stdgo._internal.fmt.Fmt.T_buffer).__setData__(((_b : stdgo._internal.fmt.Fmt.T_buffer).__append__(_c)));
    }
    @:keep
    static public function _writeString( _b:stdgo.Ref<T_buffer>, _s:stdgo.GoString):Void {
        @:recv var _b:stdgo.Ref<T_buffer> = _b;
        (_b : stdgo._internal.fmt.Fmt.T_buffer).__setData__(((_b : stdgo._internal.fmt.Fmt.T_buffer).__append__(...(_s : Array<stdgo.GoUInt8>))));
    }
    @:keep
    static public function _write( _b:stdgo.Ref<T_buffer>, _p:stdgo.Slice<stdgo.GoByte>):Void {
        @:recv var _b:stdgo.Ref<T_buffer> = _b;
        (_b : stdgo._internal.fmt.Fmt.T_buffer).__setData__(((_b : stdgo._internal.fmt.Fmt.T_buffer).__append__(...(_p : Array<stdgo.GoUInt8>))));
    }
}
class T_stringReader_asInterface {
    @:keep
    @:pointer
    public dynamic function read(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(__self__, _b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_stringReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt.Fmt.T_stringReader_asInterface) class T_stringReader_static_extension {
    @:keep
    @:pointer
    static public function read(____:T_stringReader,  _r:stdgo.Pointer<T_stringReader>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _n = stdgo.Go.copySlice(_b, _r.value);
        _r.value = ((_r.value).__slice__(_n) : stdgo._internal.fmt.Fmt.T_stringReader);
        if (_n == ((0 : stdgo.GoInt))) {
            _err = stdgo._internal.io.Io.eof;
        };
        return { _0 : _n, _1 : _err };
    }
}
