package stdgo._internal.math.big;
function testUint64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1198"
        for (__8 => _s in stdgo._internal.math.big.Big__uint64tests._uint64Tests) {
            var _x:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
            var __tmp__ = _x.setString(_s?.__copy__(), (0 : stdgo.GoInt)), __9:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1201"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1202"
                _t.errorf(("SetString(%s, 0) failed" : stdgo.GoString), stdgo.Go.toInterface(_s));
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1203"
                continue;
            };
            var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_s?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _want:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1207"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1209"
                if (((_s[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) || (stdgo.Go.toInterface((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>) ?? throw "null pointer dereference").err) == stdgo.Go.toInterface(stdgo._internal.strconv.Strconv_errrange.errRange)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1210"
                    if (_x.isUint64()) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1211"
                        _t.errorf(("IsUint64(%s) succeeded unexpectedly" : stdgo.GoString), stdgo.Go.toInterface(_s));
                    };
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1214"
                    _t.errorf(("ParseUint(%s) failed" : stdgo.GoString), stdgo.Go.toInterface(_s));
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1216"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1219"
            if (!_x.isUint64()) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1220"
                _t.errorf(("IsUint64(%s) failed unexpectedly" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
            var _got = (_x.uint64() : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1224"
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1225"
                _t.errorf(("Uint64(%s) = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
