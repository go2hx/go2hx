package stdgo._internal.math.big;
function testFloatAbs(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1145"
        for (__8 => _test in (new stdgo.Slice<stdgo.GoString>(7, 7, ...[("0" : stdgo.GoString), ("1" : stdgo.GoString), ("1234" : stdgo.GoString), ("1.23e-2" : stdgo.GoString), ("1e-1000" : stdgo.GoString), ("1e1000" : stdgo.GoString), ("Inf" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var _p = stdgo._internal.math.big.Big__makefloat._makeFloat(_test?.__copy__());
            var _a = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).abs(_p);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1156"
            if (!stdgo._internal.math.big.Big__alike._alike(_a, _p)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1157"
                _t.errorf(("%s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_a.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))), stdgo.Go.toInterface(_test));
            };
            var _n = stdgo._internal.math.big.Big__makefloat._makeFloat((("-" : stdgo.GoString) + _test?.__copy__() : stdgo.GoString)?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1161"
            _a.abs(_n);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1162"
            if (!stdgo._internal.math.big.Big__alike._alike(_a, _p)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1163"
                _t.errorf(("-%s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_a.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))), stdgo.Go.toInterface(_test));
            };
        };
    }
