package stdgo._internal.math.big;
@:keep @:allow(stdgo._internal.math.big.Big.Int__asInterface) class Int__static_extension {
    @:keep
    @:tdfield
    static public function _scaleDenom( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _f:stdgo._internal.math.big.Big_t_nat.T_nat):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        if ((_f.length) == ((0 : stdgo.GoInt))) {
            @:check2r _z.set(_x);
            return;
        };
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._mul((@:checkr _x ?? throw "null pointer dereference")._abs, _f);
        (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg;
    }
    @:keep
    @:tdfield
    static public function probablyPrime( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _n:stdgo.GoInt):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("negative n for ProbablyPrime" : stdgo.GoString));
        };
        if (((@:checkr _x ?? throw "null pointer dereference")._neg || ((@:checkr _x ?? throw "null pointer dereference")._abs.length == (0 : stdgo.GoInt)) : Bool)) {
            return false;
        };
        {};
        var _w = ((@:checkr _x ?? throw "null pointer dereference")._abs[(0 : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
        if ((((@:checkr _x ?? throw "null pointer dereference")._abs.length == (1 : stdgo.GoInt)) && (_w < (64u32 : stdgo._internal.math.big.Big_word.Word) : Bool) : Bool)) {
            return ((2891462833508853932i64 : stdgo.GoUInt64) & (((1i64 : stdgo.GoUInt64) << _w : stdgo.GoUInt64)) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64));
        };
        if ((_w & (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            return false;
        };
        {};
        {};
        var __0:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
var _rB = __1, _rA = __0;
        {
            final __value__ = (32 : stdgo.GoInt);
            if (__value__ == ((32 : stdgo.GoInt))) {
                _rA = ((@:checkr _x ?? throw "null pointer dereference")._abs._modW((-167749201u32 : stdgo._internal.math.big.Big_word.Word)) : stdgo.GoUInt32);
                _rB = ((@:checkr _x ?? throw "null pointer dereference")._abs._modW((-346889229u32 : stdgo._internal.math.big.Big_word.Word)) : stdgo.GoUInt32);
            } else if (__value__ == ((64 : stdgo.GoInt))) {
                var _r = ((@:checkr _x ?? throw "null pointer dereference")._abs._modW((820596253u32 : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_word.Word);
                _rA = ((_r % (-167749201u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) : stdgo.GoUInt32);
                _rB = ((_r % (-346889229u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) : stdgo.GoUInt32);
            } else {
                throw stdgo.Go.toInterface(("math/big: invalid word size" : stdgo.GoString));
            };
        };
        if ((((((((((((((((_rA % (3u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) || (_rA % (5u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rA % (7u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rA % (11u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rA % (13u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rA % (17u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rA % (19u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rA % (23u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rA % (37u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rB % (29u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rB % (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rB % (41u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rB % (43u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rB % (47u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || ((_rB % (53u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == (0u32 : stdgo.GoUInt32)) : Bool)) {
            return false;
        };
        return ((@:checkr _x ?? throw "null pointer dereference")._abs._probablyPrimeMillerRabin((_n + (1 : stdgo.GoInt) : stdgo.GoInt), true) && (@:checkr _x ?? throw "null pointer dereference")._abs._probablyPrimeLucas() : Bool);
    }
    @:keep
    @:tdfield
    static public function unmarshalJSON( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        if ((_text : stdgo.GoString) == (("null" : stdgo.GoString))) {
            return (null : stdgo.Error);
        };
        return @:check2r _z.unmarshalText(_text);
    }
    @:keep
    @:tdfield
    static public function marshalJSON( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        if ((_x == null || (_x : Dynamic).__nil__)) {
            return { _0 : ((("null" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
        };
        return { _0 : (@:checkr _x ?? throw "null pointer dereference")._abs._itoa((@:checkr _x ?? throw "null pointer dereference")._neg, (10 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function unmarshalText( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        {
            var __tmp__ = @:check2r _z._setFromScanner(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_text)), (0 : stdgo.GoInt)), __8:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("math/big: cannot unmarshal %q into a *big.Int" : stdgo.GoString), stdgo.Go.toInterface(_text));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalText( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        var _text = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        if ((_x == null || (_x : Dynamic).__nil__)) {
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : ((("<nil>" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
                _text = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (@:checkr _x ?? throw "null pointer dereference")._abs._itoa((@:checkr _x ?? throw "null pointer dereference")._neg, (10 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
            _text = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function gobDecode( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        if ((_buf.length) == ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = (new stdgo._internal.math.big.Big_int_.Int_() : stdgo._internal.math.big.Big_int_.Int_);
                var x = (_z : stdgo._internal.math.big.Big_int_.Int_);
                x._neg = __tmp__?._neg;
                x._abs = __tmp__?._abs;
            };
            return (null : stdgo.Error);
        };
        var _b = (_buf[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        if ((_b >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8) != ((1 : stdgo.GoUInt8))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("Int.GobDecode: encoding version %d not supported" : stdgo.GoString), stdgo.Go.toInterface((_b >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8)));
        };
        (@:checkr _z ?? throw "null pointer dereference")._neg = (_b & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._setBytes((_buf.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function gobEncode( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        if ((_x == null || (_x : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>(((1 : stdgo.GoInt) + (((@:checkr _x ?? throw "null pointer dereference")._abs.length) * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _i = ((@:checkr _x ?? throw "null pointer dereference")._abs._bytes(_buf) - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _b = (2 : stdgo.GoUInt8);
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            _b = (_b | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        _buf[(_i : stdgo.GoInt)] = _b;
        return { _0 : (_buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function scan( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _s:stdgo._internal.fmt.Fmt_scanstate.ScanState, _ch:stdgo.GoInt32):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        _s.skipSpace();
        var _base = (0 : stdgo.GoInt);
        {
            final __value__ = _ch;
            if (__value__ == ((98 : stdgo.GoInt32))) {
                _base = (2 : stdgo.GoInt);
            } else if (__value__ == ((111 : stdgo.GoInt32))) {
                _base = (8 : stdgo.GoInt);
            } else if (__value__ == ((100 : stdgo.GoInt32))) {
                _base = (10 : stdgo.GoInt);
            } else if (__value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32))) {
                _base = (16 : stdgo.GoInt);
            } else if (__value__ == ((115 : stdgo.GoInt32)) || __value__ == ((118 : stdgo.GoInt32))) {} else {
                return stdgo._internal.errors.Errors_new_.new_(("Int.Scan: invalid verb" : stdgo.GoString));
            };
        };
        var __tmp__ = @:check2r _z._scan(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_t_bytereader.T_byteReader(_s) : stdgo._internal.math.big.Big_t_bytereader.T_byteReader)), _base), __8:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __9:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        return _err;
    }
    @:keep
    @:tdfield
    static public function _scan( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _r:stdgo._internal.io.Io_bytescanner.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var __tmp__ = stdgo._internal.math.big.Big__scansign._scanSign(_r), _neg:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : (0 : stdgo.GoInt), _2 : _err };
        };
        {
            var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._abs._scan(_r, _base, false);
            (@:checkr _z ?? throw "null pointer dereference")._abs = @:tmpset0 __tmp__._0;
            _base = @:tmpset0 __tmp__._1;
            _err = @:tmpset0 __tmp__._3;
        };
        if (_err != null) {
            return { _0 : null, _1 : _base, _2 : _err };
        };
        (@:checkr _z ?? throw "null pointer dereference")._neg = ((((@:checkr _z ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool) && _neg : Bool);
        return { _0 : _z, _1 : _base, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function format( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _s:stdgo._internal.fmt.Fmt_state.State, _ch:stdgo.GoInt32):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        var _base:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            final __value__ = _ch;
            if (__value__ == ((98 : stdgo.GoInt32))) {
                _base = (2 : stdgo.GoInt);
            } else if (__value__ == ((111 : stdgo.GoInt32)) || __value__ == ((79 : stdgo.GoInt32))) {
                _base = (8 : stdgo.GoInt);
            } else if (__value__ == ((100 : stdgo.GoInt32)) || __value__ == ((115 : stdgo.GoInt32)) || __value__ == ((118 : stdgo.GoInt32))) {
                _base = (10 : stdgo.GoInt);
            } else if (__value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32))) {
                _base = (16 : stdgo.GoInt);
            } else {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_s, ("%%!%c(big.Int=%s)" : stdgo.GoString), stdgo.Go.toInterface(_ch), stdgo.Go.toInterface((@:check2r _x.string() : stdgo.GoString)));
                return;
            };
        };
        if ((_x == null || (_x : Dynamic).__nil__)) {
            stdgo._internal.fmt.Fmt_fprint.fprint(_s, stdgo.Go.toInterface(("<nil>" : stdgo.GoString)));
            return;
        };
        var _sign = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            _sign = ("-" : stdgo.GoString);
        } else if (_s.flag((43 : stdgo.GoInt))) {
            _sign = ("+" : stdgo.GoString);
        } else if (_s.flag((32 : stdgo.GoInt))) {
            _sign = (" " : stdgo.GoString);
        };
        var _prefix = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_s.flag((35 : stdgo.GoInt))) {
            {
                final __value__ = _ch;
                if (__value__ == ((98 : stdgo.GoInt32))) {
                    _prefix = ("0b" : stdgo.GoString);
                } else if (__value__ == ((111 : stdgo.GoInt32))) {
                    _prefix = ("0" : stdgo.GoString);
                } else if (__value__ == ((120 : stdgo.GoInt32))) {
                    _prefix = ("0x" : stdgo.GoString);
                } else if (__value__ == ((88 : stdgo.GoInt32))) {
                    _prefix = ("0X" : stdgo.GoString);
                };
            };
        };
        if (_ch == ((79 : stdgo.GoInt32))) {
            _prefix = ("0o" : stdgo.GoString);
        };
        var _digits = (@:checkr _x ?? throw "null pointer dereference")._abs._utoa(_base);
        if (_ch == ((88 : stdgo.GoInt32))) {
            for (_i => _d in _digits) {
                if ((((97 : stdgo.GoUInt8) <= _d : Bool) && (_d <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _digits[(_i : stdgo.GoInt)] = ((65 : stdgo.GoUInt8) + ((_d - (97 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
            };
        };
        var _left:stdgo.GoInt = (0 : stdgo.GoInt);
        var _zeros:stdgo.GoInt = (0 : stdgo.GoInt);
        var _right:stdgo.GoInt = (0 : stdgo.GoInt);
        var __tmp__ = _s.precision(), _precision:stdgo.GoInt = __tmp__._0, _precisionSet:Bool = __tmp__._1;
        if (_precisionSet) {
            if (((_digits.length) < _precision : Bool)) {
                _zeros = (_precision - (_digits.length) : stdgo.GoInt);
            } else if ((((_digits.length) == ((1 : stdgo.GoInt)) && _digits[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (_precision == (0 : stdgo.GoInt)) : Bool)) {
                return;
            };
        };
        var _length = ((((_sign.length) + (_prefix.length) : stdgo.GoInt) + _zeros : stdgo.GoInt) + (_digits.length) : stdgo.GoInt);
        {
            var __tmp__ = _s.width(), _width:stdgo.GoInt = __tmp__._0, _widthSet:Bool = __tmp__._1;
            if ((_widthSet && (_length < _width : Bool) : Bool)) {
                {
                    var _d = (_width - _length : stdgo.GoInt);
                    if (_s.flag((45 : stdgo.GoInt))) {
                        _right = _d;
                    } else if ((_s.flag((48 : stdgo.GoInt)) && !_precisionSet : Bool)) {
                        _zeros = _d;
                    } else {
                        _left = _d;
                    };
                };
            };
        };
        stdgo._internal.math.big.Big__writemultiple._writeMultiple(_s, (" " : stdgo.GoString), _left);
        stdgo._internal.math.big.Big__writemultiple._writeMultiple(_s, _sign?.__copy__(), (1 : stdgo.GoInt));
        stdgo._internal.math.big.Big__writemultiple._writeMultiple(_s, _prefix?.__copy__(), (1 : stdgo.GoInt));
        stdgo._internal.math.big.Big__writemultiple._writeMultiple(_s, ("0" : stdgo.GoString), _zeros);
        _s.write(_digits);
        stdgo._internal.math.big.Big__writemultiple._writeMultiple(_s, (" " : stdgo.GoString), _right);
    }
    @:keep
    @:tdfield
    static public function string( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        return @:check2r _x.text((10 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function append( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _buf:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        if ((_x == null || (_x : Dynamic).__nil__)) {
            return (_buf.__append__(...((("<nil>" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        };
        return (_buf.__append__(...((@:checkr _x ?? throw "null pointer dereference")._abs._itoa((@:checkr _x ?? throw "null pointer dereference")._neg, _base) : Array<stdgo.GoUInt8>)));
    }
    @:keep
    @:tdfield
    static public function text( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _base:stdgo.GoInt):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        if ((_x == null || (_x : Dynamic).__nil__)) {
            return ("<nil>" : stdgo.GoString);
        };
        return ((@:checkr _x ?? throw "null pointer dereference")._abs._itoa((@:checkr _x ?? throw "null pointer dereference")._neg, _base) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function sqrt( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            throw stdgo.Go.toInterface(("square root of negative number" : stdgo.GoString));
        };
        (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._sqrt((@:checkr _x ?? throw "null pointer dereference")._abs);
        return _z;
    }
    @:keep
    @:tdfield
    static public function not( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._sub((@:checkr _x ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._add((@:checkr _x ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne);
        (@:checkr _z ?? throw "null pointer dereference")._neg = true;
        return _z;
    }
    @:keep
    @:tdfield
    static public function xor( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        if ((@:checkr _x ?? throw "null pointer dereference")._neg == ((@:checkr _y ?? throw "null pointer dereference")._neg)) {
            if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                var _x1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _x ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
                var _y1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _y ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
                (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._xor(_x1, _y1);
                (@:checkr _z ?? throw "null pointer dereference")._neg = false;
                return _z;
            };
            (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._xor((@:checkr _x ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            return _z;
        };
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            {
                final __tmp__0 = _y;
                final __tmp__1 = _x;
                _x = __tmp__0;
                _y = __tmp__1;
            };
        };
        var _y1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _y ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._add((@:checkr _z ?? throw "null pointer dereference")._abs._xor((@:checkr _x ?? throw "null pointer dereference")._abs, _y1), stdgo._internal.math.big.Big__natone._natOne);
        (@:checkr _z ?? throw "null pointer dereference")._neg = true;
        return _z;
    }
    @:keep
    @:tdfield
    static public function or( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        if ((@:checkr _x ?? throw "null pointer dereference")._neg == ((@:checkr _y ?? throw "null pointer dereference")._neg)) {
            if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                var _x1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _x ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
                var _y1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _y ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
                (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._add((@:checkr _z ?? throw "null pointer dereference")._abs._and(_x1, _y1), stdgo._internal.math.big.Big__natone._natOne);
                (@:checkr _z ?? throw "null pointer dereference")._neg = true;
                return _z;
            };
            (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._or((@:checkr _x ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            return _z;
        };
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            {
                final __tmp__0 = _y;
                final __tmp__1 = _x;
                _x = __tmp__0;
                _y = __tmp__1;
            };
        };
        var _y1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _y ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._add((@:checkr _z ?? throw "null pointer dereference")._abs._andNot(_y1, (@:checkr _x ?? throw "null pointer dereference")._abs), stdgo._internal.math.big.Big__natone._natOne);
        (@:checkr _z ?? throw "null pointer dereference")._neg = true;
        return _z;
    }
    @:keep
    @:tdfield
    static public function andNot( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        if ((@:checkr _x ?? throw "null pointer dereference")._neg == ((@:checkr _y ?? throw "null pointer dereference")._neg)) {
            if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                var _x1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _x ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
                var _y1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _y ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
                (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._andNot(_y1, _x1);
                (@:checkr _z ?? throw "null pointer dereference")._neg = false;
                return _z;
            };
            (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._andNot((@:checkr _x ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            return _z;
        };
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            var _x1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _x ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
            (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._add((@:checkr _z ?? throw "null pointer dereference")._abs._or(_x1, (@:checkr _y ?? throw "null pointer dereference")._abs), stdgo._internal.math.big.Big__natone._natOne);
            (@:checkr _z ?? throw "null pointer dereference")._neg = true;
            return _z;
        };
        var _y1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _y ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._and((@:checkr _x ?? throw "null pointer dereference")._abs, _y1);
        (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        return _z;
    }
    @:keep
    @:tdfield
    static public function and( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        if ((@:checkr _x ?? throw "null pointer dereference")._neg == ((@:checkr _y ?? throw "null pointer dereference")._neg)) {
            if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                var _x1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _x ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
                var _y1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _y ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
                (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._add((@:checkr _z ?? throw "null pointer dereference")._abs._or(_x1, _y1), stdgo._internal.math.big.Big__natone._natOne);
                (@:checkr _z ?? throw "null pointer dereference")._neg = true;
                return _z;
            };
            (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._and((@:checkr _x ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            return _z;
        };
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            {
                final __tmp__0 = _y;
                final __tmp__1 = _x;
                _x = __tmp__0;
                _y = __tmp__1;
            };
        };
        var _y1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _y ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._andNot((@:checkr _x ?? throw "null pointer dereference")._abs, _y1);
        (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        return _z;
    }
    @:keep
    @:tdfield
    static public function setBit( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _i:stdgo.GoInt, _b:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("negative bit index" : stdgo.GoString));
        };
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            var _t = ((@:checkr _z ?? throw "null pointer dereference")._abs._sub((@:checkr _x ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
            _t = _t._setBit(_t, (_i : stdgo.GoUInt), (_b ^ (1u32 : stdgo.GoUInt) : stdgo.GoUInt));
            (@:checkr _z ?? throw "null pointer dereference")._abs = _t._add(_t, stdgo._internal.math.big.Big__natone._natOne);
            (@:checkr _z ?? throw "null pointer dereference")._neg = (((@:checkr _z ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool);
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._setBit((@:checkr _x ?? throw "null pointer dereference")._abs, (_i : stdgo.GoUInt), _b);
        (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        return _z;
    }
    @:keep
    @:tdfield
    static public function bit( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _i:stdgo.GoInt):stdgo.GoUInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        if (_i == ((0 : stdgo.GoInt))) {
            if ((((@:checkr _x ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool)) {
                return (((@:checkr _x ?? throw "null pointer dereference")._abs[(0 : stdgo.GoInt)] & (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) : stdgo.GoUInt);
            };
            return (0u32 : stdgo.GoUInt);
        };
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("negative bit index" : stdgo.GoString));
        };
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            var _t = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _x ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
            return (_t._bit((_i : stdgo.GoUInt)) ^ (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
        };
        return (@:checkr _x ?? throw "null pointer dereference")._abs._bit((_i : stdgo.GoUInt));
    }
    @:keep
    @:tdfield
    static public function rsh( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            var _t = ((@:checkr _z ?? throw "null pointer dereference")._abs._sub((@:checkr _x ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
            _t = _t._shr(_t, _n);
            (@:checkr _z ?? throw "null pointer dereference")._abs = _t._add(_t, stdgo._internal.math.big.Big__natone._natOne);
            (@:checkr _z ?? throw "null pointer dereference")._neg = true;
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._shr((@:checkr _x ?? throw "null pointer dereference")._abs, _n);
        (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        return _z;
    }
    @:keep
    @:tdfield
    static public function lsh( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._shl((@:checkr _x ?? throw "null pointer dereference")._abs, _n);
        (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg;
        return _z;
    }
    @:keep
    @:tdfield
    static public function modSqrt( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _p:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = stdgo._internal.math.big.Big_jacobi.jacobi(_x, _p);
                    if (__value__ == ((-1 : stdgo.GoInt))) {
                        return null;
                        break;
                    } else if (__value__ == ((0 : stdgo.GoInt))) {
                        return @:check2r _z.setInt64((0i64 : stdgo.GoInt64));
                        break;
                    } else if (__value__ == ((1 : stdgo.GoInt))) {
                        break;
                        break;
                    };
                };
                break;
            };
        };
        if (((@:checkr _x ?? throw "null pointer dereference")._neg || (@:check2r _x.cmp(_p) >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            _x = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mod(_x, _p);
        };
        if (((@:checkr _p ?? throw "null pointer dereference")._abs[(0 : stdgo.GoInt)] % (4u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == ((3u32 : stdgo._internal.math.big.Big_word.Word))) {
            return @:check2r _z._modSqrt3Mod4Prime(_x, _p);
        } else if (((@:checkr _p ?? throw "null pointer dereference")._abs[(0 : stdgo.GoInt)] % (8u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == ((5u32 : stdgo._internal.math.big.Big_word.Word))) {
            return @:check2r _z._modSqrt5Mod8Prime(_x, _p);
        } else {
            return @:check2r _z._modSqrtTonelliShanks(_x, _p);
        };
    }
    @:keep
    @:tdfield
    static public function _modSqrtTonelliShanks( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _p:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var _s:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        @:check2 _s.sub(_p, stdgo._internal.math.big.Big__intone._intOne);
        var _e = (_s._abs._trailingZeroBits() : stdgo.GoUInt);
        @:check2 _s.rsh((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _e);
        var _n:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        @:check2 _n.setInt64((2i64 : stdgo.GoInt64));
        while (stdgo._internal.math.big.Big_jacobi.jacobi((stdgo.Go.setRef(_n) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _p) != ((-1 : stdgo.GoInt))) {
            @:check2 _n.add((stdgo.Go.setRef(_n) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), stdgo._internal.math.big.Big__intone._intOne);
        };
        var __0:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), __1:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), __2:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), __3:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
var _t = __3, _g = __2, _b = __1, _y = __0;
        @:check2 _y.add((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), stdgo._internal.math.big.Big__intone._intOne);
        @:check2 _y.rsh((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (1u32 : stdgo.GoUInt));
        @:check2 _y.exp(_x, (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _p);
        @:check2 _b.exp(_x, (stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _p);
        @:check2 _g.exp((stdgo.Go.setRef(_n) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _p);
        var _r = (_e : stdgo.GoUInt);
        while (true) {
            var _m:stdgo.GoUInt = (0 : stdgo.GoUInt);
            @:check2 _t.set((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
            while (@:check2 _t.cmp(stdgo._internal.math.big.Big__intone._intOne) != ((0 : stdgo.GoInt))) {
                @:check2r @:check2 _t.mul((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)).mod((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _p);
                _m++;
            };
            if (_m == ((0u32 : stdgo.GoUInt))) {
                return @:check2r _z.set((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
            };
            @:check2r @:check2r @:check2 _t.setInt64((0i64 : stdgo.GoInt64)).setBit((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (((_r - _m : stdgo.GoUInt) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt), (1u32 : stdgo.GoUInt)).exp((stdgo.Go.setRef(_g) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _p);
            @:check2r @:check2 _g.mul((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)).mod((stdgo.Go.setRef(_g) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _p);
            @:check2r @:check2 _y.mul((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)).mod((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _p);
            @:check2r @:check2 _b.mul((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_g) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)).mod((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _p);
            _r = _m;
        };
    }
    @:keep
    @:tdfield
    static public function _modSqrt5Mod8Prime( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _p:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var _e = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).rsh(_p, (3u32 : stdgo.GoUInt));
        var _tx = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).lsh(_x, (1u32 : stdgo.GoUInt));
        var _alpha = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).exp(_tx, _e, _p);
        var _beta = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_alpha, _alpha);
        @:check2r _beta.mod(_beta, _p);
        @:check2r _beta.mul(_beta, _tx);
        @:check2r _beta.mod(_beta, _p);
        @:check2r _beta.sub(_beta, stdgo._internal.math.big.Big__intone._intOne);
        @:check2r _beta.mul(_beta, _x);
        @:check2r _beta.mod(_beta, _p);
        @:check2r _beta.mul(_beta, _alpha);
        @:check2r _z.mod(_beta, _p);
        return _z;
    }
    @:keep
    @:tdfield
    static public function _modSqrt3Mod4Prime( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _p:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var _e = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).add(_p, stdgo._internal.math.big.Big__intone._intOne);
        @:check2r _e.rsh(_e, (2u32 : stdgo.GoUInt));
        @:check2r _z.exp(_x, _e, _p);
        return _z;
    }
    @:keep
    @:tdfield
    static public function modInverse( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _g:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _n:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        if ((@:checkr _n ?? throw "null pointer dereference")._neg) {
            var _n2:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
            _n = @:check2 _n2.neg(_n);
        };
        if ((@:checkr _g ?? throw "null pointer dereference")._neg) {
            var _g2:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
            _g = @:check2 _g2.mod(_g, _n);
        };
        var __0:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), __1:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
var _x = __1, _d = __0;
        @:check2 _d.gCD((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), null, _g, _n);
        if (@:check2 _d.cmp(stdgo._internal.math.big.Big__intone._intOne) != ((0 : stdgo.GoInt))) {
            return null;
        };
        if (_x._neg) {
            @:check2r _z.add((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _n);
        } else {
            @:check2r _z.set((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        };
        return _z;
    }
    @:keep
    @:tdfield
    static public function rand( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _rnd:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _n:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        if (((@:checkr _n ?? throw "null pointer dereference")._neg || ((@:checkr _n ?? throw "null pointer dereference")._abs.length == (0 : stdgo.GoInt)) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            (@:checkr _z ?? throw "null pointer dereference")._abs = null;
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._random(_rnd, (@:checkr _n ?? throw "null pointer dereference")._abs, (@:checkr _n ?? throw "null pointer dereference")._abs._bitLen());
        return _z;
    }
    @:keep
    @:tdfield
    static public function _lehmerGCD( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var __0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), __1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), __2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), __3:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
var ub = __3, ua = __2, b = __1, a = __0;
        a = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).abs(_a);
        b = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).abs(_b);
        var _extended = ((_x != null && ((_x : Dynamic).__nil__ == null || !(_x : Dynamic).__nil__)) || (_y != null && ((_y : Dynamic).__nil__ == null || !(_y : Dynamic).__nil__)) : Bool);
        if (_extended) {
            ua = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setInt64((1i64 : stdgo.GoInt64));
            ub = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        };
        var _q = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        if (((@:checkr a ?? throw "null pointer dereference")._abs._cmp((@:checkr b ?? throw "null pointer dereference")._abs) < (0 : stdgo.GoInt) : Bool)) {
            {
                final __tmp__0 = b;
                final __tmp__1 = a;
                a = __tmp__0;
                b = __tmp__1;
            };
            {
                final __tmp__0 = ua;
                final __tmp__1 = ub;
                ub = __tmp__0;
                ua = __tmp__1;
            };
        };
        while ((((@:checkr b ?? throw "null pointer dereference")._abs.length) > (1 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.math.big.Big__lehmersimulate._lehmerSimulate(a, b), _u0:stdgo._internal.math.big.Big_word.Word = __tmp__._0, _u1:stdgo._internal.math.big.Big_word.Word = __tmp__._1, _v0:stdgo._internal.math.big.Big_word.Word = __tmp__._2, _v1:stdgo._internal.math.big.Big_word.Word = __tmp__._3, _even:Bool = __tmp__._4;
            if (_v0 != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                stdgo._internal.math.big.Big__lehmerupdate._lehmerUpdate(a,
b,
_q,
_r,
_s,
_t,
_u0,
_u1,
_v0,
_v1,
_even);
                if (_extended) {
                    stdgo._internal.math.big.Big__lehmerupdate._lehmerUpdate(ua,
ub,
_q,
_r,
_s,
_t,
_u0,
_u1,
_v0,
_v1,
_even);
                };
            } else {
                stdgo._internal.math.big.Big__euclidupdate._euclidUpdate(a, b, ua, ub, _q, _r, _s, _t, _extended);
            };
        };
        if ((((@:checkr b ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool)) {
            if ((((@:checkr a ?? throw "null pointer dereference")._abs.length) > (1 : stdgo.GoInt) : Bool)) {
                stdgo._internal.math.big.Big__euclidupdate._euclidUpdate(a, b, ua, ub, _q, _r, _s, _t, _extended);
            };
            if ((((@:checkr b ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool)) {
                var __0 = ((@:checkr a ?? throw "null pointer dereference")._abs[(0 : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word), __1 = ((@:checkr b ?? throw "null pointer dereference")._abs[(0 : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
var _bWord = __1, _aWord = __0;
                if (_extended) {
                    var __0:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), __1:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), __2:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), __3:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
var _vb = __3, _va = __2, _ub = __1, _ua = __0;
                    {
                        final __tmp__0 = (1u32 : stdgo._internal.math.big.Big_word.Word);
                        final __tmp__1 = (0u32 : stdgo._internal.math.big.Big_word.Word);
                        _ua = __tmp__0;
                        _ub = __tmp__1;
                    };
                    {
                        final __tmp__0 = (0u32 : stdgo._internal.math.big.Big_word.Word);
                        final __tmp__1 = (1u32 : stdgo._internal.math.big.Big_word.Word);
                        _va = __tmp__0;
                        _vb = __tmp__1;
                    };
                    var _even = (true : Bool);
                    while (_bWord != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                        var __0 = (_aWord / _bWord : stdgo._internal.math.big.Big_word.Word), __1 = (_aWord % _bWord : stdgo._internal.math.big.Big_word.Word);
var _r = __1, _q = __0;
                        {
                            final __tmp__0 = _bWord;
                            final __tmp__1 = _r;
                            _aWord = __tmp__0;
                            _bWord = __tmp__1;
                        };
                        {
                            final __tmp__0 = _ub;
                            final __tmp__1 = (_ua + (_q * _ub : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
                            _ua = __tmp__0;
                            _ub = __tmp__1;
                        };
                        {
                            final __tmp__0 = _vb;
                            final __tmp__1 = (_va + (_q * _vb : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
                            _va = __tmp__0;
                            _vb = __tmp__1;
                        };
                        _even = !_even;
                    };
                    (@:checkr _t ?? throw "null pointer dereference")._abs = (@:checkr _t ?? throw "null pointer dereference")._abs._setWord(_ua);
                    (@:checkr _s ?? throw "null pointer dereference")._abs = (@:checkr _s ?? throw "null pointer dereference")._abs._setWord(_va);
                    (@:checkr _t ?? throw "null pointer dereference")._neg = !_even;
                    (@:checkr _s ?? throw "null pointer dereference")._neg = _even;
                    @:check2r _t.mul(ua, _t);
                    @:check2r _s.mul(ub, _s);
                    @:check2r ua.add(_t, _s);
                } else {
                    while (_bWord != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                        {
                            final __tmp__0 = _bWord;
                            final __tmp__1 = (_aWord % _bWord : stdgo._internal.math.big.Big_word.Word);
                            _aWord = __tmp__0;
                            _bWord = __tmp__1;
                        };
                    };
                };
                (@:checkr a ?? throw "null pointer dereference")._abs[(0 : stdgo.GoInt)] = _aWord;
            };
        };
        var _negA = ((@:checkr _a ?? throw "null pointer dereference")._neg : Bool);
        if ((_y != null && ((_y : Dynamic).__nil__ == null || !(_y : Dynamic).__nil__))) {
            if (_y == (_b)) {
                @:check2r b.set(_b);
            } else {
                b = _b;
            };
            @:check2r _y.mul(_a, ua);
            if (_negA) {
                (@:checkr _y ?? throw "null pointer dereference")._neg = !(@:checkr _y ?? throw "null pointer dereference")._neg;
            };
            @:check2r _y.sub(a, _y);
            @:check2r _y.div(_y, b);
        };
        if ((_x != null && ((_x : Dynamic).__nil__ == null || !(_x : Dynamic).__nil__))) {
            {
                var __tmp__ = (ua : stdgo._internal.math.big.Big_int_.Int_)?.__copy__();
                var x = (_x : stdgo._internal.math.big.Big_int_.Int_);
                x._neg = __tmp__?._neg;
                x._abs = __tmp__?._abs;
            };
            if (_negA) {
                (@:checkr _x ?? throw "null pointer dereference")._neg = !(@:checkr _x ?? throw "null pointer dereference")._neg;
            };
        };
        {
            var __tmp__ = (a : stdgo._internal.math.big.Big_int_.Int_)?.__copy__();
            var x = (_z : stdgo._internal.math.big.Big_int_.Int_);
            x._neg = __tmp__?._neg;
            x._abs = __tmp__?._abs;
        };
        return _z;
    }
    @:keep
    @:tdfield
    static public function gCD( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        if ((((@:checkr _a ?? throw "null pointer dereference")._abs.length == (0 : stdgo.GoInt)) || ((@:checkr _b ?? throw "null pointer dereference")._abs.length == (0 : stdgo.GoInt)) : Bool)) {
            var __0 = ((@:checkr _a ?? throw "null pointer dereference")._abs.length : stdgo.GoInt), __1 = ((@:checkr _b ?? throw "null pointer dereference")._abs.length : stdgo.GoInt), __2 = ((@:checkr _a ?? throw "null pointer dereference")._neg : Bool), __3 = ((@:checkr _b ?? throw "null pointer dereference")._neg : Bool);
var _negB = __3, _negA = __2, _lenB = __1, _lenA = __0;
            if (_lenA == ((0 : stdgo.GoInt))) {
                @:check2r _z.set(_b);
            } else {
                @:check2r _z.set(_a);
            };
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            if ((_x != null && ((_x : Dynamic).__nil__ == null || !(_x : Dynamic).__nil__))) {
                if (_lenA == ((0 : stdgo.GoInt))) {
                    @:check2r _x.setUint64((0i64 : stdgo.GoUInt64));
                } else {
                    @:check2r _x.setUint64((1i64 : stdgo.GoUInt64));
                    (@:checkr _x ?? throw "null pointer dereference")._neg = _negA;
                };
            };
            if ((_y != null && ((_y : Dynamic).__nil__ == null || !(_y : Dynamic).__nil__))) {
                if (_lenB == ((0 : stdgo.GoInt))) {
                    @:check2r _y.setUint64((0i64 : stdgo.GoUInt64));
                } else {
                    @:check2r _y.setUint64((1i64 : stdgo.GoUInt64));
                    (@:checkr _y ?? throw "null pointer dereference")._neg = _negB;
                };
            };
            return _z;
        };
        return @:check2r _z._lehmerGCD(_x, _y, _a, _b);
    }
    @:keep
    @:tdfield
    static public function _exp( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _slow:Bool):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var _xWords = ((@:checkr _x ?? throw "null pointer dereference")._abs : stdgo._internal.math.big.Big_t_nat.T_nat);
        if ((@:checkr _y ?? throw "null pointer dereference")._neg) {
            if (((_m == null || (_m : Dynamic).__nil__) || ((@:checkr _m ?? throw "null pointer dereference")._abs.length == (0 : stdgo.GoInt)) : Bool)) {
                return @:check2r _z.setInt64((1i64 : stdgo.GoInt64));
            };
            var _inverse = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).modInverse(_x, _m);
            if ((_inverse == null || (_inverse : Dynamic).__nil__)) {
                return null;
            };
            _xWords = (@:checkr _inverse ?? throw "null pointer dereference")._abs;
        };
        var _yWords = ((@:checkr _y ?? throw "null pointer dereference")._abs : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _mWords:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        if ((_m != null && ((_m : Dynamic).__nil__ == null || !(_m : Dynamic).__nil__))) {
            if (((_z == _m) || stdgo._internal.math.big.Big__alias._alias((@:checkr _z ?? throw "null pointer dereference")._abs, (@:checkr _m ?? throw "null pointer dereference")._abs) : Bool)) {
                _m = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_m);
            };
            _mWords = (@:checkr _m ?? throw "null pointer dereference")._abs;
        };
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._expNN(_xWords, _yWords, _mWords, _slow);
        (@:checkr _z ?? throw "null pointer dereference")._neg = ((((((@:checkr _z ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool) && (@:checkr _x ?? throw "null pointer dereference")._neg : Bool) && ((_yWords.length) > (0 : stdgo.GoInt) : Bool) : Bool) && ((_yWords[(0 : stdgo.GoInt)] & (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == (1u32 : stdgo._internal.math.big.Big_word.Word)) : Bool);
        if (((@:checkr _z ?? throw "null pointer dereference")._neg && ((_mWords.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._sub(_mWords, (@:checkr _z ?? throw "null pointer dereference")._abs);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        };
        return _z;
    }
    @:keep
    @:tdfield
    static public function _expSlow( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        return @:check2r _z._exp(_x, _y, _m, true);
    }
    @:keep
    @:tdfield
    static public function exp( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        return @:check2r _z._exp(_x, _y, _m, false);
    }
    @:keep
    @:tdfield
    static public function trailingZeroBits( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.GoUInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        return (@:checkr _x ?? throw "null pointer dereference")._abs._trailingZeroBits();
    }
    @:keep
    @:tdfield
    static public function bitLen( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        return (@:checkr _x ?? throw "null pointer dereference")._abs._bitLen();
    }
    @:keep
    @:tdfield
    static public function fillBytes( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        for (_i => _ in _buf) {
            _buf[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
        (@:checkr _x ?? throw "null pointer dereference")._abs._bytes(_buf);
        return _buf;
    }
    @:keep
    @:tdfield
    static public function bytes( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((((@:checkr _x ?? throw "null pointer dereference")._abs.length) * (4 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        return (_buf.__slice__((@:checkr _x ?? throw "null pointer dereference")._abs._bytes(_buf)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function setBytes( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._setBytes(_buf);
        (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        return _z;
    }
    @:keep
    @:tdfield
    static public function _setFromScanner( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _r:stdgo._internal.io.Io_bytescanner.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : Bool; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        {
            var __tmp__ = @:check2r _z._scan(_r, _base), __8:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __9:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : null, _1 : false };
            };
        };
        {
            var __tmp__ = _r.readByte(), __10:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                return { _0 : null, _1 : false };
            };
        };
        return { _0 : _z, _1 : true };
    }
    @:keep
    @:tdfield
    static public function setString( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _s:stdgo.GoString, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : Bool; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        return @:check2r _z._setFromScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(_s?.__copy__())), _base);
    }
    @:keep
    @:tdfield
    static public function float64( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.GoFloat64; var _1 : stdgo._internal.math.big.Big_accuracy.Accuracy; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        var _n = ((@:checkr _x ?? throw "null pointer dereference")._abs._bitLen() : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoFloat64), _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
        };
        if (((_n <= (53 : stdgo.GoInt) : Bool) || ((_n < (64 : stdgo.GoInt) : Bool) && ((_n - ((@:checkr _x ?? throw "null pointer dereference")._abs._trailingZeroBits() : stdgo.GoInt) : stdgo.GoInt) <= (53 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
            var _f = (stdgo._internal.math.big.Big__low64._low64((@:checkr _x ?? throw "null pointer dereference")._abs) : stdgo.GoFloat64);
            if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                _f = -_f;
            };
            return { _0 : _f, _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
        };
        return @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setInt(_x).float64();
    }
    @:keep
    @:tdfield
    static public function isUint64( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        return (!(@:checkr _x ?? throw "null pointer dereference")._neg && (((@:checkr _x ?? throw "null pointer dereference")._abs.length) <= (2 : stdgo.GoInt) : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function isInt64( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        if ((((@:checkr _x ?? throw "null pointer dereference")._abs.length) <= (2 : stdgo.GoInt) : Bool)) {
            var _w = (stdgo._internal.math.big.Big__low64._low64((@:checkr _x ?? throw "null pointer dereference")._abs) : stdgo.GoInt64);
            return ((_w >= (0i64 : stdgo.GoInt64) : Bool) || ((@:checkr _x ?? throw "null pointer dereference")._neg && _w == (-_w) : Bool) : Bool);
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function uint64( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.GoUInt64 {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        return stdgo._internal.math.big.Big__low64._low64((@:checkr _x ?? throw "null pointer dereference")._abs);
    }
    @:keep
    @:tdfield
    static public function int64( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.GoInt64 {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        var _v = (stdgo._internal.math.big.Big__low64._low64((@:checkr _x ?? throw "null pointer dereference")._abs) : stdgo.GoInt64);
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            _v = -_v;
        };
        return _v;
    }
    @:keep
    @:tdfield
    static public function cmpAbs( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        return (@:checkr _x ?? throw "null pointer dereference")._abs._cmp((@:checkr _y ?? throw "null pointer dereference")._abs);
    }
    @:keep
    @:tdfield
    static public function cmp( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        var _r = (0 : stdgo.GoInt);
        if (_x == (_y)) {} else if ((@:checkr _x ?? throw "null pointer dereference")._neg == ((@:checkr _y ?? throw "null pointer dereference")._neg)) {
            _r = (@:checkr _x ?? throw "null pointer dereference")._abs._cmp((@:checkr _y ?? throw "null pointer dereference")._abs);
            if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                _r = -_r;
            };
        } else if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            _r = (-1 : stdgo.GoInt);
        } else {
            _r = (1 : stdgo.GoInt);
        };
        return _r;
    }
    @:keep
    @:tdfield
    static public function divMod( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var _y0 = _y;
        if (((_z == _y) || stdgo._internal.math.big.Big__alias._alias((@:checkr _z ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs) : Bool)) {
            _y0 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_y);
        };
        @:check2r _z.quoRem(_x, _y, _m);
        if ((@:checkr _m ?? throw "null pointer dereference")._neg) {
            if ((@:checkr _y0 ?? throw "null pointer dereference")._neg) {
                @:check2r _z.add(_z, stdgo._internal.math.big.Big__intone._intOne);
                @:check2r _m.sub(_m, _y0);
            } else {
                @:check2r _z.sub(_z, stdgo._internal.math.big.Big__intone._intOne);
                @:check2r _m.add(_m, _y0);
            };
        };
        return { _0 : _z, _1 : _m };
    }
    @:keep
    @:tdfield
    static public function mod( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var _y0 = _y;
        if (((_z == _y) || stdgo._internal.math.big.Big__alias._alias((@:checkr _z ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs) : Bool)) {
            _y0 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_y);
        };
        var _q:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        @:check2 _q.quoRem(_x, _y, _z);
        if ((@:checkr _z ?? throw "null pointer dereference")._neg) {
            if ((@:checkr _y0 ?? throw "null pointer dereference")._neg) {
                @:check2r _z.sub(_z, _y0);
            } else {
                @:check2r _z.add(_z, _y0);
            };
        };
        return _z;
    }
    @:keep
    @:tdfield
    static public function div( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var _y_neg = ((@:checkr _y ?? throw "null pointer dereference")._neg : Bool);
        var _r:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        @:check2r _z.quoRem(_x, _y, (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        if (_r._neg) {
            if (_y_neg) {
                @:check2r _z.add(_z, stdgo._internal.math.big.Big__intone._intOne);
            } else {
                @:check2r _z.sub(_z, stdgo._internal.math.big.Big__intone._intOne);
            };
        };
        return _z;
    }
    @:keep
    @:tdfield
    static public function quoRem( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _r:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        {
            var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._abs._div((@:checkr _r ?? throw "null pointer dereference")._abs, (@:checkr _x ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs);
            (@:checkr _z ?? throw "null pointer dereference")._abs = @:tmpset0 __tmp__._0;
            (@:checkr _r ?? throw "null pointer dereference")._abs = @:tmpset0 __tmp__._1;
        };
        {
            final __tmp__0 = ((((@:checkr _z ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _x ?? throw "null pointer dereference")._neg != (@:checkr _y ?? throw "null pointer dereference")._neg) : Bool);
            final __tmp__1 = ((((@:checkr _r ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool) && (@:checkr _x ?? throw "null pointer dereference")._neg : Bool);
            (@:checkr _z ?? throw "null pointer dereference")._neg = __tmp__0;
            (@:checkr _r ?? throw "null pointer dereference")._neg = __tmp__1;
        };
        return { _0 : _z, _1 : _r };
    }
    @:keep
    @:tdfield
    static public function rem( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        {
            var __tmp__ = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._div((@:checkr _z ?? throw "null pointer dereference")._abs, (@:checkr _x ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs);
            (@:checkr _z ?? throw "null pointer dereference")._abs = @:tmpset0 __tmp__._1;
        };
        (@:checkr _z ?? throw "null pointer dereference")._neg = ((((@:checkr _z ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool) && (@:checkr _x ?? throw "null pointer dereference")._neg : Bool);
        return _z;
    }
    @:keep
    @:tdfield
    static public function quo( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        {
            var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._abs._div(null, (@:checkr _x ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs);
            (@:checkr _z ?? throw "null pointer dereference")._abs = @:tmpset0 __tmp__._0;
        };
        (@:checkr _z ?? throw "null pointer dereference")._neg = ((((@:checkr _z ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _x ?? throw "null pointer dereference")._neg != (@:checkr _y ?? throw "null pointer dereference")._neg) : Bool);
        return _z;
    }
    @:keep
    @:tdfield
    static public function binomial( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        if ((_k > _n : Bool)) {
            return @:check2r _z.setInt64((0i64 : stdgo.GoInt64));
        };
        if ((_k > (_n - _k : stdgo.GoInt64) : Bool)) {
            _k = (_n - _k : stdgo.GoInt64);
        };
        var __0:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), __1:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), __2:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), __3:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
var _t = __3, _i = __2, k = __1, n = __0;
        @:check2 n.setInt64(_n);
        @:check2 k.setInt64(_k);
        @:check2r _z.set(stdgo._internal.math.big.Big__intone._intOne);
        while ((@:check2 _i.cmp((stdgo.Go.setRef(k) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)) < (0 : stdgo.GoInt) : Bool)) {
            @:check2r _z.mul(_z, @:check2 _t.sub((stdgo.Go.setRef(n) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_i) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)));
            @:check2 _i.add((stdgo.Go.setRef(_i) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), stdgo._internal.math.big.Big__intone._intOne);
            @:check2r _z.quo(_z, (stdgo.Go.setRef(_i) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        };
        return _z;
    }
    @:keep
    @:tdfield
    static public function mulRange( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _a:stdgo.GoInt64, _b:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        if ((_a > _b : Bool)) {
            return @:check2r _z.setInt64((1i64 : stdgo.GoInt64));
        } else if (((_a <= (0i64 : stdgo.GoInt64) : Bool) && (_b >= (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
            return @:check2r _z.setInt64((0i64 : stdgo.GoInt64));
        };
        var _neg = (false : Bool);
        if ((_a < (0i64 : stdgo.GoInt64) : Bool)) {
            _neg = (((_b - _a : stdgo.GoInt64)) & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64));
            {
                final __tmp__0 = -_b;
                final __tmp__1 = -_a;
                _a = __tmp__0;
                _b = __tmp__1;
            };
        };
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._mulRange((_a : stdgo.GoUInt64), (_b : stdgo.GoUInt64));
        (@:checkr _z ?? throw "null pointer dereference")._neg = _neg;
        return _z;
    }
    @:keep
    @:tdfield
    static public function mul( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        if (_x == (_y)) {
            (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._sqr((@:checkr _x ?? throw "null pointer dereference")._abs);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._mul((@:checkr _x ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs);
        (@:checkr _z ?? throw "null pointer dereference")._neg = ((((@:checkr _z ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _x ?? throw "null pointer dereference")._neg != (@:checkr _y ?? throw "null pointer dereference")._neg) : Bool);
        return _z;
    }
    @:keep
    @:tdfield
    static public function sub( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var _neg = ((@:checkr _x ?? throw "null pointer dereference")._neg : Bool);
        if ((@:checkr _x ?? throw "null pointer dereference")._neg != ((@:checkr _y ?? throw "null pointer dereference")._neg)) {
            (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._add((@:checkr _x ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs);
        } else {
            if (((@:checkr _x ?? throw "null pointer dereference")._abs._cmp((@:checkr _y ?? throw "null pointer dereference")._abs) >= (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._sub((@:checkr _x ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs);
            } else {
                _neg = !_neg;
                (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._sub((@:checkr _y ?? throw "null pointer dereference")._abs, (@:checkr _x ?? throw "null pointer dereference")._abs);
            };
        };
        (@:checkr _z ?? throw "null pointer dereference")._neg = ((((@:checkr _z ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool) && _neg : Bool);
        return _z;
    }
    @:keep
    @:tdfield
    static public function add( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var _neg = ((@:checkr _x ?? throw "null pointer dereference")._neg : Bool);
        if ((@:checkr _x ?? throw "null pointer dereference")._neg == ((@:checkr _y ?? throw "null pointer dereference")._neg)) {
            (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._add((@:checkr _x ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs);
        } else {
            if (((@:checkr _x ?? throw "null pointer dereference")._abs._cmp((@:checkr _y ?? throw "null pointer dereference")._abs) >= (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._sub((@:checkr _x ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs);
            } else {
                _neg = !_neg;
                (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._sub((@:checkr _y ?? throw "null pointer dereference")._abs, (@:checkr _x ?? throw "null pointer dereference")._abs);
            };
        };
        (@:checkr _z ?? throw "null pointer dereference")._neg = ((((@:checkr _z ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool) && _neg : Bool);
        return _z;
    }
    @:keep
    @:tdfield
    static public function neg( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        @:check2r _z.set(_x);
        (@:checkr _z ?? throw "null pointer dereference")._neg = ((((@:checkr _z ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool) && !(@:checkr _z ?? throw "null pointer dereference")._neg : Bool);
        return _z;
    }
    @:keep
    @:tdfield
    static public function abs( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        @:check2r _z.set(_x);
        (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        return _z;
    }
    @:keep
    @:tdfield
    static public function setBits( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _abs:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        (@:checkr _z ?? throw "null pointer dereference")._abs = (_abs : stdgo._internal.math.big.Big_t_nat.T_nat)._norm();
        (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        return _z;
    }
    @:keep
    @:tdfield
    static public function bits( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Slice<stdgo._internal.math.big.Big_word.Word> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        return (@:checkr _x ?? throw "null pointer dereference")._abs;
    }
    @:keep
    @:tdfield
    static public function set( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        if (_z != (_x)) {
            (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._set((@:checkr _x ?? throw "null pointer dereference")._abs);
            (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg;
        };
        return _z;
    }
    @:keep
    @:tdfield
    static public function setUint64( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._setUint64(_x);
        (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        return _z;
    }
    @:keep
    @:tdfield
    static public function setInt64( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var _neg = (false : Bool);
        if ((_x < (0i64 : stdgo.GoInt64) : Bool)) {
            _neg = true;
            _x = -_x;
        };
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._setUint64((_x : stdgo.GoUInt64));
        (@:checkr _z ?? throw "null pointer dereference")._neg = _neg;
        return _z;
    }
    @:keep
    @:tdfield
    static public function sign( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        if (((@:checkr _x ?? throw "null pointer dereference")._abs.length) == ((0 : stdgo.GoInt))) {
            return (0 : stdgo.GoInt);
        };
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            return (-1 : stdgo.GoInt);
        };
        return (1 : stdgo.GoInt);
    }
}
