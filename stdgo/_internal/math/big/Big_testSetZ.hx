package stdgo._internal.math.big;
function testSetZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _a in stdgo._internal.math.big.Big__sumZZ._sumZZ) {
            var _z:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
            _z.set(_a._z);
            if (!stdgo._internal.math.big.Big__isNormalized._isNormalized((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))) {
                _t.errorf(("%v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)));
            };
            if ((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).cmp(_a._z) != ((0 : stdgo.GoInt))) {
                _t.errorf(("got z = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._z)));
            };
        };
    }
