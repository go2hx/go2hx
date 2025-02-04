package stdgo._internal.math.big;
function testFloatAbs(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _test in (new stdgo.Slice<stdgo.GoString>(7, 7, ...[("0" : stdgo.GoString), ("1" : stdgo.GoString), ("1234" : stdgo.GoString), ("1.23e-2" : stdgo.GoString), ("1e-1000" : stdgo.GoString), ("1e1000" : stdgo.GoString), ("Inf" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var _p = stdgo._internal.math.big.Big__makefloat._makeFloat(_test?.__copy__());
            var _a = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).abs(_p);
            if (!stdgo._internal.math.big.Big__alike._alike(_a, _p)) {
                @:check2r _t.errorf(("%s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(@:check2r _a.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))), stdgo.Go.toInterface(_test));
            };
            var _n = stdgo._internal.math.big.Big__makefloat._makeFloat((("-" : stdgo.GoString) + _test?.__copy__() : stdgo.GoString)?.__copy__());
            @:check2r _a.abs(_n);
            if (!stdgo._internal.math.big.Big__alike._alike(_a, _p)) {
                @:check2r _t.errorf(("-%s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(@:check2r _a.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))), stdgo.Go.toInterface(_test));
            };
        };
    }
