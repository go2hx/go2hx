package stdgo._internal.math.big;
function _shlVU_g(_z:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _x:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, _s:stdgo.GoUInt):stdgo._internal.math.big.Big_word.Word {
        var _c = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        //"file:///home/runner/.go/go1.21.3/src/math/big/arith.go#L147"
        if (_s == ((0u32 : stdgo.GoUInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/arith.go#L148"
            _z.__copyTo__(_x);
            //"file:///home/runner/.go/go1.21.3/src/math/big/arith.go#L149"
            return _c;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/arith.go#L151"
        if ((_z.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/arith.go#L152"
            return _c;
        };
        _s = (_s & ((31u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        var __349 = ((32u32 : stdgo.GoUInt) - _s : stdgo.GoUInt);
        __349 = (__349 & ((31u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        _c = (_x[((_z.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] >> __349 : stdgo._internal.math.big.Big_word.Word);
        //"file:///home/runner/.go/go1.21.3/src/math/big/arith.go#L158"
        {
            var _i = ((_z.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                _z[(_i : stdgo.GoInt)] = ((_x[(_i : stdgo.GoInt)] << _s : stdgo._internal.math.big.Big_word.Word) | (_x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] >> __349 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
                _i--;
            };
        };
        _z[(0 : stdgo.GoInt)] = (_x[(0 : stdgo.GoInt)] << _s : stdgo._internal.math.big.Big_word.Word);
        //"file:///home/runner/.go/go1.21.3/src/math/big/arith.go#L162"
        return _c;
    }
