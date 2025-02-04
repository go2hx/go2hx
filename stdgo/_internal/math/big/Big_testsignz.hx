package stdgo._internal.math.big;
function testSignZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _zero:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        for (__8 => _a in stdgo._internal.math.big.Big__sumzz._sumZZ) {
            var _s = (@:check2r _a._z.sign() : stdgo.GoInt);
            var _e = (@:check2r _a._z.cmp((stdgo.Go.setRef(_zero) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)) : stdgo.GoInt);
            if (_s != (_e)) {
                @:check2r _t.errorf(("got %d; want %d for z = %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._z)));
            };
        };
    }
