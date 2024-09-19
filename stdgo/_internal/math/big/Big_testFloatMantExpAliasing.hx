package stdgo._internal.math.big;
function testFloatMantExpAliasing(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x = stdgo._internal.math.big.Big__makeFloat._makeFloat(("0.5p10" : stdgo.GoString));
        {
            var _e = (_x.mantExp(_x) : stdgo.GoInt);
            if (_e != ((10 : stdgo.GoInt))) {
                _t.fatalf(("Float.MantExp aliasing error: got %d; want 10" : stdgo.GoString), stdgo.Go.toInterface(_e));
            };
        };
        {
            var _want = stdgo._internal.math.big.Big__makeFloat._makeFloat(("0.5" : stdgo.GoString));
            if (!stdgo._internal.math.big.Big__alike._alike(_x, _want)) {
                _t.fatalf(("Float.MantExp aliasing error: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_x.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))), stdgo.Go.toInterface(_want.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))));
            };
        };
    }
