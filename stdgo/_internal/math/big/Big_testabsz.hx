package stdgo._internal.math.big;
function testAbsZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _zero:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        for (__8 => _a in stdgo._internal.math.big.Big__sumzz._sumZZ) {
            var _z:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
            @:check2 _z.abs(_a._z);
            var _e:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
            @:check2 _e.set(_a._z);
            if ((@:check2 _e.cmp((stdgo.Go.setRef(_zero) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)) < (0 : stdgo.GoInt) : Bool)) {
                @:check2 _e.sub((stdgo.Go.setRef(_zero) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_e) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
            };
            if (@:check2 _z.cmp((stdgo.Go.setRef(_e) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("got z = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_e)));
            };
        };
    }
