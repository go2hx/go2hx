package stdgo._internal.math.big;
function testAbsZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _zero:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
        for (__14 => _a in stdgo._internal.math.big.Big__sumZZ._sumZZ) {
            var _z:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
            _z.abs(_a._z);
            var _e:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
            _e.set(_a._z);
            if ((_e.cmp((stdgo.Go.setRef(_zero) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)) < (0 : stdgo.GoInt) : Bool)) {
                _e.sub((stdgo.Go.setRef(_zero) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (stdgo.Go.setRef(_e) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
            };
            if (_z.cmp((stdgo.Go.setRef(_e) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)) != ((0 : stdgo.GoInt))) {
                _t.errorf(("got z = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_e)));
            };
        };
    }
