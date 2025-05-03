package stdgo._internal.math.big;
@:keep @:allow(stdgo._internal.math.big.Big.Int__asInterface) class Int__static_extension {
    @:keep
    @:tdfield
    static public function _scaleDenom( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _f:stdgo._internal.math.big.Big_t_nat.T_nat):Void {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat.go#L471"
        if ((_f.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat.go#L472"
            _z.set(_x);
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat.go#L473"
            return;
        };
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._mul((@:checkr _x ?? throw "null pointer dereference")._abs, _f);
        (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg;
    }
    @:keep
    @:tdfield
    static public function probablyPrime( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _n:stdgo.GoInt):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/prime.go#L36"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/prime.go#L37"
            throw stdgo.Go.toInterface(("negative n for ProbablyPrime" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/prime.go#L39"
        if (((@:checkr _x ?? throw "null pointer dereference")._neg || ((@:checkr _x ?? throw "null pointer dereference")._abs.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/prime.go#L40"
            return false;
        };
        {};
        var _w = ((@:checkr _x ?? throw "null pointer dereference")._abs[(0 : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
        //"file:///home/runner/.go/go1.21.3/src/math/big/prime.go#L49"
        if ((((@:checkr _x ?? throw "null pointer dereference")._abs.length == (1 : stdgo.GoInt)) && (_w < (64u32 : stdgo._internal.math.big.Big_word.Word) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/prime.go#L50"
            return ((2891462833508853932i64 : stdgo.GoUInt64) & (((1i64 : stdgo.GoUInt64) << _w : stdgo.GoUInt64)) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/prime.go#L53"
        if ((_w & (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/prime.go#L54"
            return false;
        };
        {};
        {};
        var _rA:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _rB:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/math/big/prime.go#L61"
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
                //"file:///home/runner/.go/go1.21.3/src/math/big/prime.go#L70"
                throw stdgo.Go.toInterface(("math/big: invalid word size" : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/prime.go#L73"
        if ((((((((((((((((_rA % (3u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) || (_rA % (5u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rA % (7u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rA % (11u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rA % (13u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rA % (17u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rA % (19u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rA % (23u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rA % (37u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rB % (29u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rB % (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rB % (41u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rB % (43u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || (_rB % (47u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32)) : Bool) || ((_rB % (53u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == (0u32 : stdgo.GoUInt32)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/prime.go#L75"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/prime.go#L78"
        return ((@:checkr _x ?? throw "null pointer dereference")._abs._probablyPrimeMillerRabin((_n + (1 : stdgo.GoInt) : stdgo.GoInt), true) && (@:checkr _x ?? throw "null pointer dereference")._abs._probablyPrimeLucas() : Bool);
    }
    @:keep
    @:tdfield
    static public function unmarshalJSON( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh.go#L79"
        if ((_text : stdgo.GoString) == (("null" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh.go#L80"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh.go#L82"
        return _z.unmarshalText(_text);
    }
    @:keep
    @:tdfield
    static public function marshalJSON( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh.go#L70"
        if (({
            final value = _x;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh.go#L71"
            return { _0 : ((("null" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh.go#L73"
        return { _0 : (@:checkr _x ?? throw "null pointer dereference")._abs._itoa((@:checkr _x ?? throw "null pointer dereference")._neg, (10 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function unmarshalText( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh.go#L58"
        {
            var __tmp__ = _z._setFromScanner(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_text)), (0 : stdgo.GoInt)), __8:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh.go#L59"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("math/big: cannot unmarshal %q into a *big.Int" : stdgo.GoString), stdgo.Go.toInterface(_text));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh.go#L61"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalText( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        var _text = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh.go#L50"
        if (({
            final value = _x;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh.go#L51"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : ((("<nil>" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
                _text = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh.go#L53"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (@:checkr _x ?? throw "null pointer dereference")._abs._itoa((@:checkr _x ?? throw "null pointer dereference")._neg, (10 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
            _text = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function gobDecode( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh.go#L34"
        if ((_buf.length) == ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = (new stdgo._internal.math.big.Big_int_.Int_() : stdgo._internal.math.big.Big_int_.Int_);
                var x = (_z : stdgo._internal.math.big.Big_int_.Int_);
                x._neg = __tmp__?._neg;
                x._abs = __tmp__?._abs;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh.go#L37"
            return (null : stdgo.Error);
        };
        var _b = (_buf[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh.go#L40"
        if ((_b >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8) != ((1 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh.go#L41"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("Int.GobDecode: encoding version %d not supported" : stdgo.GoString), stdgo.Go.toInterface((_b >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8)));
        };
        (@:checkr _z ?? throw "null pointer dereference")._neg = (_b & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._setBytes((_buf.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh.go#L45"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function gobEncode( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh.go#L19"
        if (({
            final value = _x;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh.go#L20"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>(((1 : stdgo.GoInt) + (((@:checkr _x ?? throw "null pointer dereference")._abs.length) * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _i = ((@:checkr _x ?? throw "null pointer dereference")._abs._bytes(_buf) - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _b = (2 : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh.go#L25"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            _b = (_b | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        _buf[(_i : stdgo.GoInt)] = _b;
        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh.go#L29"
        return { _0 : (_buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function scan( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _s:stdgo._internal.fmt.Fmt_scanstate.ScanState, _ch:stdgo.GoInt32):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L237"
        _s.skipSpace();
        var _base = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L239"
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
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L251"
                return stdgo._internal.errors.Errors_new_.new_(("Int.Scan: invalid verb" : stdgo.GoString));
            };
        };
        var __tmp__ = _z._scan(stdgo.Go.asInterface((new stdgo._internal.math.big.Big_t_bytereader.T_byteReader(_s) : stdgo._internal.math.big.Big_t_bytereader.T_byteReader)), _base), __8:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __9:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L254"
        return _err;
    }
    @:keep
    @:tdfield
    static public function _scan( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _r:stdgo._internal.io.Io_bytescanner.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var __tmp__ = stdgo._internal.math.big.Big__scansign._scanSign(_r), _neg:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L183"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L184"
            return { _0 : null, _1 : (0 : stdgo.GoInt), _2 : _err };
        };
        {
            var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._abs._scan(_r, _base, false);
            (@:checkr _z ?? throw "null pointer dereference")._abs = @:tmpset0 __tmp__._0;
            _base = @:tmpset0 __tmp__._1;
            _err = @:tmpset0 __tmp__._3;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L189"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L190"
            return { _0 : null, _1 : _base, _2 : _err };
        };
        (@:checkr _z ?? throw "null pointer dereference")._neg = ((((@:checkr _z ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool) && _neg : Bool);
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L194"
        return { _0 : _z, _1 : _base, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function format( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _s:stdgo._internal.fmt.Fmt_state.State, _ch:stdgo.GoInt32):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        var _base:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L69"
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
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L80"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_s, ("%%!%c(big.Int=%s)" : stdgo.GoString), stdgo.Go.toInterface(_ch), stdgo.Go.toInterface((_x.string() : stdgo.GoString)));
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L81"
                return;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L84"
        if (({
            final value = _x;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L85"
            stdgo._internal.fmt.Fmt_fprint.fprint(_s, stdgo.Go.toInterface(("<nil>" : stdgo.GoString)));
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L86"
            return;
        };
        var _sign = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L91"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            _sign = ("-" : stdgo.GoString);
        } else if (_s.flag((43 : stdgo.GoInt))) {
            _sign = ("+" : stdgo.GoString);
        } else if (_s.flag((32 : stdgo.GoInt))) {
            _sign = (" " : stdgo.GoString);
        };
        var _prefix = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L102"
        if (_s.flag((35 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L103"
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
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L114"
        if (_ch == ((79 : stdgo.GoInt32))) {
            _prefix = ("0o" : stdgo.GoString);
        };
        var _digits = (@:checkr _x ?? throw "null pointer dereference")._abs._utoa(_base);
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L119"
        if (_ch == ((88 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L121"
            for (_i => _d in _digits) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L122"
                if ((((97 : stdgo.GoUInt8) <= _d : Bool) && (_d <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _digits[(_i : stdgo.GoInt)] = ((65 : stdgo.GoUInt8) + ((_d - (97 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
            };
        };
        var _left:stdgo.GoInt = (0 : stdgo.GoInt);
        var _zeros:stdgo.GoInt = (0 : stdgo.GoInt);
        var _right:stdgo.GoInt = (0 : stdgo.GoInt);
        var __tmp__ = _s.precision(), _precision:stdgo.GoInt = __tmp__._0, _precisionSet:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L135"
        if (_precisionSet) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L136"
            if (((_digits.length) < _precision : Bool)) {
                _zeros = (_precision - (_digits.length) : stdgo.GoInt);
            } else if ((((_digits.length) == ((1 : stdgo.GoInt)) && _digits[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (_precision == (0 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L140"
                return;
            };
        };
        var _length = ((((_sign.length) + (_prefix.length) : stdgo.GoInt) + _zeros : stdgo.GoInt) + (_digits.length) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L146"
        {
            var __tmp__ = _s.width(), _width:stdgo.GoInt = __tmp__._0, _widthSet:Bool = __tmp__._1;
            if ((_widthSet && (_length < _width : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L147"
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
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L161"
        stdgo._internal.math.big.Big__writemultiple._writeMultiple(_s, (" " : stdgo.GoString), _left);
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L162"
        stdgo._internal.math.big.Big__writemultiple._writeMultiple(_s, _sign?.__copy__(), (1 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L163"
        stdgo._internal.math.big.Big__writemultiple._writeMultiple(_s, _prefix?.__copy__(), (1 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L164"
        stdgo._internal.math.big.Big__writemultiple._writeMultiple(_s, ("0" : stdgo.GoString), _zeros);
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L165"
        _s.write(_digits);
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L166"
        stdgo._internal.math.big.Big__writemultiple._writeMultiple(_s, (" " : stdgo.GoString), _right);
    }
    @:keep
    @:tdfield
    static public function string( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L40"
        return _x.text((10 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function append( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _buf:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L31"
        if (({
            final value = _x;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L32"
            return (_buf.__append__(...((("<nil>" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L34"
        return (_buf.__append__(...((@:checkr _x ?? throw "null pointer dereference")._abs._itoa((@:checkr _x ?? throw "null pointer dereference")._neg, _base) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function text( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _base:stdgo.GoInt):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L22"
        if (({
            final value = _x;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L23"
            return ("<nil>" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L25"
        return ((@:checkr _x ?? throw "null pointer dereference")._abs._itoa((@:checkr _x ?? throw "null pointer dereference")._neg, _base) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function sqrt( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1315"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1316"
            throw stdgo.Go.toInterface(("square root of negative number" : stdgo.GoString));
        };
        (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._sqrt((@:checkr _x ?? throw "null pointer dereference")._abs);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1320"
        return _z;
    }
    @:keep
    @:tdfield
    static public function not( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1299"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._sub((@:checkr _x ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1303"
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._add((@:checkr _x ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne);
        (@:checkr _z ?? throw "null pointer dereference")._neg = true;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1309"
        return _z;
    }
    @:keep
    @:tdfield
    static public function xor( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1269"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg == ((@:checkr _y ?? throw "null pointer dereference")._neg)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1270"
            if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                var _x1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _x ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
                var _y1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _y ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
                (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._xor(_x1, _y1);
                (@:checkr _z ?? throw "null pointer dereference")._neg = false;
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1276"
                return _z;
            };
            (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._xor((@:checkr _x ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1282"
            return _z;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1286"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            {
                final __tmp__0 = _y;
                final __tmp__1 = _x;
                _x = @:binopAssign __tmp__0;
                _y = @:binopAssign __tmp__1;
            };
        };
        var _y1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _y ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._add((@:checkr _z ?? throw "null pointer dereference")._abs._xor((@:checkr _x ?? throw "null pointer dereference")._abs, _y1), stdgo._internal.math.big.Big__natone._natOne);
        (@:checkr _z ?? throw "null pointer dereference")._neg = true;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1294"
        return _z;
    }
    @:keep
    @:tdfield
    static public function or( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1239"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg == ((@:checkr _y ?? throw "null pointer dereference")._neg)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1240"
            if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                var _x1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _x ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
                var _y1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _y ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
                (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._add((@:checkr _z ?? throw "null pointer dereference")._abs._and(_x1, _y1), stdgo._internal.math.big.Big__natone._natOne);
                (@:checkr _z ?? throw "null pointer dereference")._neg = true;
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1246"
                return _z;
            };
            (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._or((@:checkr _x ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1252"
            return _z;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1256"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            {
                final __tmp__0 = _y;
                final __tmp__1 = _x;
                _x = @:binopAssign __tmp__0;
                _y = @:binopAssign __tmp__1;
            };
        };
        var _y1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _y ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._add((@:checkr _z ?? throw "null pointer dereference")._abs._andNot(_y1, (@:checkr _x ?? throw "null pointer dereference")._abs), stdgo._internal.math.big.Big__natone._natOne);
        (@:checkr _z ?? throw "null pointer dereference")._neg = true;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1264"
        return _z;
    }
    @:keep
    @:tdfield
    static public function andNot( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1206"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg == ((@:checkr _y ?? throw "null pointer dereference")._neg)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1207"
            if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                var _x1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _x ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
                var _y1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _y ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
                (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._andNot(_y1, _x1);
                (@:checkr _z ?? throw "null pointer dereference")._neg = false;
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1213"
                return _z;
            };
            (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._andNot((@:checkr _x ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1219"
            return _z;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1222"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            var _x1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _x ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
            (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._add((@:checkr _z ?? throw "null pointer dereference")._abs._or(_x1, (@:checkr _y ?? throw "null pointer dereference")._abs), stdgo._internal.math.big.Big__natone._natOne);
            (@:checkr _z ?? throw "null pointer dereference")._neg = true;
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1227"
            return _z;
        };
        var _y1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _y ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._and((@:checkr _x ?? throw "null pointer dereference")._abs, _y1);
        (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1234"
        return _z;
    }
    @:keep
    @:tdfield
    static public function and( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1176"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg == ((@:checkr _y ?? throw "null pointer dereference")._neg)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1177"
            if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                var _x1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _x ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
                var _y1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _y ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
                (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._add((@:checkr _z ?? throw "null pointer dereference")._abs._or(_x1, _y1), stdgo._internal.math.big.Big__natone._natOne);
                (@:checkr _z ?? throw "null pointer dereference")._neg = true;
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1183"
                return _z;
            };
            (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._and((@:checkr _x ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1189"
            return _z;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1193"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            {
                final __tmp__0 = _y;
                final __tmp__1 = _x;
                _x = @:binopAssign __tmp__0;
                _y = @:binopAssign __tmp__1;
            };
        };
        var _y1 = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _y ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._andNot((@:checkr _x ?? throw "null pointer dereference")._abs, _y1);
        (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1201"
        return _z;
    }
    @:keep
    @:tdfield
    static public function setBit( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _i:stdgo.GoInt, _b:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1159"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1160"
            throw stdgo.Go.toInterface(("negative bit index" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1162"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            var _t = ((@:checkr _z ?? throw "null pointer dereference")._abs._sub((@:checkr _x ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
            _t = _t._setBit(_t, (_i : stdgo.GoUInt), (_b ^ (1u32 : stdgo.GoUInt) : stdgo.GoUInt));
            (@:checkr _z ?? throw "null pointer dereference")._abs = _t._add(_t, stdgo._internal.math.big.Big__natone._natOne);
            (@:checkr _z ?? throw "null pointer dereference")._neg = (((@:checkr _z ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1167"
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._setBit((@:checkr _x ?? throw "null pointer dereference")._abs, (_i : stdgo.GoUInt), _b);
        (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1171"
        return _z;
    }
    @:keep
    @:tdfield
    static public function bit( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _i:stdgo.GoInt):stdgo.GoUInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1136"
        if (_i == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1138"
            if ((((@:checkr _x ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1139"
                return (((@:checkr _x ?? throw "null pointer dereference")._abs[(0 : stdgo.GoInt)] & (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) : stdgo.GoUInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1141"
            return (0u32 : stdgo.GoUInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1143"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1144"
            throw stdgo.Go.toInterface(("negative bit index" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1146"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            var _t = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub((@:checkr _x ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1148"
            return (_t._bit((_i : stdgo.GoUInt)) ^ (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1151"
        return (@:checkr _x ?? throw "null pointer dereference")._abs._bit((_i : stdgo.GoUInt));
    }
    @:keep
    @:tdfield
    static public function rsh( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1119"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            var _t = ((@:checkr _z ?? throw "null pointer dereference")._abs._sub((@:checkr _x ?? throw "null pointer dereference")._abs, stdgo._internal.math.big.Big__natone._natOne) : stdgo._internal.math.big.Big_t_nat.T_nat);
            _t = _t._shr(_t, _n);
            (@:checkr _z ?? throw "null pointer dereference")._abs = _t._add(_t, stdgo._internal.math.big.Big__natone._natOne);
            (@:checkr _z ?? throw "null pointer dereference")._neg = true;
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1125"
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._shr((@:checkr _x ?? throw "null pointer dereference")._abs, _n);
        (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1130"
        return _z;
    }
    @:keep
    @:tdfield
    static public function lsh( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._shl((@:checkr _x ?? throw "null pointer dereference")._abs, _n);
        (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1114"
        return _z;
    }
    @:keep
    @:tdfield
    static public function modSqrt( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _p:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1085"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = stdgo._internal.math.big.Big_jacobi.jacobi(_x, _p);
                    if (__value__ == ((-1 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1087"
                        return null;
                        break;
                    } else if (__value__ == ((0 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1089"
                        return _z.setInt64((0i64 : stdgo.GoInt64));
                        break;
                    } else if (__value__ == ((1 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1091"
                        break;
                        break;
                    };
                };
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1093"
        if (((@:checkr _x ?? throw "null pointer dereference")._neg || (_x.cmp(_p) >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mod(_x, _p);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1097"
        if (((@:checkr _p ?? throw "null pointer dereference")._abs[(0 : stdgo.GoInt)] % (4u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == ((3u32 : stdgo._internal.math.big.Big_word.Word))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1100"
            return _z._modSqrt3Mod4Prime(_x, _p);
        } else if (((@:checkr _p ?? throw "null pointer dereference")._abs[(0 : stdgo.GoInt)] % (8u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == ((5u32 : stdgo._internal.math.big.Big_word.Word))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1103"
            return _z._modSqrt5Mod8Prime(_x, _p);
        } else {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1106"
            return _z._modSqrtTonelliShanks(_x, _p);
        };
    }
    @:keep
    @:tdfield
    static public function _modSqrtTonelliShanks( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _p:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var _s:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1036"
        _s.sub(_p, stdgo._internal.math.big.Big__intone._intOne);
        var _e = (_s._abs._trailingZeroBits() : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1038"
        _s.rsh((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _e);
        var _n:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1042"
        _n.setInt64((2i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1043"
        while (stdgo._internal.math.big.Big_jacobi.jacobi((stdgo.Go.setRef(_n) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _p) != ((-1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1044"
            _n.add((stdgo.Go.setRef(_n) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), stdgo._internal.math.big.Big__intone._intOne);
        };
        var _y:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _b:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _g:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _t:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1052"
        _y.add((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), stdgo._internal.math.big.Big__intone._intOne);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1053"
        _y.rsh((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (1u32 : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1054"
        _y.exp(_x, (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _p);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1055"
        _b.exp(_x, (stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _p);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1056"
        _g.exp((stdgo.Go.setRef(_n) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _p);
        var _r = (_e : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1058"
        while (true) {
            var _m:stdgo.GoUInt = (0 : stdgo.GoUInt);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1061"
            _t.set((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1062"
            while (_t.cmp(stdgo._internal.math.big.Big__intone._intOne) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1063"
                _t.mul((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)).mod((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _p);
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1064"
                _m++;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1067"
            if (_m == ((0u32 : stdgo.GoUInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1068"
                return _z.set((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1071"
            _t.setInt64((0i64 : stdgo.GoInt64)).setBit((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (((_r - _m : stdgo.GoUInt) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt), (1u32 : stdgo.GoUInt)).exp((stdgo.Go.setRef(_g) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _p);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1073"
            _g.mul((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)).mod((stdgo.Go.setRef(_g) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _p);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1074"
            _y.mul((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)).mod((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _p);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1075"
            _b.mul((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_g) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)).mod((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _p);
            _r = _m;
        };
    }
    @:keep
    @:tdfield
    static public function _modSqrt5Mod8Prime( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _p:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var _e = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).rsh(_p, (3u32 : stdgo.GoUInt));
        var _tx = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).lsh(_x, (1u32 : stdgo.GoUInt));
        var _alpha = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).exp(_tx, _e, _p);
        var _beta = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_alpha, _alpha);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1020"
        _beta.mod(_beta, _p);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1021"
        _beta.mul(_beta, _tx);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1022"
        _beta.mod(_beta, _p);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1023"
        _beta.sub(_beta, stdgo._internal.math.big.Big__intone._intOne);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1024"
        _beta.mul(_beta, _x);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1025"
        _beta.mod(_beta, _p);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1026"
        _beta.mul(_beta, _alpha);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1027"
        _z.mod(_beta, _p);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1028"
        return _z;
    }
    @:keep
    @:tdfield
    static public function _modSqrt3Mod4Prime( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _p:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var _e = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).add(_p, stdgo._internal.math.big.Big__intone._intOne);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1000"
        _e.rsh(_e, (2u32 : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1001"
        _z.exp(_x, _e, _p);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L1002"
        return _z;
    }
    @:keep
    @:tdfield
    static public function modInverse( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _g:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _n:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L904"
        if ((@:checkr _n ?? throw "null pointer dereference")._neg) {
            var _n2:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
            _n = _n2.neg(_n);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L908"
        if ((@:checkr _g ?? throw "null pointer dereference")._neg) {
            var _g2:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
            _g = _g2.mod(_g, _n);
        };
        var _d:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _x:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L913"
        _d.gCD((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), null, _g, _n);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L916"
        if (_d.cmp(stdgo._internal.math.big.Big__intone._intOne) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L917"
            return null;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L922"
        if (_x._neg) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L923"
            _z.add((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _n);
        } else {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L925"
            _z.set((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L927"
        return _z;
    }
    @:keep
    @:tdfield
    static public function rand( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _rnd:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _n:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L888"
        if (((@:checkr _n ?? throw "null pointer dereference")._neg || ((@:checkr _n ?? throw "null pointer dereference")._abs.length == (0 : stdgo.GoInt)) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            (@:checkr _z ?? throw "null pointer dereference")._abs = null;
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L891"
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._random(_rnd, (@:checkr _n ?? throw "null pointer dereference")._abs, (@:checkr _n ?? throw "null pointer dereference")._abs._bitLen());
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L895"
        return _z;
    }
    @:keep
    @:tdfield
    static public function _lehmerGCD( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var a:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), ua:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), ub:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        a = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).abs(_a);
        b = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).abs(_b);
        var _extended = (({
            final value = _x;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) || ({
            final value = _y;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L771"
        if (_extended) {
            ua = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setInt64((1i64 : stdgo.GoInt64));
            ub = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        };
        var _q = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L784"
        if (((@:checkr a ?? throw "null pointer dereference")._abs._cmp((@:checkr b ?? throw "null pointer dereference")._abs) < (0 : stdgo.GoInt) : Bool)) {
            {
                final __tmp__0 = b;
                final __tmp__1 = a;
                a = @:binopAssign __tmp__0;
                b = @:binopAssign __tmp__1;
            };
            {
                final __tmp__0 = ua;
                final __tmp__1 = ub;
                ub = @:binopAssign __tmp__0;
                ua = @:binopAssign __tmp__1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L790"
        while ((((@:checkr b ?? throw "null pointer dereference")._abs.length) > (1 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.math.big.Big__lehmersimulate._lehmerSimulate(a, b), _u0:stdgo._internal.math.big.Big_word.Word = __tmp__._0, _u1:stdgo._internal.math.big.Big_word.Word = __tmp__._1, _v0:stdgo._internal.math.big.Big_word.Word = __tmp__._2, _v1:stdgo._internal.math.big.Big_word.Word = __tmp__._3, _even:Bool = __tmp__._4;
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L795"
            if (_v0 != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L799"
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
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L801"
                if (_extended) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L804"
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
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L810"
                stdgo._internal.math.big.Big__euclidupdate._euclidUpdate(a, b, ua, ub, _q, _r, _s, _t, _extended);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L814"
        if ((((@:checkr b ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L816"
            if ((((@:checkr a ?? throw "null pointer dereference")._abs.length) > (1 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L818"
                stdgo._internal.math.big.Big__euclidupdate._euclidUpdate(a, b, ua, ub, _q, _r, _s, _t, _extended);
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L820"
            if ((((@:checkr b ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool)) {
                var __0 = ((@:checkr a ?? throw "null pointer dereference")._abs[(0 : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word), __1 = ((@:checkr b ?? throw "null pointer dereference")._abs[(0 : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
var _bWord = __1, _aWord = __0;
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L823"
                if (_extended) {
                    var _ua:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), _ub:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), _va:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), _vb:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
                    {
                        final __tmp__0 = (1u32 : stdgo._internal.math.big.Big_word.Word);
                        final __tmp__1 = (0u32 : stdgo._internal.math.big.Big_word.Word);
                        _ua = @:binopAssign __tmp__0;
                        _ub = @:binopAssign __tmp__1;
                    };
                    {
                        final __tmp__0 = (0u32 : stdgo._internal.math.big.Big_word.Word);
                        final __tmp__1 = (1u32 : stdgo._internal.math.big.Big_word.Word);
                        _va = @:binopAssign __tmp__0;
                        _vb = @:binopAssign __tmp__1;
                    };
                    var _even = (true : Bool);
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L828"
                    while (_bWord != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                        var __0 = (_aWord / _bWord : stdgo._internal.math.big.Big_word.Word), __1 = (_aWord % _bWord : stdgo._internal.math.big.Big_word.Word);
var _r = __1, _q = __0;
                        {
                            final __tmp__0 = _bWord;
                            final __tmp__1 = _r;
                            _aWord = @:binopAssign __tmp__0;
                            _bWord = @:binopAssign __tmp__1;
                        };
                        {
                            final __tmp__0 = _ub;
                            final __tmp__1 = (_ua + (_q * _ub : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
                            _ua = @:binopAssign __tmp__0;
                            _ub = @:binopAssign __tmp__1;
                        };
                        {
                            final __tmp__0 = _vb;
                            final __tmp__1 = (_va + (_q * _vb : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
                            _va = @:binopAssign __tmp__0;
                            _vb = @:binopAssign __tmp__1;
                        };
                        _even = !_even;
                    };
                    (@:checkr _t ?? throw "null pointer dereference")._abs = (@:checkr _t ?? throw "null pointer dereference")._abs._setWord(_ua);
                    (@:checkr _s ?? throw "null pointer dereference")._abs = (@:checkr _s ?? throw "null pointer dereference")._abs._setWord(_va);
                    (@:checkr _t ?? throw "null pointer dereference")._neg = !_even;
                    (@:checkr _s ?? throw "null pointer dereference")._neg = _even;
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L841"
                    _t.mul(ua, _t);
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L842"
                    _s.mul(ub, _s);
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L844"
                    ua.add(_t, _s);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L846"
                    while (_bWord != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                        {
                            final __tmp__0 = _bWord;
                            final __tmp__1 = (_aWord % _bWord : stdgo._internal.math.big.Big_word.Word);
                            _aWord = @:binopAssign __tmp__0;
                            _bWord = @:binopAssign __tmp__1;
                        };
                    };
                };
                (@:checkr a ?? throw "null pointer dereference")._abs[(0 : stdgo.GoInt)] = _aWord;
            };
        };
        var _negA = ((@:checkr _a ?? throw "null pointer dereference")._neg : Bool);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L854"
        if (({
            final value = _y;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L856"
            if (_y == (_b)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L857"
                b.set(_b);
            } else {
                b = _b;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L862"
            _y.mul(_a, ua);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L863"
            if (_negA) {
                (@:checkr _y ?? throw "null pointer dereference")._neg = !(@:checkr _y ?? throw "null pointer dereference")._neg;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L866"
            _y.sub(a, _y);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L867"
            _y.div(_y, b);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L870"
        if (({
            final value = _x;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            {
                var __tmp__ = (ua : stdgo._internal.math.big.Big_int_.Int_)?.__copy__();
                var x = (_x : stdgo._internal.math.big.Big_int_.Int_);
                x._neg = __tmp__?._neg;
                x._abs = __tmp__?._abs;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L872"
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
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L879"
        return _z;
    }
    @:keep
    @:tdfield
    static public function gCD( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L620"
        if ((((@:checkr _a ?? throw "null pointer dereference")._abs.length == (0 : stdgo.GoInt)) || ((@:checkr _b ?? throw "null pointer dereference")._abs.length == (0 : stdgo.GoInt)) : Bool)) {
            var __0 = ((@:checkr _a ?? throw "null pointer dereference")._abs.length : stdgo.GoInt), __1 = ((@:checkr _b ?? throw "null pointer dereference")._abs.length : stdgo.GoInt), __2 = ((@:checkr _a ?? throw "null pointer dereference")._neg : Bool), __3 = ((@:checkr _b ?? throw "null pointer dereference")._neg : Bool);
var _negB = __3, _negA = __2, _lenB = __1, _lenA = __0;
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L622"
            if (_lenA == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L623"
                _z.set(_b);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L625"
                _z.set(_a);
            };
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L628"
            if (({
                final value = _x;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L629"
                if (_lenA == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L630"
                    _x.setUint64((0i64 : stdgo.GoUInt64));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L632"
                    _x.setUint64((1i64 : stdgo.GoUInt64));
                    (@:checkr _x ?? throw "null pointer dereference")._neg = _negA;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L636"
            if (({
                final value = _y;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L637"
                if (_lenB == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L638"
                    _y.setUint64((0i64 : stdgo.GoUInt64));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L640"
                    _y.setUint64((1i64 : stdgo.GoUInt64));
                    (@:checkr _y ?? throw "null pointer dereference")._neg = _negB;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L644"
            return _z;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L647"
        return _z._lehmerGCD(_x, _y, _a, _b);
    }
    @:keep
    @:tdfield
    static public function _exp( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _slow:Bool):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var _xWords = ((@:checkr _x ?? throw "null pointer dereference")._abs : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L576"
        if ((@:checkr _y ?? throw "null pointer dereference")._neg) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L577"
            if ((({
                final value = _m;
                (value == null || (value : Dynamic).__nil__);
            }) || ((@:checkr _m ?? throw "null pointer dereference")._abs.length == (0 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L578"
                return _z.setInt64((1i64 : stdgo.GoInt64));
            };
            var _inverse = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).modInverse(_x, _m);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L582"
            if (({
                final value = _inverse;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L583"
                return null;
            };
            _xWords = (@:checkr _inverse ?? throw "null pointer dereference")._abs;
        };
        var _yWords = ((@:checkr _y ?? throw "null pointer dereference")._abs : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _mWords:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L590"
        if (({
            final value = _m;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L591"
            if (((_z == _m) || stdgo._internal.math.big.Big__alias._alias((@:checkr _z ?? throw "null pointer dereference")._abs, (@:checkr _m ?? throw "null pointer dereference")._abs) : Bool)) {
                _m = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_m);
            };
            _mWords = (@:checkr _m ?? throw "null pointer dereference")._abs;
        };
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._expNN(_xWords, _yWords, _mWords, _slow);
        (@:checkr _z ?? throw "null pointer dereference")._neg = ((((((@:checkr _z ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool) && (@:checkr _x ?? throw "null pointer dereference")._neg : Bool) && ((_yWords.length) > (0 : stdgo.GoInt) : Bool) : Bool) && ((_yWords[(0 : stdgo.GoInt)] & (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == (1u32 : stdgo._internal.math.big.Big_word.Word)) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L599"
        if (((@:checkr _z ?? throw "null pointer dereference")._neg && ((_mWords.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._sub(_mWords, (@:checkr _z ?? throw "null pointer dereference")._abs);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L605"
        return _z;
    }
    @:keep
    @:tdfield
    static public function _expSlow( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L570"
        return _z._exp(_x, _y, _m, true);
    }
    @:keep
    @:tdfield
    static public function exp( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L566"
        return _z._exp(_x, _y, _m, false);
    }
    @:keep
    @:tdfield
    static public function trailingZeroBits( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.GoUInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L556"
        return (@:checkr _x ?? throw "null pointer dereference")._abs._trailingZeroBits();
    }
    @:keep
    @:tdfield
    static public function bitLen( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L550"
        return (@:checkr _x ?? throw "null pointer dereference")._abs._bitLen();
    }
    @:keep
    @:tdfield
    static public function fillBytes( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L537"
        for (_i => _ in _buf) {
            _buf[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L540"
        (@:checkr _x ?? throw "null pointer dereference")._abs._bytes(_buf);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L541"
        return _buf;
    }
    @:keep
    @:tdfield
    static public function bytes( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((((@:checkr _x ?? throw "null pointer dereference")._abs.length) * (4 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L528"
        return (_buf.__slice__((@:checkr _x ?? throw "null pointer dereference")._abs._bytes(_buf)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function setBytes( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._setBytes(_buf);
        (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L517"
        return _z;
    }
    @:keep
    @:tdfield
    static public function _setFromScanner( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _r:stdgo._internal.io.Io_bytescanner.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : Bool; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L502"
        {
            var __tmp__ = _z._scan(_r, _base), __8:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __9:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L503"
                return { _0 : null, _1 : false };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L506"
        {
            var __tmp__ = _r.readByte(), __10:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L507"
                return { _0 : null, _1 : false };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L509"
        return { _0 : _z, _1 : true };
    }
    @:keep
    @:tdfield
    static public function setString( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _s:stdgo.GoString, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : Bool; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L496"
        return _z._setFromScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(_s?.__copy__())), _base);
    }
    @:keep
    @:tdfield
    static public function float64( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.GoFloat64; var _1 : stdgo._internal.math.big.Big_accuracy.Accuracy; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        var _n = ((@:checkr _x ?? throw "null pointer dereference")._abs._bitLen() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L457"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L458"
            return { _0 : (0 : stdgo.GoFloat64), _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L462"
        if (((_n <= (53 : stdgo.GoInt) : Bool) || ((_n < (64 : stdgo.GoInt) : Bool) && ((_n - ((@:checkr _x ?? throw "null pointer dereference")._abs._trailingZeroBits() : stdgo.GoInt) : stdgo.GoInt) <= (53 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
            var _f = (stdgo._internal.math.big.Big__low64._low64((@:checkr _x ?? throw "null pointer dereference")._abs) : stdgo.GoFloat64);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L464"
            if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                _f = -_f;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L467"
            return { _0 : _f, _1 : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L470"
        return (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setInt(_x).float64();
    }
    @:keep
    @:tdfield
    static public function isUint64( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L450"
        return (!(@:checkr _x ?? throw "null pointer dereference")._neg && (((@:checkr _x ?? throw "null pointer dereference")._abs.length) <= (2 : stdgo.GoInt) : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function isInt64( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L441"
        if ((((@:checkr _x ?? throw "null pointer dereference")._abs.length) <= (2 : stdgo.GoInt) : Bool)) {
            var _w = (stdgo._internal.math.big.Big__low64._low64((@:checkr _x ?? throw "null pointer dereference")._abs) : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L443"
            return ((_w >= (0i64 : stdgo.GoInt64) : Bool) || ((@:checkr _x ?? throw "null pointer dereference")._neg && _w == (-_w) : Bool) : Bool);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L445"
        return false;
    }
    @:keep
    @:tdfield
    static public function uint64( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.GoUInt64 {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L436"
        return stdgo._internal.math.big.Big__low64._low64((@:checkr _x ?? throw "null pointer dereference")._abs);
    }
    @:keep
    @:tdfield
    static public function int64( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.GoInt64 {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        var _v = (stdgo._internal.math.big.Big__low64._low64((@:checkr _x ?? throw "null pointer dereference")._abs) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L427"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            _v = -_v;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L430"
        return _v;
    }
    @:keep
    @:tdfield
    static public function cmpAbs( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L400"
        return (@:checkr _x ?? throw "null pointer dereference")._abs._cmp((@:checkr _y ?? throw "null pointer dereference")._abs);
    }
    @:keep
    @:tdfield
    static public function cmp( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        var _r = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L378"
        if (_x == (_y)) {} else if ((@:checkr _x ?? throw "null pointer dereference")._neg == ((@:checkr _y ?? throw "null pointer dereference")._neg)) {
            _r = (@:checkr _x ?? throw "null pointer dereference")._abs._cmp((@:checkr _y ?? throw "null pointer dereference")._abs);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L383"
            if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
                _r = -_r;
            };
        } else if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            _r = (-1 : stdgo.GoInt);
        } else {
            _r = (1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L391"
        return _r;
    }
    @:keep
    @:tdfield
    static public function divMod( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var _y0 = _y;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L352"
        if (((_z == _y) || stdgo._internal.math.big.Big__alias._alias((@:checkr _z ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs) : Bool)) {
            _y0 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_y);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L355"
        _z.quoRem(_x, _y, _m);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L356"
        if ((@:checkr _m ?? throw "null pointer dereference")._neg) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L357"
            if ((@:checkr _y0 ?? throw "null pointer dereference")._neg) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L358"
                _z.add(_z, stdgo._internal.math.big.Big__intone._intOne);
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L359"
                _m.sub(_m, _y0);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L361"
                _z.sub(_z, stdgo._internal.math.big.Big__intone._intOne);
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L362"
                _m.add(_m, _y0);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L365"
        return { _0 : _z, _1 : _m };
    }
    @:keep
    @:tdfield
    static public function mod( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var _y0 = _y;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L321"
        if (((_z == _y) || stdgo._internal.math.big.Big__alias._alias((@:checkr _z ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs) : Bool)) {
            _y0 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_y);
        };
        var _q:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L325"
        _q.quoRem(_x, _y, _z);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L326"
        if ((@:checkr _z ?? throw "null pointer dereference")._neg) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L327"
            if ((@:checkr _y0 ?? throw "null pointer dereference")._neg) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L328"
                _z.sub(_z, _y0);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L330"
                _z.add(_z, _y0);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L333"
        return _z;
    }
    @:keep
    @:tdfield
    static public function div( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var _y_neg = ((@:checkr _y ?? throw "null pointer dereference")._neg : Bool);
        var _r:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L305"
        _z.quoRem(_x, _y, (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L306"
        if (_r._neg) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L307"
            if (_y_neg) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L308"
                _z.add(_z, stdgo._internal.math.big.Big__intone._intOne);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L310"
                _z.sub(_z, stdgo._internal.math.big.Big__intone._intOne);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L313"
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
            (@:checkr _z ?? throw "null pointer dereference")._neg = @:binopAssign __tmp__0;
            (@:checkr _r ?? throw "null pointer dereference")._neg = @:binopAssign __tmp__1;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L296"
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
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L279"
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
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L270"
        return _z;
    }
    @:keep
    @:tdfield
    static public function binomial( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L224"
        if ((_k > _n : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L225"
            return _z.setInt64((0i64 : stdgo.GoInt64));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L228"
        if ((_k > (_n - _k : stdgo.GoInt64) : Bool)) {
            _k = (_n - _k : stdgo.GoInt64);
        };
        var n:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), k:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _i:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _t:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L253"
        n.setInt64(_n);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L254"
        k.setInt64(_k);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L255"
        _z.set(stdgo._internal.math.big.Big__intone._intOne);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L256"
        while ((_i.cmp((stdgo.Go.setRef(k) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)) < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L257"
            _z.mul(_z, _t.sub((stdgo.Go.setRef(n) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_i) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)));
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L258"
            _i.add((stdgo.Go.setRef(_i) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), stdgo._internal.math.big.Big__intone._intOne);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L259"
            _z.quo(_z, (stdgo.Go.setRef(_i) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L261"
        return _z;
    }
    @:keep
    @:tdfield
    static public function mulRange( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _a:stdgo.GoInt64, _b:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L203"
        if ((_a > _b : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L205"
            return _z.setInt64((1i64 : stdgo.GoInt64));
        } else if (((_a <= (0i64 : stdgo.GoInt64) : Bool) && (_b >= (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L207"
            return _z.setInt64((0i64 : stdgo.GoInt64));
        };
        var _neg = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L212"
        if ((_a < (0i64 : stdgo.GoInt64) : Bool)) {
            _neg = (((_b - _a : stdgo.GoInt64)) & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64));
            {
                final __tmp__0 = -_b;
                final __tmp__1 = -_a;
                _a = @:binopAssign __tmp__0;
                _b = @:binopAssign __tmp__1;
            };
        };
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._mulRange((_a : stdgo.GoUInt64), (_b : stdgo.GoUInt64));
        (@:checkr _z ?? throw "null pointer dereference")._neg = _neg;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L219"
        return _z;
    }
    @:keep
    @:tdfield
    static public function mul( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L189"
        if (_x == (_y)) {
            (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._sqr((@:checkr _x ?? throw "null pointer dereference")._abs);
            (@:checkr _z ?? throw "null pointer dereference")._neg = false;
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L192"
            return _z;
        };
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._mul((@:checkr _x ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs);
        (@:checkr _z ?? throw "null pointer dereference")._neg = ((((@:checkr _z ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _x ?? throw "null pointer dereference")._neg != (@:checkr _y ?? throw "null pointer dereference")._neg) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L196"
        return _z;
    }
    @:keep
    @:tdfield
    static public function sub( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var _neg = ((@:checkr _x ?? throw "null pointer dereference")._neg : Bool);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L165"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg != ((@:checkr _y ?? throw "null pointer dereference")._neg)) {
            (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._add((@:checkr _x ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs);
        } else {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L172"
            if (((@:checkr _x ?? throw "null pointer dereference")._abs._cmp((@:checkr _y ?? throw "null pointer dereference")._abs) >= (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._sub((@:checkr _x ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs);
            } else {
                _neg = !_neg;
                (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._sub((@:checkr _y ?? throw "null pointer dereference")._abs, (@:checkr _x ?? throw "null pointer dereference")._abs);
            };
        };
        (@:checkr _z ?? throw "null pointer dereference")._neg = ((((@:checkr _z ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool) && _neg : Bool);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L180"
        return _z;
    }
    @:keep
    @:tdfield
    static public function add( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var _neg = ((@:checkr _x ?? throw "null pointer dereference")._neg : Bool);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L144"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg == ((@:checkr _y ?? throw "null pointer dereference")._neg)) {
            (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._add((@:checkr _x ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs);
        } else {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L151"
            if (((@:checkr _x ?? throw "null pointer dereference")._abs._cmp((@:checkr _y ?? throw "null pointer dereference")._abs) >= (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._sub((@:checkr _x ?? throw "null pointer dereference")._abs, (@:checkr _y ?? throw "null pointer dereference")._abs);
            } else {
                _neg = !_neg;
                (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._sub((@:checkr _y ?? throw "null pointer dereference")._abs, (@:checkr _x ?? throw "null pointer dereference")._abs);
            };
        };
        (@:checkr _z ?? throw "null pointer dereference")._neg = ((((@:checkr _z ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool) && _neg : Bool);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L159"
        return _z;
    }
    @:keep
    @:tdfield
    static public function neg( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L136"
        _z.set(_x);
        (@:checkr _z ?? throw "null pointer dereference")._neg = ((((@:checkr _z ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool) && !(@:checkr _z ?? throw "null pointer dereference")._neg : Bool);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L138"
        return _z;
    }
    @:keep
    @:tdfield
    static public function abs( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L129"
        _z.set(_x);
        (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L131"
        return _z;
    }
    @:keep
    @:tdfield
    static public function setBits( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _abs:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        (@:checkr _z ?? throw "null pointer dereference")._abs = (_abs : stdgo._internal.math.big.Big_t_nat.T_nat)._norm();
        (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L124"
        return _z;
    }
    @:keep
    @:tdfield
    static public function bits( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Slice<stdgo._internal.math.big.Big_word.Word> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L113"
        return (@:checkr _x ?? throw "null pointer dereference")._abs;
    }
    @:keep
    @:tdfield
    static public function set( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L97"
        if (_z != (_x)) {
            (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._set((@:checkr _x ?? throw "null pointer dereference")._abs);
            (@:checkr _z ?? throw "null pointer dereference")._neg = (@:checkr _x ?? throw "null pointer dereference")._neg;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L101"
        return _z;
    }
    @:keep
    @:tdfield
    static public function setUint64( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._setUint64(_x);
        (@:checkr _z ?? throw "null pointer dereference")._neg = false;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L74"
        return _z;
    }
    @:keep
    @:tdfield
    static public function setInt64( _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _z;
        var _neg = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L61"
        if ((_x < (0i64 : stdgo.GoInt64) : Bool)) {
            _neg = true;
            _x = -_x;
        };
        (@:checkr _z ?? throw "null pointer dereference")._abs = (@:checkr _z ?? throw "null pointer dereference")._abs._setUint64((_x : stdgo.GoUInt64));
        (@:checkr _z ?? throw "null pointer dereference")._neg = _neg;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L67"
        return _z;
    }
    @:keep
    @:tdfield
    static public function sign( _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L49"
        if (((@:checkr _x ?? throw "null pointer dereference")._abs.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L50"
            return (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L52"
        if ((@:checkr _x ?? throw "null pointer dereference")._neg) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L53"
            return (-1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L55"
        return (1 : stdgo.GoInt);
    }
}
