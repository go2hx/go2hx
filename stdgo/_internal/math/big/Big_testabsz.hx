package stdgo._internal.math.big;
function testAbsZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _zero:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L76"
        for (__8 => _a in stdgo._internal.math.big.Big__sumzz._sumZZ) {
            var _z:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L78"
            _z.abs(_a._z);
            var _e:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L80"
            _e.set(_a._z);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L81"
            if ((_e.cmp((stdgo.Go.setRef(_zero) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)) < (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L82"
                _e.sub((stdgo.Go.setRef(_zero) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_e) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L84"
            if (_z.cmp((stdgo.Go.setRef(_e) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L85"
                _t.errorf(("got z = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_e)));
            };
        };
    }
