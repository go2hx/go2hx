package stdgo._internal.math.big;
@:keep @:allow(stdgo._internal.math.big.Big.T_decimal_asInterface) class T_decimal_static_extension {
    @:keep
    static public function _roundDown( _x:stdgo.Ref<stdgo._internal.math.big.Big_T_decimal.T_decimal>, _n:stdgo.GoInt):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_T_decimal.T_decimal> = _x;
        if (((_n < (0 : stdgo.GoInt) : Bool) || (_n >= (_x._mant.length) : Bool) : Bool)) {
            return;
        };
        _x._mant = (_x._mant.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.math.big.Big__trim._trim(_x);
    }
    @:keep
    static public function _roundUp( _x:stdgo.Ref<stdgo._internal.math.big.Big_T_decimal.T_decimal>, _n:stdgo.GoInt):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_T_decimal.T_decimal> = _x;
        if (((_n < (0 : stdgo.GoInt) : Bool) || (_n >= (_x._mant.length) : Bool) : Bool)) {
            return;
        };
        while (((_n > (0 : stdgo.GoInt) : Bool) && (_x._mant[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] >= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            _n--;
        };
        if (_n == ((0 : stdgo.GoInt))) {
            _x._mant[(0 : stdgo.GoInt)] = (49 : stdgo.GoUInt8);
            _x._mant = (_x._mant.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _x._exp++;
            return;
        };
        _x._mant[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]++;
        _x._mant = (_x._mant.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function _round( _x:stdgo.Ref<stdgo._internal.math.big.Big_T_decimal.T_decimal>, _n:stdgo.GoInt):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_T_decimal.T_decimal> = _x;
        if (((_n < (0 : stdgo.GoInt) : Bool) || (_n >= (_x._mant.length) : Bool) : Bool)) {
            return;
        };
        if (stdgo._internal.math.big.Big__shouldRoundUp._shouldRoundUp(_x, _n)) {
            _x._roundUp(_n);
        } else {
            _x._roundDown(_n);
        };
    }
    @:keep
    static public function string( _x:stdgo.Ref<stdgo._internal.math.big.Big_T_decimal.T_decimal>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_T_decimal.T_decimal> = _x;
        if ((_x._mant.length) == ((0 : stdgo.GoInt))) {
            return ("0" : stdgo.GoString);
        };
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        if ((_x._exp <= (0 : stdgo.GoInt) : Bool)) {
            _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (((2 : stdgo.GoInt) + (-_x._exp) : stdgo.GoInt) + (_x._mant.length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _buf = (_buf.__append__(...(("0." : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            _buf = stdgo._internal.math.big.Big__appendZeros._appendZeros(_buf, -_x._exp);
            _buf = (_buf.__append__(...(_x._mant : Array<stdgo.GoUInt8>)));
        } else if ((_x._exp < (_x._mant.length) : Bool)) {
            _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((1 : stdgo.GoInt) + (_x._mant.length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _buf = (_buf.__append__(...((_x._mant.__slice__(0, _x._exp) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            _buf = (_buf.__append__((46 : stdgo.GoUInt8)));
            _buf = (_buf.__append__(...((_x._mant.__slice__(_x._exp) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        } else {
            _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _x._exp).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _buf = (_buf.__append__(...(_x._mant : Array<stdgo.GoUInt8>)));
            _buf = stdgo._internal.math.big.Big__appendZeros._appendZeros(_buf, (_x._exp - (_x._mant.length) : stdgo.GoInt));
        };
        return (_buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _init( _x:stdgo.Ref<stdgo._internal.math.big.Big_T_decimal.T_decimal>, _m:stdgo._internal.math.big.Big_T_nat.T_nat, _shift:stdgo.GoInt):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_T_decimal.T_decimal> = _x;
        if ((_m.length) == ((0 : stdgo.GoInt))) {
            _x._mant = (_x._mant.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _x._exp = (0 : stdgo.GoInt);
            return;
        };
        if ((_shift < (0 : stdgo.GoInt) : Bool)) {
            var _ntz = (_m._trailingZeroBits() : stdgo.GoUInt);
            var _s = (-_shift : stdgo.GoUInt);
            if ((_s >= _ntz : Bool)) {
                _s = _ntz;
            };
            _m = (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._shr(_m, _s);
            _shift = (_shift + ((_s : stdgo.GoInt)) : stdgo.GoInt);
        };
        if ((_shift > (0 : stdgo.GoInt) : Bool)) {
            _m = (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._shl(_m, (_shift : stdgo.GoUInt));
            _shift = (0 : stdgo.GoInt);
        };
        var _s = _m._utoa((10 : stdgo.GoInt));
        var _n = (_s.length : stdgo.GoInt);
        _x._exp = _n;
        while (((_n > (0 : stdgo.GoInt) : Bool) && (_s[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
            _n--;
        };
        _x._mant = ((_x._mant.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...((_s.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        if ((_shift < (0 : stdgo.GoInt) : Bool)) {
            while ((_shift < (-28 : stdgo.GoInt) : Bool)) {
                stdgo._internal.math.big.Big__shr._shr(_x, (28u32 : stdgo.GoUInt));
                _shift = (_shift + ((28 : stdgo.GoInt)) : stdgo.GoInt);
            };
            stdgo._internal.math.big.Big__shr._shr(_x, (-_shift : stdgo.GoUInt));
        };
    }
    @:keep
    static public function _at( _d:stdgo.Ref<stdgo._internal.math.big.Big_T_decimal.T_decimal>, _i:stdgo.GoInt):stdgo.GoUInt8 {
        @:recv var _d:stdgo.Ref<stdgo._internal.math.big.Big_T_decimal.T_decimal> = _d;
        if ((((0 : stdgo.GoInt) <= _i : Bool) && (_i < (_d._mant.length) : Bool) : Bool)) {
            return _d._mant[(_i : stdgo.GoInt)];
        };
        return (48 : stdgo.GoUInt8);
    }
}