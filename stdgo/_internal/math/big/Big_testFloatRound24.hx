package stdgo._internal.math.big;
function testFloatRound24(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {
            var _d = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_d <= (16 : stdgo.GoInt) : Bool), _d++, {
                var _x = (((67108848 : stdgo.GoInt) + _d : stdgo.GoInt) : stdgo.GoFloat64);
                var _f = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec((24u32 : stdgo.GoUInt)).setFloat64(_x);
                var __tmp__ = _f.float32(), _got:stdgo.GoFloat32 = __tmp__._0, __14:stdgo._internal.math.big.Big_Accuracy.Accuracy = __tmp__._1;
                var _want = (_x : stdgo.GoFloat32);
                if (_got != (_want)) {
                    _t.errorf(("Round(%g, 24) = %g; want %g" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            });
        };
    }
