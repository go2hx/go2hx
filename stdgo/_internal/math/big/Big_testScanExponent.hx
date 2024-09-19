package stdgo._internal.math.big;
function testScanExponent(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__14 => _a in stdgo._internal.math.big.Big__exponentTests._exponentTests) {
            var _r = stdgo._internal.strings.Strings_newReader.newReader(_a._s?.__copy__());
            var __tmp__ = stdgo._internal.math.big.Big__scanExponent._scanExponent(stdgo.Go.asInterface(_r), _a._base2ok, _a._sepOk), _x:stdgo.GoInt64 = __tmp__._0, _b:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_a._err))) {
                _t.errorf(("scanExponent%+v\n\tgot error = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_a._err));
            };
            if (_x != (_a._x)) {
                _t.errorf(("scanExponent%+v\n\tgot z = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_a._x));
            };
            if (_b != (_a._b)) {
                _t.errorf(("scanExponent%+v\n\tgot b = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_a._b));
            };
            var __tmp__ = _r.readRune(), _next:stdgo.GoInt32 = __tmp__._0, __15:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                _next = (0 : stdgo.GoInt32);
                _err = (null : stdgo.Error);
            };
            if (((_err == null) && (_next != _a._next) : Bool)) {
                _t.errorf(("scanExponent%+v\n\tgot next = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_next), stdgo.Go.toInterface(_a._next));
            };
        };
    }
