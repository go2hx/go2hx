package stdgo._internal.math.big;
function testUint64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _s in stdgo._internal.math.big.Big__uint64tests._uint64Tests) {
            var _x:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
            var __tmp__ = @:check2 _x.setString(_s?.__copy__(), (0 : stdgo.GoInt)), __9:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                @:check2r _t.errorf(("SetString(%s, 0) failed" : stdgo.GoString), stdgo.Go.toInterface(_s));
                continue;
            };
            var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_s?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _want:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (((_s[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) || (stdgo.Go.toInterface((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>) ?? throw "null pointer dereference").err) == stdgo.Go.toInterface(stdgo._internal.strconv.Strconv_errrange.errRange)) : Bool)) {
                    if (@:check2 _x.isUint64()) {
                        @:check2r _t.errorf(("IsUint64(%s) succeeded unexpectedly" : stdgo.GoString), stdgo.Go.toInterface(_s));
                    };
                } else {
                    @:check2r _t.errorf(("ParseUint(%s) failed" : stdgo.GoString), stdgo.Go.toInterface(_s));
                };
                continue;
            };
            if (!@:check2 _x.isUint64()) {
                @:check2r _t.errorf(("IsUint64(%s) failed unexpectedly" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
            var _got = (@:check2 _x.uint64() : stdgo.GoUInt64);
            if (_got != (_want)) {
                @:check2r _t.errorf(("Uint64(%s) = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
