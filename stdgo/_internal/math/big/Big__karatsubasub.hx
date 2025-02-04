package stdgo._internal.math.big;
function _karatsubaSub(_z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _n:stdgo.GoInt):Void {
        {
            var _c = (stdgo._internal.math.big.Big__subvv._subVV((_z.__slice__((0 : stdgo.GoInt), _n) : stdgo._internal.math.big.Big_t_nat.T_nat), _z, _x) : stdgo._internal.math.big.Big_word.Word);
            if (_c != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                stdgo._internal.math.big.Big__subvw._subVW((_z.__slice__(_n, (_n + (_n >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), (_z.__slice__(_n) : stdgo._internal.math.big.Big_t_nat.T_nat), _c);
            };
        };
    }
