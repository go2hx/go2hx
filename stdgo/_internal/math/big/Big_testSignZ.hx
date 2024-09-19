package stdgo._internal.math.big;
function testSignZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _zero:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
        for (__14 => _a in stdgo._internal.math.big.Big__sumZZ._sumZZ) {
            var _s = (_a._z.sign() : stdgo.GoInt);
            var _e = (_a._z.cmp((stdgo.Go.setRef(_zero) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)) : stdgo.GoInt);
            if (_s != (_e)) {
                _t.errorf(("got %d; want %d for z = %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._z)));
            };
        };
    }
