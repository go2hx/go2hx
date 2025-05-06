package stdgo._internal.go.constant;
function testBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L577"
        for (__1 => _test in stdgo._internal.go.constant.Constant__bytestests._bytesTests) {
            var _x = (stdgo._internal.go.constant.Constant__val._val(_test?.__copy__()) : stdgo._internal.go.constant.Constant_value.Value);
            var _bytes = stdgo._internal.go.constant.Constant_bytes.bytes(_x);
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L582"
            if (((stdgo._internal.go.constant.Constant_sign.sign(_x) == (0 : stdgo.GoInt)) && (_bytes.length != (0 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L583"
                _t.errorf(("%s: got %v; want empty byte slice" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_bytes));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L586"
            {
                var _n = (_bytes.length : stdgo.GoInt);
                if (((_n > (0 : stdgo.GoInt) : Bool) && (_bytes[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L587"
                    _t.errorf(("%s: got %v; want no leading 0 byte" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_bytes));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L590"
            {
                var _got = (stdgo._internal.go.constant.Constant_makefrombytes.makeFromBytes(_bytes) : stdgo._internal.go.constant.Constant_value.Value);
                if (!stdgo._internal.go.constant.Constant__eql._eql(_got, _x)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L591"
                    _t.errorf(("%s: got %s; want %s (bytes = %v)" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_bytes));
                };
            };
        };
    }
