package stdgo._internal.math.big;
@:keep @:allow(stdgo._internal.math.big.Big.Bits_asInterface) class Bits_static_extension {
    @:keep
    @:tdfield
    static public function float_( _bits:stdgo._internal.math.big.Big_bits.Bits):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _bits:stdgo._internal.math.big.Big_bits.Bits = _bits;
        //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L163"
        if ((_bits.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L164"
            return (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        };
        var _min:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L170"
        for (_i => _b in _bits) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L171"
            if (((_i == (0 : stdgo.GoInt)) || (_b < _min : Bool) : Bool)) {
                _min = _b;
            };
        };
        var _x = stdgo._internal.math.big.Big_newint.newInt((0i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L178"
        for (__8 => _b in _bits) {
            var _badj = (_b - _min : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L181"
            while (_x.bit(_badj) != ((0u32 : stdgo.GoUInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L182"
                _x.setBit(_x, _badj, (0u32 : stdgo.GoUInt));
                //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L183"
                _badj++;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L185"
            _x.setBit(_x, _badj, (1u32 : stdgo.GoUInt));
        };
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setInt(_x);
        //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L190"
        {
            var _e = (((@:checkr _z ?? throw "null pointer dereference")._exp : stdgo.GoInt64) + (_min : stdgo.GoInt64) : stdgo.GoInt64);
            if ((((-2147483648i64 : stdgo.GoInt64) <= _e : Bool) && (_e <= (2147483647i64 : stdgo.GoInt64) : Bool) : Bool)) {
                (@:checkr _z ?? throw "null pointer dereference")._exp = (_e : stdgo.GoInt32);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L194"
                throw stdgo.Go.toInterface(("exponent out of range" : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L196"
        return _z;
    }
    @:keep
    @:tdfield
    static public function _round( _x:stdgo._internal.math.big.Big_bits.Bits, _prec:stdgo.GoUInt, _mode:stdgo._internal.math.big.Big_roundingmode.RoundingMode):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        @:recv var _x:stdgo._internal.math.big.Big_bits.Bits = _x;
        _x = _x._norm();
        var _min:stdgo.GoInt = (0 : stdgo.GoInt), _max:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L112"
        for (_i => _b in _x) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L113"
            if (((_i == (0 : stdgo.GoInt)) || (_b < _min : Bool) : Bool)) {
                _min = _b;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L116"
            if (((_i == (0 : stdgo.GoInt)) || (_b > _max : Bool) : Bool)) {
                _max = _b;
            };
        };
        var _prec0 = (((_max + (1 : stdgo.GoInt) : stdgo.GoInt) - _min : stdgo.GoInt) : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L121"
        if ((_prec >= _prec0 : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L122"
            return _x.float_();
        };
        var _bit0:stdgo.GoUInt = (0 : stdgo.GoUInt), _rbit:stdgo.GoUInt = (0 : stdgo.GoUInt), _sbit:stdgo.GoUInt = (0 : stdgo.GoUInt);
        var _z:stdgo._internal.math.big.Big_bits.Bits = (new stdgo._internal.math.big.Big_bits.Bits(0, 0) : stdgo._internal.math.big.Big_bits.Bits);
        var _r = (_max - (_prec : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L130"
        for (__8 => _b in _x) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L131"
            if (_b == (_r)) {
                _rbit = (1u32 : stdgo.GoUInt);
            } else if ((_b < _r : Bool)) {
                _sbit = (1u32 : stdgo.GoUInt);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L138"
                if (_b == ((_r + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    _bit0 = (1u32 : stdgo.GoUInt);
                };
                _z = (_z.__append__(_b) : stdgo._internal.math.big.Big_bits.Bits);
            };
        };
        var _f = _z.float_();
        //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L147"
        if (_mode == ((1 : stdgo._internal.math.big.Big_roundingmode.RoundingMode))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L148"
            throw stdgo.Go.toInterface(("not yet implemented" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L150"
        if ((((_mode == ((0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode)) && _rbit == ((1u32 : stdgo.GoUInt)) : Bool) && (((_sbit == (1u32 : stdgo.GoUInt)) || (_sbit == ((0u32 : stdgo.GoUInt)) && _bit0 != ((0u32 : stdgo.GoUInt)) : Bool) : Bool)) : Bool) || (_mode == (3 : stdgo._internal.math.big.Big_roundingmode.RoundingMode)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L152"
            _f.setMode((2 : stdgo._internal.math.big.Big_roundingmode.RoundingMode)).setPrec(_prec);
            //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L153"
            _f.add(_f, (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[((_r : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_bits.Bits).float_());
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L155"
        return _f;
    }
    @:keep
    @:tdfield
    static public function _norm( _x:stdgo._internal.math.big.Big_bits.Bits):stdgo._internal.math.big.Big_bits.Bits {
        @:recv var _x:stdgo._internal.math.big.Big_bits.Bits = _x;
        var _m = (({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, Bool>) : stdgo.GoMap<stdgo.GoInt, Bool>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L68"
        for (__8 => _b in _x) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L69"
            while ((_m[_b] ?? false)) {
                _m[_b] = false;
                //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L71"
                _b++;
            };
            _m[_b] = true;
        };
        var _z:stdgo._internal.math.big.Big_bits.Bits = (new stdgo._internal.math.big.Big_bits.Bits(0, 0) : stdgo._internal.math.big.Big_bits.Bits);
        //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L76"
        for (_b => _set in _m) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L77"
            if (_set) {
                _z = (_z.__append__(_b) : stdgo._internal.math.big.Big_bits.Bits);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L81"
        stdgo._internal.sort.Sort_ints.ints((_z : stdgo.Slice<stdgo.GoInt>));
        //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L82"
        return _z;
    }
    @:keep
    @:tdfield
    static public function _mul( _x:stdgo._internal.math.big.Big_bits.Bits, _y:stdgo._internal.math.big.Big_bits.Bits):stdgo._internal.math.big.Big_bits.Bits {
        @:recv var _x:stdgo._internal.math.big.Big_bits.Bits = _x;
        var _p:stdgo._internal.math.big.Big_bits.Bits = (new stdgo._internal.math.big.Big_bits.Bits(0, 0) : stdgo._internal.math.big.Big_bits.Bits);
        //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L34"
        for (__8 => _x in _x) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L35"
            for (__9 => _y in _y) {
                _p = (_p.__append__((_x + _y : stdgo.GoInt)) : stdgo._internal.math.big.Big_bits.Bits);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L39"
        return _p;
    }
    @:keep
    @:tdfield
    static public function _add( _x:stdgo._internal.math.big.Big_bits.Bits, _y:stdgo._internal.math.big.Big_bits.Bits):stdgo._internal.math.big.Big_bits.Bits {
        @:recv var _x:stdgo._internal.math.big.Big_bits.Bits = _x;
        //"file:///home/runner/.go/go1.21.3/src/math/big/bits_test.go#L29"
        return (_x.__append__(...(_y : Array<stdgo.GoInt>)) : stdgo._internal.math.big.Big_bits.Bits);
    }
}
