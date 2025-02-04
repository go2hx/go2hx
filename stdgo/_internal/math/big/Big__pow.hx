package stdgo._internal.math.big;
function _pow(_x:stdgo._internal.math.big.Big_word.Word, _n:stdgo.GoInt):stdgo._internal.math.big.Big_word.Word {
        var _p = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        _p = (1u32 : stdgo._internal.math.big.Big_word.Word);
        while ((_n > (0 : stdgo.GoInt) : Bool)) {
            if ((_n & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                _p = (_p * (_x) : stdgo._internal.math.big.Big_word.Word);
            };
            _x = (_x * (_x) : stdgo._internal.math.big.Big_word.Word);
            _n = (_n >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
        };
        return _p;
    }
