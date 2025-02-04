package stdgo._internal.math.big;
function testSetZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _a in stdgo._internal.math.big.Big__sumzz._sumZZ) {
            var _z:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
            @:check2 _z.set(_a._z);
            if (!stdgo._internal.math.big.Big__isnormalized._isNormalized((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))) {
                @:check2r _t.errorf(("%v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)));
            };
            if (@:check2r (stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).cmp(_a._z) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("got z = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._z)));
            };
        };
    }
