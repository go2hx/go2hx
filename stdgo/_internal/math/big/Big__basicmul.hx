package stdgo._internal.math.big;
function _basicMul(_z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L199"
        (_z.__slice__((0 : stdgo.GoInt), ((_x.length) + (_y.length) : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat)._clear();
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L200"
        for (_i => _d in _y) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L201"
            if (_d != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                _z[((_x.length) + _i : stdgo.GoInt)] = stdgo._internal.math.big.Big__addmulvvw._addMulVVW((_z.__slice__(_i, (_i + (_x.length) : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), _x, _d);
            };
        };
    }
