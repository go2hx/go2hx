package stdgo._internal.math.big;
function _doHilbert(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _n:stdgo.GoInt):Void {
        var _a = stdgo._internal.math.big.Big__newhilbert._newHilbert(_n);
        var _b = stdgo._internal.math.big.Big__newinversehilbert._newInverseHilbert(_n);
        var i = stdgo._internal.math.big.Big__newunit._newUnit(_n);
        var _ab = @:check2r _a._mul(_b);
        if (!@:check2r _ab._eql(i)) {
            if ((_t == null || (_t : Dynamic).__nil__)) {
                throw stdgo.Go.toInterface(("Hilbert failed" : stdgo.GoString));
            };
            @:check2r _t.errorf(("a   = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)));
            @:check2r _t.errorf(("b   = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)));
            @:check2r _t.errorf(("a*b = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ab)));
            @:check2r _t.errorf(("I   = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(i)));
        };
    }
