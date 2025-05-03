package stdgo._internal.math.big;
function testSetZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L62"
        for (__8 => _a in stdgo._internal.math.big.Big__sumzz._sumZZ) {
            var _z:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L64"
            _z.set(_a._z);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L65"
            if (!stdgo._internal.math.big.Big__isnormalized._isNormalized((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L66"
                _t.errorf(("%v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L68"
            if ((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).cmp(_a._z) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L69"
                _t.errorf(("got z = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._z)));
            };
        };
    }
