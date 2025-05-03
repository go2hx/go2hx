package stdgo._internal.math.big;
function testScanExponent(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L66"
        for (__8 => _a in stdgo._internal.math.big.Big__exponenttests._exponentTests) {
            var _r = stdgo._internal.strings.Strings_newreader.newReader(_a._s?.__copy__());
            var __tmp__ = stdgo._internal.math.big.Big__scanexponent._scanExponent(stdgo.Go.asInterface(_r), _a._base2ok, _a._sepOk), _x:stdgo.GoInt64 = __tmp__._0, _b:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L69"
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_a._err))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L70"
                _t.errorf(("scanExponent%+v\n\tgot error = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_a._err));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L72"
            if (_x != (_a._x)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L73"
                _t.errorf(("scanExponent%+v\n\tgot z = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_a._x));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L75"
            if (_b != (_a._b)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L76"
                _t.errorf(("scanExponent%+v\n\tgot b = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_a._b));
            };
            var __tmp__ = _r.readRune(), _next:stdgo.GoInt32 = __tmp__._0, __9:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L79"
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                _next = (0 : stdgo.GoInt32);
                _err = (null : stdgo.Error);
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L83"
            if (((_err == null) && (_next != _a._next) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L84"
                _t.errorf(("scanExponent%+v\n\tgot next = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_next), stdgo.Go.toInterface(_a._next));
            };
        };
    }
