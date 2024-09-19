package stdgo._internal.math.big;
function _addAt(_z:stdgo._internal.math.big.Big_T_nat.T_nat, _x:stdgo._internal.math.big.Big_T_nat.T_nat, _i:stdgo.GoInt):Void {
        {
            var _n = (_x.length : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                {
                    var _c = (stdgo._internal.math.big.Big__addVV._addVV((_z.__slice__(_i, (_i + _n : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat), (_z.__slice__(_i) : stdgo._internal.math.big.Big_T_nat.T_nat), _x) : stdgo._internal.math.big.Big_Word.Word);
                    if (_c != ((0u32 : stdgo._internal.math.big.Big_Word.Word))) {
                        var _j = (_i + _n : stdgo.GoInt);
                        if ((_j < (_z.length) : Bool)) {
                            stdgo._internal.math.big.Big__addVW._addVW((_z.__slice__(_j) : stdgo._internal.math.big.Big_T_nat.T_nat), (_z.__slice__(_j) : stdgo._internal.math.big.Big_T_nat.T_nat), _c);
                        };
                    };
                };
            };
        };
    }
