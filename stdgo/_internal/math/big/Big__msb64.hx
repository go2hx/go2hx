package stdgo._internal.math.big;
function _msb64(_x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo.GoUInt64 {
        var _i = ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            return (0i64 : stdgo.GoUInt64);
        };
        if ((false && ((_x[(_i : stdgo.GoInt)] & (-2147483648u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            throw stdgo.Go.toInterface(("x not normalized" : stdgo.GoString));
        };
        {
            final __value__ = (32 : stdgo.GoInt);
            if (__value__ == ((32 : stdgo.GoInt))) {
                var _v = ((_x[(_i : stdgo.GoInt)] : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    _v = (_v | ((_x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt64)) : stdgo.GoUInt64);
                };
                return _v;
            } else if (__value__ == ((64 : stdgo.GoInt))) {
                return (_x[(_i : stdgo.GoInt)] : stdgo.GoUInt64);
            };
        };
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
