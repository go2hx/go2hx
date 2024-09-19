package stdgo._internal.math.big;
function _karatsubaSqr(_z:stdgo._internal.math.big.Big_T_nat.T_nat, _x:stdgo._internal.math.big.Big_T_nat.T_nat):Void {
        var _n = (_x.length : stdgo.GoInt);
        if ((((_n & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt)) || (_n < stdgo._internal.math.big.Big__karatsubaSqrThreshold._karatsubaSqrThreshold : Bool) : Bool) || (_n < (2 : stdgo.GoInt) : Bool) : Bool)) {
            stdgo._internal.math.big.Big__basicSqr._basicSqr((_z.__slice__(0, ((2 : stdgo.GoInt) * _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat), _x);
            return;
        };
        var _n2 = (_n >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
        var __0 = (_x.__slice__(_n2) : stdgo._internal.math.big.Big_T_nat.T_nat), __1 = (_x.__slice__((0 : stdgo.GoInt), _n2) : stdgo._internal.math.big.Big_T_nat.T_nat);
var _x0 = __1, _x1 = __0;
        stdgo._internal.math.big.Big__karatsubaSqr._karatsubaSqr(_z, _x0);
        stdgo._internal.math.big.Big__karatsubaSqr._karatsubaSqr((_z.__slice__(_n) : stdgo._internal.math.big.Big_T_nat.T_nat), _x1);
        var _xd = (_z.__slice__(((2 : stdgo.GoInt) * _n : stdgo.GoInt), (((2 : stdgo.GoInt) * _n : stdgo.GoInt) + _n2 : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat);
        if (stdgo._internal.math.big.Big__subVV._subVV(_xd, _x1, _x0) != ((0u32 : stdgo._internal.math.big.Big_Word.Word))) {
            stdgo._internal.math.big.Big__subVV._subVV(_xd, _x0, _x1);
        };
        var _p = (_z.__slice__((_n * (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat);
        stdgo._internal.math.big.Big__karatsubaSqr._karatsubaSqr(_p, _xd);
        var _r = (_z.__slice__((_n * (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat);
        stdgo.Go.copySlice(_r, (_z.__slice__(0, (_n * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat));
        stdgo._internal.math.big.Big__karatsubaAdd._karatsubaAdd((_z.__slice__(_n2) : stdgo._internal.math.big.Big_T_nat.T_nat), _r, _n);
        stdgo._internal.math.big.Big__karatsubaAdd._karatsubaAdd((_z.__slice__(_n2) : stdgo._internal.math.big.Big_T_nat.T_nat), (_r.__slice__(_n) : stdgo._internal.math.big.Big_T_nat.T_nat), _n);
        stdgo._internal.math.big.Big__karatsubaSub._karatsubaSub((_z.__slice__(_n2) : stdgo._internal.math.big.Big_T_nat.T_nat), _p, _n);
    }
