package stdgo._internal.math.big;
function _fnorm(_m:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo.GoInt64 {
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L584"
        if ((false && (((_m.length == (0 : stdgo.GoInt)) || (_m[((_m.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L585"
            throw stdgo.Go.toInterface(("msw of mantissa is 0" : stdgo.GoString));
        };
        var _s = (stdgo._internal.math.big.Big__nlz._nlz(_m[((_m.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L588"
        if ((_s > (0u32 : stdgo.GoUInt) : Bool)) {
            var _c = (stdgo._internal.math.big.Big__shlvu._shlVU(_m, _m, _s) : stdgo._internal.math.big.Big_word.Word);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L590"
            if ((false && (_c != (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L591"
                throw stdgo.Go.toInterface(("nlz or shlVU incorrect" : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L594"
        return (_s : stdgo.GoInt64);
    }
