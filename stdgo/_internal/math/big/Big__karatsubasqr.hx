package stdgo._internal.math.big;
function _karatsubaSqr(_z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat):Void {
        var _n = (_x.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L529"
        if ((((_n & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt)) || (_n < stdgo._internal.math.big.Big__karatsubasqrthreshold._karatsubaSqrThreshold : Bool) : Bool) || (_n < (2 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L530"
            stdgo._internal.math.big.Big__basicsqr._basicSqr((_z.__slice__(0, ((2 : stdgo.GoInt) * _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), _x);
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L531"
            return;
        };
        var _n2 = (_n >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
        var __0 = (_x.__slice__(_n2) : stdgo._internal.math.big.Big_t_nat.T_nat), __1 = (_x.__slice__((0 : stdgo.GoInt), _n2) : stdgo._internal.math.big.Big_t_nat.T_nat);
var _x0 = __1, _x1 = __0;
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L537"
        stdgo._internal.math.big.Big__karatsubasqr._karatsubaSqr(_z, _x0);
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L538"
        stdgo._internal.math.big.Big__karatsubasqr._karatsubaSqr((_z.__slice__(_n) : stdgo._internal.math.big.Big_t_nat.T_nat), _x1);
        var _xd = (_z.__slice__(((2 : stdgo.GoInt) * _n : stdgo.GoInt), (((2 : stdgo.GoInt) * _n : stdgo.GoInt) + _n2 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L542"
        if (stdgo._internal.math.big.Big__subvv._subVV(_xd, _x1, _x0) != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L543"
            stdgo._internal.math.big.Big__subvv._subVV(_xd, _x0, _x1);
        };
        var _p = (_z.__slice__((_n * (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L547"
        stdgo._internal.math.big.Big__karatsubasqr._karatsubaSqr(_p, _xd);
        var _r = (_z.__slice__((_n * (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L550"
        _r.__copyTo__((_z.__slice__(0, (_n * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat));
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L552"
        stdgo._internal.math.big.Big__karatsubaadd._karatsubaAdd((_z.__slice__(_n2) : stdgo._internal.math.big.Big_t_nat.T_nat), _r, _n);
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L553"
        stdgo._internal.math.big.Big__karatsubaadd._karatsubaAdd((_z.__slice__(_n2) : stdgo._internal.math.big.Big_t_nat.T_nat), (_r.__slice__(_n) : stdgo._internal.math.big.Big_t_nat.T_nat), _n);
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L554"
        stdgo._internal.math.big.Big__karatsubasub._karatsubaSub((_z.__slice__(_n2) : stdgo._internal.math.big.Big_t_nat.T_nat), _p, _n);
    }
