package stdgo._internal.math.big;
function testFloatMantExpAliasing(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x = stdgo._internal.math.big.Big__makefloat._makeFloat(("0.5p10" : stdgo.GoString));
        {
            var _e = (@:check2r _x.mantExp(_x) : stdgo.GoInt);
            if (_e != ((10 : stdgo.GoInt))) {
                @:check2r _t.fatalf(("Float.MantExp aliasing error: got %d; want 10" : stdgo.GoString), stdgo.Go.toInterface(_e));
            };
        };
        {
            var _want = stdgo._internal.math.big.Big__makefloat._makeFloat(("0.5" : stdgo.GoString));
            if (!stdgo._internal.math.big.Big__alike._alike(_x, _want)) {
                @:check2r _t.fatalf(("Float.MantExp aliasing error: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _x.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))), stdgo.Go.toInterface(@:check2r _want.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))));
            };
        };
    }
