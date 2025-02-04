package stdgo._internal.math.big;
function testTrailingZeroBits(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_i => _test in stdgo._internal.math.big.Big__tzbtests._tzbTests) {
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._in?.__copy__(), (0 : stdgo.GoInt)), _in:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __8:Bool = __tmp__._1;
            var _want = (_test._out : stdgo.GoUInt);
            var _got = (@:check2r _in.trailingZeroBits() : stdgo.GoUInt);
            if (_got != (_want)) {
                @:check2r _t.errorf(("#%d: got %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
