package stdgo._internal.math.big;
function _maxPow(_b:stdgo._internal.math.big.Big_word.Word):{ var _0 : stdgo._internal.math.big.Big_word.Word; var _1 : stdgo.GoInt; } {
        var _p = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word), _n = (0 : stdgo.GoInt);
        {
            final __tmp__0 = _b;
            final __tmp__1 = (1 : stdgo.GoInt);
            _p = __tmp__0;
            _n = __tmp__1;
        };
        {
            var _max = ((-1u32 : stdgo._internal.math.big.Big_word.Word) / _b : stdgo._internal.math.big.Big_word.Word);
            while ((_p <= _max : Bool)) {
                _p = (_p * (_b) : stdgo._internal.math.big.Big_word.Word);
                _n++;
            };
        };
        return { _0 : _p, _1 : _n };
    }
