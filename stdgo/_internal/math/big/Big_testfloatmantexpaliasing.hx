package stdgo._internal.math.big;
function testFloatMantExpAliasing(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x = stdgo._internal.math.big.Big__makefloat._makeFloat(("0.5p10" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L234"
        {
            var _e = (_x.mantExp(_x) : stdgo.GoInt);
            if (_e != ((10 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L235"
                _t.fatalf(("Float.MantExp aliasing error: got %d; want 10" : stdgo.GoString), stdgo.Go.toInterface(_e));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L237"
        {
            var _want = stdgo._internal.math.big.Big__makefloat._makeFloat(("0.5" : stdgo.GoString));
            if (!stdgo._internal.math.big.Big__alike._alike(_x, _want)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L238"
                _t.fatalf(("Float.MantExp aliasing error: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_x.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))), stdgo.Go.toInterface(_want.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))));
            };
        };
    }
