package stdgo._internal.math.big;
function _msb32(_x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo.GoUInt32 {
        var _i = ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L699"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L700"
            return (0u32 : stdgo.GoUInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L702"
        if ((false && ((_x[(_i : stdgo.GoInt)] & (-2147483648u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L703"
            throw stdgo.Go.toInterface(("x not normalized" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L705"
        {
            final __value__ = (32 : stdgo.GoInt);
            if (__value__ == ((32 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L707"
                return (_x[(_i : stdgo.GoInt)] : stdgo.GoUInt32);
            } else if (__value__ == ((64 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L709"
                return ((_x[(_i : stdgo.GoInt)] >> (32i64 : stdgo.GoUInt64) : stdgo._internal.math.big.Big_word.Word) : stdgo.GoUInt32);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L711"
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
