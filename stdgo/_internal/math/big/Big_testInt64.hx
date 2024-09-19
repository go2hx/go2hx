package stdgo._internal.math.big;
function testInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__14 => _s in stdgo._internal.math.big.Big__int64Tests._int64Tests) {
            var _x:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
            var __tmp__ = _x.setString(_s?.__copy__(), (0 : stdgo.GoInt)), __15:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                _t.errorf(("SetString(%s, 0) failed" : stdgo.GoString), stdgo.Go.toInterface(_s));
                continue;
            };
            var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_s?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _want:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (stdgo.Go.toInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>).err) == (stdgo.Go.toInterface(stdgo._internal.strconv.Strconv_errRange.errRange))) {
                    if (_x.isInt64()) {
                        _t.errorf(("IsInt64(%s) succeeded unexpectedly" : stdgo.GoString), stdgo.Go.toInterface(_s));
                    };
                } else {
                    _t.errorf(("ParseInt(%s) failed" : stdgo.GoString), stdgo.Go.toInterface(_s));
                };
                continue;
            };
            if (!_x.isInt64()) {
                _t.errorf(("IsInt64(%s) failed unexpectedly" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
            var _got = (_x.int64() : stdgo.GoInt64);
            if (_got != (_want)) {
                _t.errorf(("Int64(%s) = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
