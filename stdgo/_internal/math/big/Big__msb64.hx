package stdgo._internal.math.big;
function _msb64(_x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo.GoUInt64 {
        var _i = ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L717"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L718"
            return (0i64 : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L720"
        if ((false && ((_x[(_i : stdgo.GoInt)] & (-2147483648u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L721"
            throw stdgo.Go.toInterface(("x not normalized" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L723"
        {
            final __value__ = (32 : stdgo.GoInt);
            if (__value__ == ((32 : stdgo.GoInt))) {
                var _v = ((_x[(_i : stdgo.GoInt)] : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L726"
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    _v = (_v | ((_x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt64)) : stdgo.GoUInt64);
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L729"
                return _v;
            } else if (__value__ == ((64 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L731"
                return (_x[(_i : stdgo.GoInt)] : stdgo.GoUInt64);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L733"
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
