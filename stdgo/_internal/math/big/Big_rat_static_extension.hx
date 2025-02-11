package stdgo._internal.math.big;
@:keep @:allow(stdgo._internal.math.big.Big.Rat_asInterface) class Rat_static_extension {
    @:keep
    @:tdfield
    static public function unmarshalText( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        {
            var __tmp__ = @:check2r _z.setString((_text : stdgo.GoString)?.__copy__()), __8:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("math/big: cannot unmarshal %q into a *big.Rat" : stdgo.GoString), stdgo.Go.toInterface(_text));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalText( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        var _text = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        if (@:check2r _x.isInt()) {
            return {
                final __tmp__ = @:check2 (@:checkr _x ?? throw "null pointer dereference")._a.marshalText();
                _text = __tmp__._0;
                _err = __tmp__._1;
                { _0 : _text, _1 : _err };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : @:check2r _x._marshal(), _1 : (null : stdgo.Error) };
            _text = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function gobDecode( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        if ((_buf.length) == ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = (new stdgo._internal.math.big.Big_rat.Rat() : stdgo._internal.math.big.Big_rat.Rat);
                var x = (_z : stdgo._internal.math.big.Big_rat.Rat);
                x._a = __tmp__?._a;
                x._b = __tmp__?._b;
            };
            return (null : stdgo.Error);
        };
        if (((_buf.length) < (5 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("Rat.GobDecode: buffer too small" : stdgo.GoString));
        };
        var _b = (_buf[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        if ((_b >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8) != ((1 : stdgo.GoUInt8))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("Rat.GobDecode: encoding version %d not supported" : stdgo.GoString), stdgo.Go.toInterface((_b >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8)));
        };
        {};
        var _ln = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32((_buf.__slice__((1 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        if (((_ln : stdgo.GoUInt64) > (2147483642i64 : stdgo.GoUInt64) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("Rat.GobDecode: invalid length" : stdgo.GoString));
        };
        var _i = ((5 : stdgo.GoInt) + (_ln : stdgo.GoInt) : stdgo.GoInt);
        if (((_buf.length) < _i : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("Rat.GobDecode: buffer too small" : stdgo.GoString));
        };
        (@:checkr _z ?? throw "null pointer dereference")._a._neg = (_b & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
        (@:checkr _z ?? throw "null pointer dereference")._a._abs = (@:checkr _z ?? throw "null pointer dereference")._a._abs._setBytes((_buf.__slice__((5 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _z ?? throw "null pointer dereference")._b._abs = (@:checkr _z ?? throw "null pointer dereference")._b._abs._setBytes((_buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function gobEncode( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        if ((_x == null || (_x : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>(((5 : stdgo.GoInt) + (((((@:checkr _x ?? throw "null pointer dereference")._a._abs.length) + ((@:checkr _x ?? throw "null pointer dereference")._b._abs.length) : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _i = ((@:checkr _x ?? throw "null pointer dereference")._b._abs._bytes(_buf) : stdgo.GoInt);
        var _j = ((@:checkr _x ?? throw "null pointer dereference")._a._abs._bytes((_buf.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
        var _n = (_i - _j : stdgo.GoInt);
        if (((_n : stdgo.GoUInt32) : stdgo.GoInt) != (_n)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("Rat.GobEncode: numerator too large" : stdgo.GoString)) };
        };
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32((_buf.__slice__((_j - (4 : stdgo.GoInt) : stdgo.GoInt), _j) : stdgo.Slice<stdgo.GoUInt8>), (_n : stdgo.GoUInt32));
        _j = (_j - ((5 : stdgo.GoInt)) : stdgo.GoInt);
        var _b = (2 : stdgo.GoUInt8);
        if ((@:checkr _x ?? throw "null pointer dereference")._a._neg) {
            _b = (_b | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        _buf[(_j : stdgo.GoInt)] = _b;
        return { _0 : (_buf.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function floatString( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _prec:stdgo.GoInt):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        if (@:check2r _x.isInt()) {
            _buf = @:check2 (@:checkr _x ?? throw "null pointer dereference")._a.append(_buf, (10 : stdgo.GoInt));
            if ((_prec > (0 : stdgo.GoInt) : Bool)) {
                _buf = (_buf.__append__((46 : stdgo.GoUInt8)));
                {
                    var _i = (_prec : stdgo.GoInt);
                    while ((_i > (0 : stdgo.GoInt) : Bool)) {
                        _buf = (_buf.__append__((48 : stdgo.GoUInt8)));
                        _i--;
                    };
                };
            };
            return (_buf : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._div((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat), (@:checkr _x ?? throw "null pointer dereference")._a._abs, (@:checkr _x ?? throw "null pointer dereference")._b._abs), _q:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._0, _r:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._1;
        var _p = (stdgo._internal.math.big.Big__natone._natOne : stdgo._internal.math.big.Big_t_nat.T_nat);
        if ((_prec > (0 : stdgo.GoInt) : Bool)) {
            _p = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._expNN(stdgo._internal.math.big.Big__natten._natTen, (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._setUint64((_prec : stdgo.GoUInt64)), null, false);
        };
        _r = _r._mul(_r, _p);
        var __tmp__ = _r._div((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat), _r, (@:checkr _x ?? throw "null pointer dereference")._b._abs), _r:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._0, _r2:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._1;
        _r2 = _r2._add(_r2, _r2);
        if (((@:checkr _x ?? throw "null pointer dereference")._b._abs._cmp(_r2) <= (0 : stdgo.GoInt) : Bool)) {
            _r = _r._add(_r, stdgo._internal.math.big.Big__natone._natOne);
            if ((_r._cmp(_p) >= (0 : stdgo.GoInt) : Bool)) {
                _q = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._add(_q, stdgo._internal.math.big.Big__natone._natOne);
                _r = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub(_r, _p);
            };
        };
        if ((@:checkr _x ?? throw "null pointer dereference")._a._neg) {
            _buf = (_buf.__append__((45 : stdgo.GoUInt8)));
        };
        _buf = (_buf.__append__(...(_q._utoa((10 : stdgo.GoInt)) : Array<stdgo.GoUInt8>)));
        if ((_prec > (0 : stdgo.GoInt) : Bool)) {
            _buf = (_buf.__append__((46 : stdgo.GoUInt8)));
            var _rs = _r._utoa((10 : stdgo.GoInt));
            {
                var _i = (_prec - (_rs.length) : stdgo.GoInt);
                while ((_i > (0 : stdgo.GoInt) : Bool)) {
                    _buf = (_buf.__append__((48 : stdgo.GoUInt8)));
                    _i--;
                };
            };
            _buf = (_buf.__append__(...(_rs : Array<stdgo.GoUInt8>)));
        };
        return (_buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function ratString( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        if (@:check2r _x.isInt()) {
            return (@:check2 (@:checkr _x ?? throw "null pointer dereference")._a.string() : stdgo.GoString)?.__copy__();
        };
        return (@:check2r _x.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _marshal( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        _buf = @:check2 (@:checkr _x ?? throw "null pointer dereference")._a.append(_buf, (10 : stdgo.GoInt));
        _buf = (_buf.__append__((47 : stdgo.GoUInt8)));
        if (((@:checkr _x ?? throw "null pointer dereference")._b._abs.length) != ((0 : stdgo.GoInt))) {
            _buf = @:check2 (@:checkr _x ?? throw "null pointer dereference")._b.append(_buf, (10 : stdgo.GoInt));
        } else {
            _buf = (_buf.__append__((49 : stdgo.GoUInt8)));
        };
        return _buf;
    }
    @:keep
    @:tdfield
    static public function string( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        return (@:check2r _x._marshal() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function setString( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _s:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>; var _1 : Bool; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : false };
        };
        {
            var _sep = (stdgo._internal.strings.Strings_index.index(_s?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
            if ((_sep >= (0 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = @:check2 (@:checkr _z ?? throw "null pointer dereference")._a.setString((_s.__slice__(0, _sep) : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt)), __8:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        return { _0 : null, _1 : false };
                    };
                };
                var _r = stdgo._internal.strings.Strings_newreader.newReader((_s.__slice__((_sep + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    {
                        var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._b._abs._scan(stdgo.Go.asInterface(_r), (0 : stdgo.GoInt), false);
                        (@:checkr _z ?? throw "null pointer dereference")._b._abs = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._3;
                    };
                    if (_err != null) {
                        return { _0 : null, _1 : false };
                    };
                };
                {
                    {
                        var __tmp__ = @:check2r _r.readByte();
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        return { _0 : null, _1 : false };
                    };
                };
                if (((@:checkr _z ?? throw "null pointer dereference")._b._abs.length) == ((0 : stdgo.GoInt))) {
                    return { _0 : null, _1 : false };
                };
                return { _0 : @:check2r _z._norm(), _1 : true };
            };
        };
        var _r = stdgo._internal.strings.Strings_newreader.newReader(_s?.__copy__());
        var __tmp__ = stdgo._internal.math.big.Big__scansign._scanSign(stdgo.Go.asInterface(_r)), _neg:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : false };
        };
        var _base:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fcount:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._a._abs._scan(stdgo.Go.asInterface(_r), (0 : stdgo.GoInt), true);
            (@:checkr _z ?? throw "null pointer dereference")._a._abs = @:tmpset0 __tmp__._0;
            _base = @:tmpset0 __tmp__._1;
            _fcount = @:tmpset0 __tmp__._2;
            _err = @:tmpset0 __tmp__._3;
        };
        if (_err != null) {
            return { _0 : null, _1 : false };
        };
        var _exp:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _ebase:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = stdgo._internal.math.big.Big__scanexponent._scanExponent(stdgo.Go.asInterface(_r), true, true);
            _exp = @:tmpset0 __tmp__._0;
            _ebase = @:tmpset0 __tmp__._1;
            _err = @:tmpset0 __tmp__._2;
        };
        if (_err != null) {
            return { _0 : null, _1 : false };
        };
        {
            {
                var __tmp__ = @:check2r _r.readByte();
                _err = @:tmpset0 __tmp__._1;
            };
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                return { _0 : null, _1 : false };
            };
        };
        if (((@:checkr _z ?? throw "null pointer dereference")._a._abs.length) == ((0 : stdgo.GoInt))) {
            return { _0 : @:check2r _z._norm(), _1 : true };
        };
        var __0:stdgo.GoInt64 = (0 : stdgo.GoInt64), __1:stdgo.GoInt64 = (0 : stdgo.GoInt64);
var _exp5 = __1, _exp2 = __0;
        if ((_fcount < (0 : stdgo.GoInt) : Bool)) {
            var _d = (_fcount : stdgo.GoInt64);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _base;
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (10 : stdgo.GoInt)))) {
                            _exp5 = _d;
                            @:fallthrough {
                                __switchIndex__ = 1;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo.GoInt)))) {
                            _exp2 = _d;
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (8 : stdgo.GoInt)))) {
                            _exp2 = (_d * (3i64 : stdgo.GoInt64) : stdgo.GoInt64);
                            break;
                            break;
                        } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == (16 : stdgo.GoInt)))) {
                            _exp2 = (_d * (4i64 : stdgo.GoInt64) : stdgo.GoInt64);
                            break;
                            break;
                        } else {
                            throw stdgo.Go.toInterface(("unexpected mantissa base" : stdgo.GoString));
                            break;
                        };
                    };
                    break;
                };
            };
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _ebase;
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (10 : stdgo.GoInt)))) {
                        _exp5 = (_exp5 + (_exp) : stdgo.GoInt64);
                        @:fallthrough {
                            __switchIndex__ = 1;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo.GoInt)))) {
                        _exp2 = (_exp2 + (_exp) : stdgo.GoInt64);
                        break;
                        break;
                    } else {
                        throw stdgo.Go.toInterface(("unexpected exponent base" : stdgo.GoString));
                        break;
                    };
                };
                break;
            };
        };
        if (_exp5 != ((0i64 : stdgo.GoInt64))) {
            var _n = (_exp5 : stdgo.GoInt64);
            if ((_n < (0i64 : stdgo.GoInt64) : Bool)) {
                _n = -_n;
                if ((_n < (0i64 : stdgo.GoInt64) : Bool)) {
                    return { _0 : null, _1 : false };
                };
            };
            if ((_n > (1000000i64 : stdgo.GoInt64) : Bool)) {
                return { _0 : null, _1 : false };
            };
            var _pow5 = ((@:checkr _z ?? throw "null pointer dereference")._b._abs._expNN(stdgo._internal.math.big.Big__natfive._natFive, (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._setWord((_n : stdgo._internal.math.big.Big_word.Word)), null, false) : stdgo._internal.math.big.Big_t_nat.T_nat);
            if ((_exp5 > (0i64 : stdgo.GoInt64) : Bool)) {
                (@:checkr _z ?? throw "null pointer dereference")._a._abs = (@:checkr _z ?? throw "null pointer dereference")._a._abs._mul((@:checkr _z ?? throw "null pointer dereference")._a._abs, _pow5);
                (@:checkr _z ?? throw "null pointer dereference")._b._abs = (@:checkr _z ?? throw "null pointer dereference")._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
            } else {
                (@:checkr _z ?? throw "null pointer dereference")._b._abs = _pow5;
            };
        } else {
            (@:checkr _z ?? throw "null pointer dereference")._b._abs = (@:checkr _z ?? throw "null pointer dereference")._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
        };
        if (((_exp2 < (-10000000i64 : stdgo.GoInt64) : Bool) || (_exp2 > (10000000i64 : stdgo.GoInt64) : Bool) : Bool)) {
            return { _0 : null, _1 : false };
        };
        if ((_exp2 > (0i64 : stdgo.GoInt64) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._a._abs = (@:checkr _z ?? throw "null pointer dereference")._a._abs._shl((@:checkr _z ?? throw "null pointer dereference")._a._abs, (_exp2 : stdgo.GoUInt));
        } else if ((_exp2 < (0i64 : stdgo.GoInt64) : Bool)) {
            (@:checkr _z ?? throw "null pointer dereference")._b._abs = (@:checkr _z ?? throw "null pointer dereference")._b._abs._shl((@:checkr _z ?? throw "null pointer dereference")._b._abs, (-_exp2 : stdgo.GoUInt));
        };
        (@:checkr _z ?? throw "null pointer dereference")._a._neg = (_neg && (((@:checkr _z ?? throw "null pointer dereference")._a._abs.length) > (0 : stdgo.GoInt) : Bool) : Bool);
        return { _0 : @:check2r _z._norm(), _1 : true };
    }
    @:keep
    @:tdfield
    static public function scan( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _s:stdgo._internal.fmt.Fmt_scanstate.ScanState, _ch:stdgo.GoInt32):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        var __tmp__ = _s.token(true, stdgo._internal.math.big.Big__rattok._ratTok), _tok:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if (!stdgo._internal.strings.Strings_containsrune.containsRune(("efgEFGv" : stdgo.GoString), _ch)) {
            return stdgo._internal.errors.Errors_new_.new_(("Rat.Scan: invalid verb" : stdgo.GoString));
        };
        {
            var __tmp__ = @:check2r _z.setString((_tok : stdgo.GoString)?.__copy__()), __8:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return stdgo._internal.errors.Errors_new_.new_(("Rat.Scan: invalid syntax" : stdgo.GoString));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function quo( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _y:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        if (((@:checkr _y ?? throw "null pointer dereference")._a._abs.length) == ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("division by zero" : stdgo.GoString));
        };
        var __0:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), __1:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
var _b = __1, _a = __0;
        @:check2 _a._scaleDenom((stdgo.Go.setRef((@:checkr _x ?? throw "null pointer dereference")._a) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (@:checkr _y ?? throw "null pointer dereference")._b._abs);
        @:check2 _b._scaleDenom((stdgo.Go.setRef((@:checkr _y ?? throw "null pointer dereference")._a) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (@:checkr _x ?? throw "null pointer dereference")._b._abs);
        (@:checkr _z ?? throw "null pointer dereference")._a._abs = _a._abs;
        (@:checkr _z ?? throw "null pointer dereference")._b._abs = _b._abs;
        (@:checkr _z ?? throw "null pointer dereference")._a._neg = _a._neg != (_b._neg);
        return @:check2r _z._norm();
    }
    @:keep
    @:tdfield
    static public function mul( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _y:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        if (_x == (_y)) {
            (@:checkr _z ?? throw "null pointer dereference")._a._neg = false;
            (@:checkr _z ?? throw "null pointer dereference")._a._abs = (@:checkr _z ?? throw "null pointer dereference")._a._abs._sqr((@:checkr _x ?? throw "null pointer dereference")._a._abs);
            if (((@:checkr _x ?? throw "null pointer dereference")._b._abs.length) == ((0 : stdgo.GoInt))) {
                (@:checkr _z ?? throw "null pointer dereference")._b._abs = (@:checkr _z ?? throw "null pointer dereference")._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
            } else {
                (@:checkr _z ?? throw "null pointer dereference")._b._abs = (@:checkr _z ?? throw "null pointer dereference")._b._abs._sqr((@:checkr _x ?? throw "null pointer dereference")._b._abs);
            };
            return _z;
        };
        @:check2 (@:checkr _z ?? throw "null pointer dereference")._a.mul((stdgo.Go.setRef((@:checkr _x ?? throw "null pointer dereference")._a) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef((@:checkr _y ?? throw "null pointer dereference")._a) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        (@:checkr _z ?? throw "null pointer dereference")._b._abs = stdgo._internal.math.big.Big__muldenom._mulDenom((@:checkr _z ?? throw "null pointer dereference")._b._abs, (@:checkr _x ?? throw "null pointer dereference")._b._abs, (@:checkr _y ?? throw "null pointer dereference")._b._abs);
        return @:check2r _z._norm();
    }
    @:keep
    @:tdfield
    static public function sub( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _y:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        var __0:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), __1:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
var _a2 = __1, _a1 = __0;
        @:check2 _a1._scaleDenom((stdgo.Go.setRef((@:checkr _x ?? throw "null pointer dereference")._a) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (@:checkr _y ?? throw "null pointer dereference")._b._abs);
        @:check2 _a2._scaleDenom((stdgo.Go.setRef((@:checkr _y ?? throw "null pointer dereference")._a) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (@:checkr _x ?? throw "null pointer dereference")._b._abs);
        @:check2 (@:checkr _z ?? throw "null pointer dereference")._a.sub((stdgo.Go.setRef(_a1) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_a2) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        (@:checkr _z ?? throw "null pointer dereference")._b._abs = stdgo._internal.math.big.Big__muldenom._mulDenom((@:checkr _z ?? throw "null pointer dereference")._b._abs, (@:checkr _x ?? throw "null pointer dereference")._b._abs, (@:checkr _y ?? throw "null pointer dereference")._b._abs);
        return @:check2r _z._norm();
    }
    @:keep
    @:tdfield
    static public function add( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _y:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        var __0:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), __1:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
var _a2 = __1, _a1 = __0;
        @:check2 _a1._scaleDenom((stdgo.Go.setRef((@:checkr _x ?? throw "null pointer dereference")._a) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (@:checkr _y ?? throw "null pointer dereference")._b._abs);
        @:check2 _a2._scaleDenom((stdgo.Go.setRef((@:checkr _y ?? throw "null pointer dereference")._a) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (@:checkr _x ?? throw "null pointer dereference")._b._abs);
        @:check2 (@:checkr _z ?? throw "null pointer dereference")._a.add((stdgo.Go.setRef(_a1) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_a2) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        (@:checkr _z ?? throw "null pointer dereference")._b._abs = stdgo._internal.math.big.Big__muldenom._mulDenom((@:checkr _z ?? throw "null pointer dereference")._b._abs, (@:checkr _x ?? throw "null pointer dereference")._b._abs, (@:checkr _y ?? throw "null pointer dereference")._b._abs);
        return @:check2r _z._norm();
    }
    @:keep
    @:tdfield
    static public function cmp( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _y:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        var __0:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), __1:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
var _b = __1, _a = __0;
        @:check2 _a._scaleDenom((stdgo.Go.setRef((@:checkr _x ?? throw "null pointer dereference")._a) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (@:checkr _y ?? throw "null pointer dereference")._b._abs);
        @:check2 _b._scaleDenom((stdgo.Go.setRef((@:checkr _y ?? throw "null pointer dereference")._a) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (@:checkr _x ?? throw "null pointer dereference")._b._abs);
        return @:check2 _a.cmp((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
    }
    @:keep
    @:tdfield
    static public function _norm( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && ((@:checkr _z ?? throw "null pointer dereference")._a._abs.length == (0 : stdgo.GoInt)))) {
                    (@:checkr _z ?? throw "null pointer dereference")._a._neg = false;
                    @:fallthrough {
                        __switchIndex__ = 1;
                        __run__ = true;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && ((@:checkr _z ?? throw "null pointer dereference")._b._abs.length == (0 : stdgo.GoInt)))) {
                    (@:checkr _z ?? throw "null pointer dereference")._b._abs = (@:checkr _z ?? throw "null pointer dereference")._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
                    break;
                    break;
                } else {
                    var _neg = ((@:checkr _z ?? throw "null pointer dereference")._a._neg : Bool);
                    (@:checkr _z ?? throw "null pointer dereference")._a._neg = false;
                    (@:checkr _z ?? throw "null pointer dereference")._b._neg = false;
                    {
                        var _f = @:check2r stdgo._internal.math.big.Big_newint.newInt((0i64 : stdgo.GoInt64))._lehmerGCD(null, null, (stdgo.Go.setRef((@:checkr _z ?? throw "null pointer dereference")._a) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef((@:checkr _z ?? throw "null pointer dereference")._b) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
                        if (@:check2r _f.cmp(stdgo._internal.math.big.Big__intone._intOne) != ((0 : stdgo.GoInt))) {
                            {
                                var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._a._abs._div(null, (@:checkr _z ?? throw "null pointer dereference")._a._abs, (@:checkr _f ?? throw "null pointer dereference")._abs);
                                (@:checkr _z ?? throw "null pointer dereference")._a._abs = @:tmpset0 __tmp__._0;
                            };
                            {
                                var __tmp__ = (@:checkr _z ?? throw "null pointer dereference")._b._abs._div(null, (@:checkr _z ?? throw "null pointer dereference")._b._abs, (@:checkr _f ?? throw "null pointer dereference")._abs);
                                (@:checkr _z ?? throw "null pointer dereference")._b._abs = @:tmpset0 __tmp__._0;
                            };
                        };
                    };
                    (@:checkr _z ?? throw "null pointer dereference")._a._neg = _neg;
                    break;
                };
                break;
            };
        };
        return _z;
    }
    @:keep
    @:tdfield
    static public function denom( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        if (((@:checkr _x ?? throw "null pointer dereference")._b._abs.length) == ((0 : stdgo.GoInt))) {
            return (stdgo.Go.setRef(({ _abs : (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(1, 1, ...[(1u32 : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat) } : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        };
        return (stdgo.Go.setRef((@:checkr _x ?? throw "null pointer dereference")._b) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    }
    @:keep
    @:tdfield
    static public function num( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        return (stdgo.Go.setRef((@:checkr _x ?? throw "null pointer dereference")._a) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    }
    @:keep
    @:tdfield
    static public function isInt( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        return (((@:checkr _x ?? throw "null pointer dereference")._b._abs.length == (0 : stdgo.GoInt)) || ((@:checkr _x ?? throw "null pointer dereference")._b._abs._cmp(stdgo._internal.math.big.Big__natone._natOne) == (0 : stdgo.GoInt)) : Bool);
    }
    @:keep
    @:tdfield
    static public function sign( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        return @:check2 (@:checkr _x ?? throw "null pointer dereference")._a.sign();
    }
    @:keep
    @:tdfield
    static public function inv( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        if (((@:checkr _x ?? throw "null pointer dereference")._a._abs.length) == ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("division by zero" : stdgo.GoString));
        };
        @:check2r _z.set(_x);
        {
            final __tmp__0 = (@:checkr _z ?? throw "null pointer dereference")._b._abs;
            final __tmp__1 = (@:checkr _z ?? throw "null pointer dereference")._a._abs;
            (@:checkr _z ?? throw "null pointer dereference")._a._abs = __tmp__0;
            (@:checkr _z ?? throw "null pointer dereference")._b._abs = __tmp__1;
        };
        return _z;
    }
    @:keep
    @:tdfield
    static public function neg( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        @:check2r _z.set(_x);
        (@:checkr _z ?? throw "null pointer dereference")._a._neg = ((((@:checkr _z ?? throw "null pointer dereference")._a._abs.length) > (0 : stdgo.GoInt) : Bool) && !(@:checkr _z ?? throw "null pointer dereference")._a._neg : Bool);
        return _z;
    }
    @:keep
    @:tdfield
    static public function abs( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        @:check2r _z.set(_x);
        (@:checkr _z ?? throw "null pointer dereference")._a._neg = false;
        return _z;
    }
    @:keep
    @:tdfield
    static public function set( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        if (_z != (_x)) {
            @:check2 (@:checkr _z ?? throw "null pointer dereference")._a.set((stdgo.Go.setRef((@:checkr _x ?? throw "null pointer dereference")._a) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
            @:check2 (@:checkr _z ?? throw "null pointer dereference")._b.set((stdgo.Go.setRef((@:checkr _x ?? throw "null pointer dereference")._b) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        };
        if (((@:checkr _z ?? throw "null pointer dereference")._b._abs.length) == ((0 : stdgo.GoInt))) {
            (@:checkr _z ?? throw "null pointer dereference")._b._abs = (@:checkr _z ?? throw "null pointer dereference")._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
        };
        return _z;
    }
    @:keep
    @:tdfield
    static public function setUint64( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _x:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        @:check2 (@:checkr _z ?? throw "null pointer dereference")._a.setUint64(_x);
        (@:checkr _z ?? throw "null pointer dereference")._b._abs = (@:checkr _z ?? throw "null pointer dereference")._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
        return _z;
    }
    @:keep
    @:tdfield
    static public function setInt64( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _x:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        @:check2 (@:checkr _z ?? throw "null pointer dereference")._a.setInt64(_x);
        (@:checkr _z ?? throw "null pointer dereference")._b._abs = (@:checkr _z ?? throw "null pointer dereference")._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
        return _z;
    }
    @:keep
    @:tdfield
    static public function setInt( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        @:check2 (@:checkr _z ?? throw "null pointer dereference")._a.set(_x);
        (@:checkr _z ?? throw "null pointer dereference")._b._abs = (@:checkr _z ?? throw "null pointer dereference")._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
        return _z;
    }
    @:keep
    @:tdfield
    static public function setFrac64( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _a:stdgo.GoInt64, _b:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        if (_b == ((0i64 : stdgo.GoInt64))) {
            throw stdgo.Go.toInterface(("division by zero" : stdgo.GoString));
        };
        @:check2 (@:checkr _z ?? throw "null pointer dereference")._a.setInt64(_a);
        if ((_b < (0i64 : stdgo.GoInt64) : Bool)) {
            _b = -_b;
            (@:checkr _z ?? throw "null pointer dereference")._a._neg = !(@:checkr _z ?? throw "null pointer dereference")._a._neg;
        };
        (@:checkr _z ?? throw "null pointer dereference")._b._abs = (@:checkr _z ?? throw "null pointer dereference")._b._abs._setUint64((_b : stdgo.GoUInt64));
        return @:check2r _z._norm();
    }
    @:keep
    @:tdfield
    static public function setFrac( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _a:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        (@:checkr _z ?? throw "null pointer dereference")._a._neg = (@:checkr _a ?? throw "null pointer dereference")._neg != ((@:checkr _b ?? throw "null pointer dereference")._neg);
        var _babs = ((@:checkr _b ?? throw "null pointer dereference")._abs : stdgo._internal.math.big.Big_t_nat.T_nat);
        if ((_babs.length) == ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("division by zero" : stdgo.GoString));
        };
        if ((((stdgo.Go.setRef((@:checkr _z ?? throw "null pointer dereference")._a) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) == _b) || stdgo._internal.math.big.Big__alias._alias((@:checkr _z ?? throw "null pointer dereference")._a._abs, _babs) : Bool)) {
            _babs = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._set(_babs);
        };
        (@:checkr _z ?? throw "null pointer dereference")._a._abs = (@:checkr _z ?? throw "null pointer dereference")._a._abs._set((@:checkr _a ?? throw "null pointer dereference")._abs);
        (@:checkr _z ?? throw "null pointer dereference")._b._abs = (@:checkr _z ?? throw "null pointer dereference")._b._abs._set(_babs);
        return @:check2r _z._norm();
    }
    @:keep
    @:tdfield
    static public function float64( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):{ var _0 : stdgo.GoFloat64; var _1 : Bool; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        var _f = (0 : stdgo.GoFloat64), _exact = false;
        var _b = ((@:checkr _x ?? throw "null pointer dereference")._b._abs : stdgo._internal.math.big.Big_t_nat.T_nat);
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            _b = stdgo._internal.math.big.Big__natone._natOne;
        };
        {
            var __tmp__ = stdgo._internal.math.big.Big__quottofloat64._quotToFloat64((@:checkr _x ?? throw "null pointer dereference")._a._abs, _b);
            _f = @:tmpset0 __tmp__._0;
            _exact = @:tmpset0 __tmp__._1;
        };
        if ((@:checkr _x ?? throw "null pointer dereference")._a._neg) {
            _f = -_f;
        };
        return { _0 : _f, _1 : _exact };
    }
    @:keep
    @:tdfield
    static public function float32( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):{ var _0 : stdgo.GoFloat32; var _1 : Bool; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        var _f = (0 : stdgo.GoFloat32), _exact = false;
        var _b = ((@:checkr _x ?? throw "null pointer dereference")._b._abs : stdgo._internal.math.big.Big_t_nat.T_nat);
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            _b = stdgo._internal.math.big.Big__natone._natOne;
        };
        {
            var __tmp__ = stdgo._internal.math.big.Big__quottofloat32._quotToFloat32((@:checkr _x ?? throw "null pointer dereference")._a._abs, _b);
            _f = @:tmpset0 __tmp__._0;
            _exact = @:tmpset0 __tmp__._1;
        };
        if ((@:checkr _x ?? throw "null pointer dereference")._a._neg) {
            _f = -_f;
        };
        return { _0 : _f, _1 : _exact };
    }
    @:keep
    @:tdfield
    static public function setFloat64( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _f:stdgo.GoFloat64):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        {};
        var _bits = (stdgo._internal.math.Math_float64bits.float64bits(_f) : stdgo.GoUInt64);
        var _mantissa = (_bits & (4503599627370495i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _exp = ((((_bits >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (2047i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt);
        {
            final __value__ = _exp;
            if (__value__ == ((2047 : stdgo.GoInt))) {
                return null;
            } else if (__value__ == ((0 : stdgo.GoInt))) {
                _exp = (_exp - ((1022 : stdgo.GoInt)) : stdgo.GoInt);
            } else {
                _mantissa = (_mantissa | ((4503599627370496i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _exp = (_exp - ((1023 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        var _shift = ((52 : stdgo.GoInt) - _exp : stdgo.GoInt);
        while ((((_mantissa & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (0i64 : stdgo.GoUInt64)) && (_shift > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _mantissa = (_mantissa >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _shift--;
        };
        @:check2 (@:checkr _z ?? throw "null pointer dereference")._a.setUint64(_mantissa);
        (@:checkr _z ?? throw "null pointer dereference")._a._neg = (_f < (0 : stdgo.GoFloat64) : Bool);
        @:check2 (@:checkr _z ?? throw "null pointer dereference")._b.set(stdgo._internal.math.big.Big__intone._intOne);
        if ((_shift > (0 : stdgo.GoInt) : Bool)) {
            @:check2 (@:checkr _z ?? throw "null pointer dereference")._b.lsh((stdgo.Go.setRef((@:checkr _z ?? throw "null pointer dereference")._b) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (_shift : stdgo.GoUInt));
        } else {
            @:check2 (@:checkr _z ?? throw "null pointer dereference")._a.lsh((stdgo.Go.setRef((@:checkr _z ?? throw "null pointer dereference")._a) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (-_shift : stdgo.GoUInt));
        };
        return @:check2r _z._norm();
    }
}
