package stdgo._internal.math.big;
function _addAt(_z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _i:stdgo.GoInt):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L382"
        {
            var _n = (_x.length : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L383"
                {
                    var _c = (stdgo._internal.math.big.Big__addvv._addVV((_z.__slice__(_i, (_i + _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), (_z.__slice__(_i) : stdgo._internal.math.big.Big_t_nat.T_nat), _x) : stdgo._internal.math.big.Big_word.Word);
                    if (_c != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                        var _j = (_i + _n : stdgo.GoInt);
                        //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L385"
                        if ((_j < (_z.length) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L386"
                            stdgo._internal.math.big.Big__addvw._addVW((_z.__slice__(_j) : stdgo._internal.math.big.Big_t_nat.T_nat), (_z.__slice__(_j) : stdgo._internal.math.big.Big_t_nat.T_nat), _c);
                        };
                    };
                };
            };
        };
    }
