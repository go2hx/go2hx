package stdgo._internal.math.big;
function testInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1148"
        for (__8 => _s in stdgo._internal.math.big.Big__int64tests._int64Tests) {
            var _x:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
            var __tmp__ = _x.setString(_s?.__copy__(), (0 : stdgo.GoInt)), __9:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1151"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1152"
                _t.errorf(("SetString(%s, 0) failed" : stdgo.GoString), stdgo.Go.toInterface(_s));
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1153"
                continue;
            };
            var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_s?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _want:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1157"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1158"
                if (stdgo.Go.toInterface((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>) ?? throw "null pointer dereference").err) == (stdgo.Go.toInterface(stdgo._internal.strconv.Strconv_errrange.errRange))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1159"
                    if (_x.isInt64()) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1160"
                        _t.errorf(("IsInt64(%s) succeeded unexpectedly" : stdgo.GoString), stdgo.Go.toInterface(_s));
                    };
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1163"
                    _t.errorf(("ParseInt(%s) failed" : stdgo.GoString), stdgo.Go.toInterface(_s));
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1165"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1168"
            if (!_x.isInt64()) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1169"
                _t.errorf(("IsInt64(%s) failed unexpectedly" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
            var _got = (_x.int64() : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1173"
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1174"
                _t.errorf(("Int64(%s) = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
