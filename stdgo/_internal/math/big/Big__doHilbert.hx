package stdgo._internal.math.big;
function _doHilbert(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _n:stdgo.GoInt):Void {
        var _a = stdgo._internal.math.big.Big__newHilbert._newHilbert(_n);
        var _b = stdgo._internal.math.big.Big__newInverseHilbert._newInverseHilbert(_n);
        var i = stdgo._internal.math.big.Big__newUnit._newUnit(_n);
        var _ab = _a._mul(_b);
        if (!_ab._eql(i)) {
            if ((_t == null || (_t : Dynamic).__nil__)) {
                throw stdgo.Go.toInterface(("Hilbert failed" : stdgo.GoString));
            };
            _t.errorf(("a   = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)));
            _t.errorf(("b   = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)));
            _t.errorf(("a*b = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ab)));
            _t.errorf(("I   = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(i)));
        };
    }
