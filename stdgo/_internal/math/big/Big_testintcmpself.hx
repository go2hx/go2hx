package stdgo._internal.math.big;
function testIntCmpSelf(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _s in stdgo._internal.math.big.Big__cmpabstests._cmpAbsTests) {
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_s?.__copy__(), (0 : stdgo.GoInt)), _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                @:check2r _t.fatalf(("SetString(%s, 0) failed" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
            var _got = (@:check2r _x.cmp(_x) : stdgo.GoInt);
            var _want = (0 : stdgo.GoInt);
            if (_got != (_want)) {
                @:check2r _t.errorf(("x = %s: x.Cmp(x): got %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
