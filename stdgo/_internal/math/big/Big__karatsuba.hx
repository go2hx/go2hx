package stdgo._internal.math.big;
function _karatsuba(_z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):Void {
        var _n = (_y.length : stdgo.GoInt);
        if ((((_n & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt)) || (_n < stdgo._internal.math.big.Big__karatsubathreshold._karatsubaThreshold : Bool) : Bool) || (_n < (2 : stdgo.GoInt) : Bool) : Bool)) {
            stdgo._internal.math.big.Big__basicmul._basicMul(_z, _x, _y);
            return;
        };
        var _n2 = (_n >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
        var __0 = (_x.__slice__(_n2) : stdgo._internal.math.big.Big_t_nat.T_nat), __1 = (_x.__slice__((0 : stdgo.GoInt), _n2) : stdgo._internal.math.big.Big_t_nat.T_nat);
var _x0 = __1, _x1 = __0;
        var __0 = (_y.__slice__(_n2) : stdgo._internal.math.big.Big_t_nat.T_nat), __1 = (_y.__slice__((0 : stdgo.GoInt), _n2) : stdgo._internal.math.big.Big_t_nat.T_nat);
var _y0 = __1, _y1 = __0;
        stdgo._internal.math.big.Big__karatsuba._karatsuba(_z, _x0, _y0);
        stdgo._internal.math.big.Big__karatsuba._karatsuba((_z.__slice__(_n) : stdgo._internal.math.big.Big_t_nat.T_nat), _x1, _y1);
        var _s = (1 : stdgo.GoInt);
        var _xd = (_z.__slice__(((2 : stdgo.GoInt) * _n : stdgo.GoInt), (((2 : stdgo.GoInt) * _n : stdgo.GoInt) + _n2 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        if (stdgo._internal.math.big.Big__subvv._subVV(_xd, _x1, _x0) != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            _s = -_s;
            stdgo._internal.math.big.Big__subvv._subVV(_xd, _x0, _x1);
        };
        var _yd = (_z.__slice__((((2 : stdgo.GoInt) * _n : stdgo.GoInt) + _n2 : stdgo.GoInt), ((3 : stdgo.GoInt) * _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        if (stdgo._internal.math.big.Big__subvv._subVV(_yd, _y0, _y1) != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            _s = -_s;
            stdgo._internal.math.big.Big__subvv._subVV(_yd, _y1, _y0);
        };
        var _p = (_z.__slice__((_n * (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        stdgo._internal.math.big.Big__karatsuba._karatsuba(_p, _xd, _yd);
        var _r = (_z.__slice__((_n * (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        _r.__copyTo__((_z.__slice__(0, (_n * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat));
        stdgo._internal.math.big.Big__karatsubaadd._karatsubaAdd((_z.__slice__(_n2) : stdgo._internal.math.big.Big_t_nat.T_nat), _r, _n);
        stdgo._internal.math.big.Big__karatsubaadd._karatsubaAdd((_z.__slice__(_n2) : stdgo._internal.math.big.Big_t_nat.T_nat), (_r.__slice__(_n) : stdgo._internal.math.big.Big_t_nat.T_nat), _n);
        if ((_s > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.math.big.Big__karatsubaadd._karatsubaAdd((_z.__slice__(_n2) : stdgo._internal.math.big.Big_t_nat.T_nat), _p, _n);
        } else {
            stdgo._internal.math.big.Big__karatsubasub._karatsubaSub((_z.__slice__(_n2) : stdgo._internal.math.big.Big_t_nat.T_nat), _p, _n);
        };
    }
