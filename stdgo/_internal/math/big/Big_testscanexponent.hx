package stdgo._internal.math.big;
function testScanExponent(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _a in stdgo._internal.math.big.Big__exponenttests._exponentTests) {
            var _r = stdgo._internal.strings.Strings_newreader.newReader(_a._s?.__copy__());
            var __tmp__ = stdgo._internal.math.big.Big__scanexponent._scanExponent(stdgo.Go.asInterface(_r), _a._base2ok, _a._sepOk), _x:stdgo.GoInt64 = __tmp__._0, _b:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_a._err))) {
                @:check2r _t.errorf(("scanExponent%+v\n\tgot error = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_a._err));
            };
            if (_x != (_a._x)) {
                @:check2r _t.errorf(("scanExponent%+v\n\tgot z = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_a._x));
            };
            if (_b != (_a._b)) {
                @:check2r _t.errorf(("scanExponent%+v\n\tgot b = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_a._b));
            };
            var __tmp__ = @:check2r _r.readRune(), _next:stdgo.GoInt32 = __tmp__._0, __9:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                _next = (0 : stdgo.GoInt32);
                _err = (null : stdgo.Error);
            };
            if (((_err == null) && (_next != _a._next) : Bool)) {
                @:check2r _t.errorf(("scanExponent%+v\n\tgot next = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_next), stdgo.Go.toInterface(_a._next));
            };
        };
    }
