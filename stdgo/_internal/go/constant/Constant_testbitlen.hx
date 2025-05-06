package stdgo._internal.go.constant;
function testBitLen(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L724"
        for (__1 => _test in stdgo._internal.go.constant.Constant__bitlentests._bitLenTests) {
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L725"
            {
                var _got = (stdgo._internal.go.constant.Constant_bitlen.bitLen(stdgo._internal.go.constant.Constant_makeint64.makeInt64(_test._val)) : stdgo.GoInt);
                if (_got != (_test._want)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L726"
                    _t.errorf(("%v: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._val), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
