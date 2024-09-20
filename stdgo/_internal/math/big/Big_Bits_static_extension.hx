package stdgo._internal.math.big;
@:keep @:allow(stdgo._internal.math.big.Big.Bits_asInterface) class Bits_static_extension {
    @:keep
    static public function float_( _bits:stdgo._internal.math.big.Big_Bits.Bits):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        @:recv var _bits:stdgo._internal.math.big.Big_Bits.Bits = _bits;
        if ((_bits.length) == ((0 : stdgo.GoInt))) {
            return (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        };
        var _min:stdgo.GoInt = (0 : stdgo.GoInt);
        for (_i => _b in _bits) {
            if (((_i == (0 : stdgo.GoInt)) || (_b < _min : Bool) : Bool)) {
                _min = _b;
            };
        };
        var _x = stdgo._internal.math.big.Big_newInt.newInt((0i64 : stdgo.GoInt64));
        for (__8 => _b in _bits) {
            var _badj = (_b - _min : stdgo.GoInt);
            while (_x.bit(_badj) != ((0u32 : stdgo.GoUInt))) {
                _x.setBit(_x, _badj, (0u32 : stdgo.GoUInt));
                _badj++;
            };
            _x.setBit(_x, _badj, (1u32 : stdgo.GoUInt));
        };
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setInt(_x);
        {
            var _e = ((_z._exp : stdgo.GoInt64) + (_min : stdgo.GoInt64) : stdgo.GoInt64);
            if ((((-2147483648i64 : stdgo.GoInt64) <= _e : Bool) && (_e <= (2147483647i64 : stdgo.GoInt64) : Bool) : Bool)) {
                _z._exp = (_e : stdgo.GoInt32);
            } else {
                throw stdgo.Go.toInterface(("exponent out of range" : stdgo.GoString));
            };
        };
        return _z;
    }
    @:keep
    static public function _round( _x:stdgo._internal.math.big.Big_Bits.Bits, _prec:stdgo.GoUInt, _mode:stdgo._internal.math.big.Big_RoundingMode.RoundingMode):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        @:recv var _x:stdgo._internal.math.big.Big_Bits.Bits = _x;
        _x = _x._norm();
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _max = __1, _min = __0;
        for (_i => _b in _x) {
            if (((_i == (0 : stdgo.GoInt)) || (_b < _min : Bool) : Bool)) {
                _min = _b;
            };
            if (((_i == (0 : stdgo.GoInt)) || (_b > _max : Bool) : Bool)) {
                _max = _b;
            };
        };
        var _prec0 = (((_max + (1 : stdgo.GoInt) : stdgo.GoInt) - _min : stdgo.GoInt) : stdgo.GoUInt);
        if ((_prec >= _prec0 : Bool)) {
            return _x.float_();
        };
        var __0:stdgo.GoUInt = (0 : stdgo.GoUInt), __1:stdgo.GoUInt = (0 : stdgo.GoUInt), __2:stdgo.GoUInt = (0 : stdgo.GoUInt);
var _sbit = __2, _rbit = __1, _bit0 = __0;
        var _z:stdgo._internal.math.big.Big_Bits.Bits = new stdgo._internal.math.big.Big_Bits.Bits(0, 0);
        var _r = (_max - (_prec : stdgo.GoInt) : stdgo.GoInt);
        for (__8 => _b in _x) {
            if (_b == (_r)) {
                _rbit = (1u32 : stdgo.GoUInt);
            } else if ((_b < _r : Bool)) {
                _sbit = (1u32 : stdgo.GoUInt);
            } else {
                if (_b == ((_r + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    _bit0 = (1u32 : stdgo.GoUInt);
                };
                _z = (_z.__append__(_b));
            };
        };
        var _f = _z.float_();
        if (_mode == ((1 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode))) {
            throw stdgo.Go.toInterface(("not yet implemented" : stdgo.GoString));
        };
        if ((((_mode == ((0 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode)) && _rbit == ((1u32 : stdgo.GoUInt)) : Bool) && (((_sbit == (1u32 : stdgo.GoUInt)) || (_sbit == ((0u32 : stdgo.GoUInt)) && _bit0 != ((0u32 : stdgo.GoUInt)) : Bool) : Bool)) : Bool) || (_mode == (3 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode)) : Bool)) {
            _f.setMode((2 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode)).setPrec(_prec);
            _f.add(_f, (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[((_r : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits).float_());
        };
        return _f;
    }
    @:keep
    static public function _norm( _x:stdgo._internal.math.big.Big_Bits.Bits):stdgo._internal.math.big.Big_Bits.Bits {
        @:recv var _x:stdgo._internal.math.big.Big_Bits.Bits = _x;
        var _m = ({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, Bool>);
        for (__8 => _b in _x) {
            while ((_m[_b] ?? false)) {
                _m[_b] = false;
                _b++;
            };
            _m[_b] = true;
        };
        var _z:stdgo._internal.math.big.Big_Bits.Bits = new stdgo._internal.math.big.Big_Bits.Bits(0, 0);
        for (_b => _set in _m) {
            if (_set) {
                _z = (_z.__append__(_b));
            };
        };
        stdgo._internal.sort.Sort_ints.ints((_z : stdgo.Slice<stdgo.GoInt>));
        return _z;
    }
    @:keep
    static public function _mul( _x:stdgo._internal.math.big.Big_Bits.Bits, _y:stdgo._internal.math.big.Big_Bits.Bits):stdgo._internal.math.big.Big_Bits.Bits {
        @:recv var _x:stdgo._internal.math.big.Big_Bits.Bits = _x;
        var _p:stdgo._internal.math.big.Big_Bits.Bits = new stdgo._internal.math.big.Big_Bits.Bits(0, 0);
        for (__8 => _x in _x) {
            for (__9 => _y in _y) {
                _p = (_p.__append__((_x + _y : stdgo.GoInt)));
            };
        };
        return _p;
    }
    @:keep
    static public function _add( _x:stdgo._internal.math.big.Big_Bits.Bits, _y:stdgo._internal.math.big.Big_Bits.Bits):stdgo._internal.math.big.Big_Bits.Bits {
        @:recv var _x:stdgo._internal.math.big.Big_Bits.Bits = _x;
        return (_x.__append__(...(_y : Array<stdgo.GoInt>)));
    }
}
