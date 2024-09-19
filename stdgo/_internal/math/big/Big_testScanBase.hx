package stdgo._internal.math.big;
function testScanBase(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__14 => _a in stdgo._internal.math.big.Big__natScanTests._natScanTests) {
            var _r = stdgo._internal.strings.Strings_newReader.newReader(_a._s?.__copy__());
            var __tmp__ = (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._scan(stdgo.Go.asInterface(_r), _a._base, _a._frac), _x:stdgo._internal.math.big.Big_T_nat.T_nat = __tmp__._0, _b:stdgo.GoInt = __tmp__._1, _count:stdgo.GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_a._err))) {
                _t.errorf(("scan%+v\n\tgot error = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_a._err));
            };
            if (_x._cmp(_a._x) != ((0 : stdgo.GoInt))) {
                _t.errorf(("scan%+v\n\tgot z = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._x)));
            };
            if (_b != (_a._b)) {
                _t.errorf(("scan%+v\n\tgot b = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_a._base));
            };
            if (_count != (_a._count)) {
                _t.errorf(("scan%+v\n\tgot count = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_count), stdgo.Go.toInterface(_a._count));
            };
            var __tmp__ = _r.readRune(), _next:stdgo.GoInt32 = __tmp__._0, __15:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                _next = (0 : stdgo.GoInt32);
                _err = (null : stdgo.Error);
            };
            if (((_err == null) && (_next != _a._next) : Bool)) {
                _t.errorf(("scan%+v\n\tgot next = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_next), stdgo.Go.toInterface(_a._next));
            };
        };
    }