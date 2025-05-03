package stdgo._internal.math.big;
function _testPseudoprimes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _name:stdgo.GoString, _cond:stdgo._internal.math.big.Big_t_nat.T_nat -> Bool, _want:stdgo.Slice<stdgo.GoInt>):Void {
        var _n = (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(1, 1, ...[(1u32 : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L199"
        {
            var _i = (3 : stdgo.GoInt);
            while ((_i < (100000 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L200"
                if (stdgo._internal.testing.Testing_short.short()) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L201"
                    if ((_want.length) == ((0 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L202"
                        break;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L204"
                    if ((_i < (_want[(0 : stdgo.GoInt)] - (2 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                        _i = (_want[(0 : stdgo.GoInt)] - (2 : stdgo.GoInt) : stdgo.GoInt);
                    };
                };
_n[(0 : stdgo.GoInt)] = (_i : stdgo._internal.math.big.Big_word.Word);
var _pseudo = (_cond(_n) : Bool);
//"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L210"
                if ((_pseudo && (((_want.length == (0 : stdgo.GoInt)) || (_i != _want[(0 : stdgo.GoInt)]) : Bool)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L211"
                    _t.errorf(("%s(%v, base=2) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_i));
                } else if (((!_pseudo && ((_want.length) >= (1 : stdgo.GoInt) : Bool) : Bool) && (_i == _want[(0 : stdgo.GoInt)]) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L213"
                    _t.errorf(("%s(%v, base=2) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_i));
                };
//"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L215"
                if ((((_want.length) > (0 : stdgo.GoInt) : Bool) && (_i == _want[(0 : stdgo.GoInt)]) : Bool)) {
                    _want = (_want.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                };
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L219"
        if (((_want.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L220"
            _t.fatalf(("forgot to test %v" : stdgo.GoString), stdgo.Go.toInterface(_want));
        };
    }
