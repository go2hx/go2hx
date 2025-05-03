package stdgo._internal.math.big;
function _doHilbert(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _n:stdgo.GoInt):Void {
        var _a = stdgo._internal.math.big.Big__newhilbert._newHilbert(_n);
        var _b = stdgo._internal.math.big.Big__newinversehilbert._newInverseHilbert(_n);
        var i = stdgo._internal.math.big.Big__newunit._newUnit(_n);
        var _ab = _a._mul(_b);
        //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L141"
        if (!_ab._eql(i)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L142"
            if (({
                final value = _t;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L143"
                throw stdgo.Go.toInterface(("Hilbert failed" : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L145"
            _t.errorf(("a   = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)));
            //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L146"
            _t.errorf(("b   = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)));
            //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L147"
            _t.errorf(("a*b = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ab)));
            //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L148"
            _t.errorf(("I   = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(i)));
        };
    }
